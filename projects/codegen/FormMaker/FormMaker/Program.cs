using System;
using System.Collections.Generic;
using System.Collections;
using System.Text;
using System.IO;
using System.Text.RegularExpressions;

namespace FormMaker
{
    class Program
    {
        const int vName = 0;
        const int vRequired = 1;
        const int vType = 2;
        const int vMaxLength = 3;
        const int vComment = 4;
        const int vFieldName = 5;
        const int vTableName = 6;

        const string Numerico = "1";
        const string Texto = "2";
        const string Calendario = "3";
        const string SiNo = "4";
        const string NumericoPorciento = "6";
        const string Titulo = "7";
        const string Seccion = "8";
        const string Error = "10";
        const string EMail = "11";
        const string RepeaterInicio = "12";
        const string RepeaterFin = "13";
        const string NumericoAnchoFijo = "14";
        const string NumericoPesos = "15";
        
        const string Verdadero = "1";
        const string Falso = "0";

        static string RequiredAsterisk = "<span class=\"form_label\">(&nbsp;<span style=\"color:red\">*</span>&nbsp;)</span>";

        static string Initialization = "";
        static string Moisture = "";
        static bool SectionsStarted = false;
        static string ClassName = "";
        static string ControlList = "";
        static int LabelIDNumber = 0;
        static int ValidationGroup = 1;
        static Hashtable Hash;
        static int GetLabelID ()
        {            
            LabelIDNumber++;
            return (LabelIDNumber);
        }

        static string DQ(string txt)
        {
            return ("\"" + txt + "\"");
        }

        static string ProperCase(string stringInput)
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            bool fEmptyBefore = true;
            foreach (char ch in stringInput)
            {
                char chThis = ch;
                if (Char.IsWhiteSpace(chThis))
                    fEmptyBefore = true;
                else
                { 
                    if (Char.IsLetter(chThis) && fEmptyBefore)
                        chThis = Char.ToUpper(chThis);
                    else
                        chThis = Char.ToLower(chThis);
                    fEmptyBefore = false;
                }
                sb.Append(chThis);
            }
            return sb.ToString();
        }

        static string CleanString(string strIn)
        {
            // Replace invalid characters with empty strings.
            //return Regex.Replace(strIn, "[^a-Z ]", "");
            return Regex.Replace(strIn, "[^a-zA-Z ]", "");
        }

        static string Normalize(string st)
        {
            string Res = st.ToLower();

            Res = Res.Replace("ñ", "n");
            Res = Res.Replace("á", "a");
            Res = Res.Replace("é", "e");
            Res = Res.Replace("í", "i");
            Res = Res.Replace("ó", "o");
            Res = Res.Replace("ú", "u");
            Res = CleanString(Res);
            Res = ProperCase(Res);
            Res = Res.Replace(" ", "");

            string Key = Res;
            if (Hash.ContainsKey(Key))
            {
                Hash[Key] = (int)(Hash[Key]) + 1;
                Res = Res + Hash[Key].ToString();
            }
            else
            {
                Hash.Add(Key, 1);
            }

            return Res;
        }

        static string BuildRegexValidation(string FldType, string MaxLength)
        {
            return "";
        }
        static string BuildLabel(string LabelName, string FriendlyName, bool Required)
        {
            return BuildLabel(LabelName, FriendlyName, Required, "");
        }

        static string BuildLabel(string LabelName, string FriendlyName, bool Required, string Suffix)
        {
            String sRes = "";
            sRes += "        <tr>\n";
            sRes += "            <td>\n";
            if (Required)
                sRes += "                <asp:Label runat=\"server\" ID=" + DQ(LabelName) + " Text=" + DQ(FriendlyName + Suffix) + " CssClass=\"form_label\"/>" + RequiredAsterisk + "\n";
            else
                sRes += "                <asp:Label runat=\"server\" ID=" + DQ(LabelName) + " Text=" + DQ(FriendlyName + Suffix) + " CssClass=\"form_label\"/>\n";

            sRes += "            </td>\n";
            sRes += "        </tr>\n";

            return sRes;
        }

        static public string ParseLine (String Line)
        {
            String sRes = "";
            
            try
            {
                String[] Vector = Line.Split('|');

                String FriendlyName = ProperCase(Vector[vName]);
                String NormalizedName = Normalize (Vector[vName]);
                String LabelName = "lbl" + NormalizedName + "Titulo";                
                String RequiredName = "rqv" + NormalizedName;
                String RegexValName = "rev" + NormalizedName;
                String ControlName = "Dummy" + GetLabelID().ToString();
                bool IsRequired = Vector[vRequired].Equals(Verdadero) && (Vector[vType] != SiNo);

                if ((Vector.Length >= 5) && (!string.IsNullOrEmpty (Vector[vComment])))
                    sRes += "        <!--" + Vector[vComment] + "-->\n";

                // First Column
                switch (Vector[vType])
                {
                    case (Numerico):
                    case (NumericoAnchoFijo):
                    case (NumericoPesos):
                    case (NumericoPorciento):
                    case (Texto): // Texto o Numero
                        ControlName = "txt" + NormalizedName;                        
                        sRes += BuildLabel(LabelName, FriendlyName, IsRequired);

                        // Make Control
                        string ML = "";
                        if ((!string.IsNullOrEmpty(Vector[vMaxLength])) || (Vector[vMaxLength].Equals("0")))
                            ML = "MaxLength=" + DQ(Vector[vMaxLength]);

                        sRes += "        <tr>\n";
                        sRes += "            <td>\n";
                        sRes += "                <asp:TextBox runat=\"server\" ID=" + DQ(ControlName) + " CssClass=\"form_text\" " + ML + "/>\n";
                        sRes += "            </td>\n";
                        sRes += "        </tr>\n";

                        ControlList += "        protected TextBox " + ControlName + ";\n";

                        if ((Vector.Length >= 6) && (!string.IsNullOrEmpty(Vector[vFieldName])))
                            Moisture += "        this." + Vector[vFieldName] + " = " + ControlName + ".Value;\n";

                        break;

                    case (Calendario): // Calendario
                        ControlName = "pnldt" + NormalizedName;
                        sRes += BuildLabel(LabelName, FriendlyName, IsRequired, " (dd/mm/aaaa)");
                        
                        // Make Control
                        sRes += "        <tr>\n";
                        sRes += "            <td>\n";
                        sRes += "               <asp:Panel ID=" + DQ(ControlName) + " runat=\"server\"/>\n";
                        sRes += "            </td>\n";
                        sRes += "        </tr>\n";

                        ControlList += "        protected Panel " + ControlName + ";\n";
                        if ((Vector.Length >= 6) && (!string.IsNullOrEmpty(Vector[vFieldName])))
                            Moisture += "        this." + Vector[vFieldName] + " = " + ControlName + ".Value;\n";

                        Initialization += "               // TO DO: Convert " + ControlName + " to Custom DateTimePicker\n";

                        break;

                    case (SiNo): // Checkbox
                        ControlName = "bool" + NormalizedName;
                        sRes += BuildLabel(LabelName, FriendlyName, IsRequired);

                        // Make Control
                        sRes += "        <tr>\n";
                        sRes += "            <td>\n";
                        sRes += "               <asp:CheckBox CssClass=\"form_checkbox\" ID=" + DQ(ControlName) + " runat=\"server\"/>\n";
                        sRes += "            </td>\n";
                        sRes += "        </tr>\n";

                        ControlList += "        protected CheckBox " + ControlName + ";\n";
                        if ((Vector.Length >= 6) && (!string.IsNullOrEmpty(Vector[vFieldName])))
                            Moisture += "        this." + Vector[vFieldName] + " = " + ControlName + ".Checked;\n";
                        
                    break;

                    case (Titulo):
                        ControlName = "lbl" + NormalizedName;
                        sRes += "        <tr>\n";
                        sRes += "            <td>\n";
                        sRes += "               <asp:Label CssClass=\"form_label\" ID=" + DQ(ControlName) + " runat=\"server\"/>\n";
                        sRes += "            </td>\n";
                        sRes += "        </tr>\n";
                    break;

                    case (Seccion):
                        ControlName = "wz" + NormalizedName;

                        if (!SectionsStarted)
                        {
                            sRes += "        <tr>\n";
                            sRes += "            <td>\n";
                            sRes += "<asp:Wizard runat=\"server\" ID=" + DQ(ControlName) + " Font-Names=\"verdana\" CssClass=\"content-more\"\n";
                            sRes += "   ForeColor=\"navy\" Style=\"border: outset 1px black\" OnNextButtonClick=\"OnNext\"\n";
                            sRes += "   OnActiveStepChanged=\"OnActiveStepChanged\" OnFinishButtonClick=\"OnFinish\" ActiveStepIndex=\"0\"\n";
                            sRes += "   DisplaySideBar=\"false\">\n";
                            sRes += "<WizardSteps>\n";
                            SectionsStarted = true;
                        }
                        else
                        {
                            sRes += "    </TABLE>\n";
                            sRes += "</asp:WizardStep>\n";
                        }
                        
                        ControlName = "wz" + NormalizedName + "Step";
                        sRes += "<asp:WizardStep ID=" + DQ(ControlName) + " runat=\"server\" StepType=\"auto\" Title=\"\">\n";
                        sRes += "    <TABLE>\n";

                        // Hacer que termine ese validationgrp y empiece uno nuevo
                        ValidationGroup++;

                        break;

                    case (RepeaterInicio):                        
                        ControlName = "rpt" + NormalizedName;
                        sRes += "       <tr>\n";
                        sRes += "           <td>\n";
                        sRes += "               <asp:Repeater id=" + DQ(ControlName) + " runat=\"server\">\n";
                        sRes += "                   <HeaderTemplate>\n";
                        sRes += "                       <table border=\"1\" width=\"100%\">\n";
                        sRes += "                   </HeaderTemplate>\n";
                        sRes += "                   <ItemTemplate>\n";

                        ControlList += "        protected Repeater " + ControlName + ";\n";

                        Moisture += "        // Repeating Section Started\n";
                        Moisture += "        {\n";
                        
                        break;

                    case (RepeaterFin):
                        sRes += "                   </ItemTemplate>\n";
                        sRes += "                   <FooterTemplate>\n";
                        sRes += "                       </table>\n";
                        sRes += "                   </FooterTemplate>\n";
                        sRes += "               </asp:Repeater>\n";
                        sRes += "           </td>\n";
                        sRes += "       </tr>\n";

                        Moisture += "        }\n";
                        Moisture += "        // Repeating Section Ended\n";

                        break;
                }              

                if (Vector[vRequired].Equals(Verdadero))
                {
                    sRes += "        <tr>\n";
                    sRes += "            <td>\n";
                    sRes += "                <asp:RequiredFieldValidator ID=" + DQ(RequiredName) + " runat=\"server\" CssClass=\"form_field_error_message\"\n";
                    sRes += "                ErrorMessage=\"Requerido\" Display=\"Dynamic\" ControlToValidate=" + DQ(ControlName) + " ValidationGroup=" + DQ("grpValidation" + ValidationGroup) + "></asp:RequiredFieldValidator>\n";
                    sRes += "            </td>\n";
                    sRes += "        </tr>\n";
                }
                if (Vector[vType].Equals(Numerico))
                {
                    sRes += "        <tr>\n";
                    sRes += "            <td>\n";
                    sRes += "                <asp:RegularExpressionValidator ID=" + DQ(RegexValName) + " runat=\"server\" CssClass=\"form_field_error_message\"\n";
                    sRes += "                    ErrorMessage=\"Solo puede ingresar números\" Display=\"Dynamic\" ControlToValidate=" + DQ(ControlName) + "\n";
                    sRes += "                    ValidationExpression=\"^[\\d]*$\" ValidationGroup=" + DQ("grpValidation" + ValidationGroup) + "></asp:RegularExpressionValidator>\n";
                    sRes += "            </td>\n";
                    sRes += "        </tr>\n";
                }
                if (Vector[vType].Equals(NumericoAnchoFijo))
                {
                    string ML = "";
                    if ((!string.IsNullOrEmpty(Vector[vMaxLength])) || (Vector[vMaxLength].Equals("0")))
                        ML = Vector[vMaxLength];
                        //ML = "MaxLength=" + DQ(Vector[vMaxLength]);

                    sRes += "        <tr>\n";
                    sRes += "            <td>\n";
                    sRes += "                <asp:RegularExpressionValidator ID=" + DQ(RegexValName) + " runat=\"server\" CssClass=\"form_field_error_message\"\n";
                    sRes += "                    ErrorMessage=\"Solo puede ingresar números\" Display=\"Dynamic\" ControlToValidate=" + DQ(ControlName) + "\n";
                    sRes += "                    ValidationExpression=\"^[0-9{" + ML + "}]*$\" ValidationGroup=" + DQ("grpValidation" + ValidationGroup) + "></asp:RegularExpressionValidator>\n";
                    sRes += "            </td>\n";
                    sRes += "        </tr>\n";
                }
                if (Vector[vType].Equals(EMail))
                {
                    sRes += "        <tr>\n";
                    sRes += "            <td>\n";
                    sRes += "            <asp:RegularExpressionValidator ID=" + DQ(RegexValName) + " runat=\"server\" CssClass=\"form_field_error_message\"\n";
                    sRes += "                ErrorMessage=\"El mail no es válido\" Display=\"Dynamic\" ControlToValidate=" + DQ(ControlName) + "\n";
                    sRes += "                ValidationExpression=\"^[_]*([A-Za-z0-9]+(\\.|\\-*_*)?)+@([A-Za-z][A-Za-z0-9\\-]+(\\.|\\-*\\.))+[A-Za-z]{2,6}$\"\n";
                    sRes += "                ValidationGroup=" + DQ("grpValidation" + ValidationGroup) + "></asp:RegularExpressionValidator>\n";                  
                    sRes += "            </td>\n";
                    sRes += "        </tr>\n";
                }
            }
            catch (Exception Ex)
            {
                sRes += "        <tr>\n";
                sRes += "            <td>\n";
                sRes += "               <asp:Label ID=" + DQ(GetLabelID().ToString()) + " Text=\"PARSE ERROR:" + Ex.Message + " CssClass=\"form_field_error_message\"/>\n";
                sRes += "            </td>\n";
                sRes += "        </tr>\n";
            }
            return sRes;
        }
        
        static void Main(string[] args)
        {
            if (args.Length > 2)
            {
                Console.Write("Invalid Parameters");
            }
            try
            {
                String[] AllLines;
                String Output = "", CsOutput = "";

                if (args.Length == 0)
                {
                    AllLines = new String[2];
                    AllLines[0] = "Primer Nombre,TB,RE";
                    AllLines[1] = "Segundo Nombre,TB,RE";
                }
                else
                {
                    AllLines = File.ReadAllLines(args[0], System.Text.Encoding.Default);
                }

                if (args.Length != 2)
                {
                    Random randObj = new Random(1024);
                    ClassName = randObj.Next().ToString();
                } else
                    ClassName = args[1];
                
                //Para la version de Sharepoint
                Output += "<%@ Assembly Name=\"CAFAM.WebPortal.Forms, Version=1.0.0.0, Culture=neutral, PublicKeyToken=ae88e728e51b79b3\" %>\n";
                Output += "<%@ Page Language=\"C#\" Inherits=\"CAFAM.WebPortal.Forms." + ClassName + "\" Title=\"Formulario\" MasterPageFile=\"~masterurl/default.master\"%>\n";
                Output += "<%@ Register TagPrefix=\"WebPartPages\" Namespace=\"Microsoft.SharePoint.WebPartPages\" Assembly=\"Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c\"%>\n";
                Output += "<%@ Register Tagprefix=\"SharePoint\" Namespace=\"Microsoft.SharePoint.WebControls\" Assembly=\"Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c\" %>\n";

                Output += "<asp:Content ContentPlaceHolderID=\"PlaceHolderMain\" runat=\"server\" ID=\"MainContent\">\n";
                Output += "<link rel=\"Stylesheet\" href=\"~/_layouts/StyleSheet.css\" type=\"text/css\" />\n";
                Output += "<script type='text/javascript'>\n";
                Output += "    _spOriginalFormAction = document.forms[0].action;\n";
                Output += "    _spSuppressFormOnSubmitWrapper = true;\n";
                Output += "</script>\n";

                Output += "    <asp:ScriptManager ID=\"scriptMng\" runat=\"server\">\n";
                Output += "    </asp:ScriptManager>\n";
                Output += "     <table class=\"ms-formbody\" style=\"width:100%\" id=\"tblMain\" runat=\"server\">\n";

                Hash = new Hashtable();
                foreach (string Line in AllLines)
                {
                    Output += (ParseLine(Line));                    
                }
                if (SectionsStarted)
                {
                    Output += "    </TABLE>\n"; 
                    Output += "</asp:WizardStep>\n";
                    Output += "</WizardSteps>\n";
                    Output += "</asp:Wizard>\n";
                    Output += "            </td>\n";
                    Output += "        </tr>\n";
                }
                Output += "     </table>\n";
                Output += "</asp:Content>\n";

                CsOutput += "using System;\n";
                CsOutput += "using System.Configuration;\n";
                CsOutput += "using System.Data;\n";
                CsOutput += "using System.Web;\n";
                CsOutput += "using System.Web.Security;\n";
                CsOutput += "using System.Web.UI;\n";
                CsOutput += "using System.Web.UI.HtmlControls;\n";
                CsOutput += "using System.Web.UI.WebControls;\n";
                CsOutput += "using System.Web.UI.WebControls.WebParts;\n";
                CsOutput += "using Microsoft.SharePoint;\n\n";

                CsOutput += "namespace CAFAM.WebPortal.Forms\n";
                CsOutput += "{\n";
                CsOutput += "    public class " + ClassName + " : System.Web.UI.Page\n";
                CsOutput += "    {\n";        
                CsOutput += "        #region Controls\n";

                CsOutput += ControlList;
                CsOutput += "        #endregion\n\n";
                CsOutput += "        protected void Page_Load(object sender, EventArgs e)\n";
                CsOutput += "        {\n";
                CsOutput += "            try\n";
                CsOutput += "            {\n";
                CsOutput += "               if (this.IsPostBack())\n";
                CsOutput += "               {\n";
                CsOutput += "                   // Do Settings here\n";
                CsOutput += "               }\n";
                CsOutput += "               else\n";
                CsOutput += "               {\n";
                CsOutput += "                   Moisture();\n";
                CsOutput += "               }\n\n";
                CsOutput += Initialization;
                CsOutput += "            }\n";
                CsOutput += "            catch (Exception Ex)\n";
                CsOutput += "            {\n";
                CsOutput += "            }\n";
                CsOutput += "        }\n";
                if (SectionsStarted)
                {
                    CsOutput += "       protected void OnActiveStepChanged(object sender, EventArgs e)\n";
                    CsOutput += "       {\n";
                    CsOutput += "       }\n\n";
                    CsOutput += "       protected void OnFinish(object sender, WizardNavigationEventArgs e)\n";
                    CsOutput += "       {\n";
                    CsOutput += "       }\n\n";
                    CsOutput += "       protected void OnNext(object sender, WizardNavigationEventArgs e)\n";
                    CsOutput += "       {\n";
                    CsOutput += "       }\n\n";
                    CsOutput += "       #region bindings\n";
                    CsOutput += "       private void Moisture()\n";
                    CsOutput += "       {\n";
                    CsOutput += Moisture;
                    CsOutput += "       }\n\n";
                    CsOutput += "       #endregion\n";
                }
                CsOutput += "    }\n";
                CsOutput += "}\n";

                if (args.Length == 2)
                {
                    File.WriteAllLines(ClassName + ".aspx", Output.Split('\n'));
                    File.WriteAllLines(ClassName + ".aspx.cs", CsOutput.Split('\n'));
                }
                else
                {
                    Console.Write(Output);
                    Console.ReadKey();
                }
            }
            catch (Exception Ex)
            {
                Console.WriteLine (Ex);
                Console.ReadKey();
            }            
        }
    }
}