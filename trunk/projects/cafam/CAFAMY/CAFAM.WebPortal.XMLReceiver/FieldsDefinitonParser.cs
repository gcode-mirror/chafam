using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Xml;
using System.Collections;
using System.Collections.Generic;

namespace CAFAM.WebPortal.XMLReceiver
{
    public static class FieldsDefinitionParser
    {
        private static int iLastErrorCode = 0;
        private static XmlDocument XML = null;
        private static Hashtable Structures;
        //private static int Level = 0;

        private static string Spacing(int Count)
        {
            string Res = "";
            for (int i = 0; i < Count; i++)
                Res += " ";
            return Res;
        }

        private static bool LoadFromXML(string FileName)
        {
            // Load XML in Memory
            try
            {
                XmlDocument XMLTemp = new XmlDocument();
                XMLTemp.Load(FileName);
                XML = XMLTemp;                
            }
            catch
            {
            }
            return (XML != null);
        }

        private static bool ExtractStructures()
        {
            Structures = new Hashtable();

            XmlNodeList xForms = XML.GetElementsByTagName("FORM");
            foreach (XmlNode xNode in xForms)
            {
                // Get form name
                string currFormName = xNode.Attributes["name"].Value.ToString().Trim().ToUpper();
                Hashtable MarkList = new Hashtable();
                //List<MarkID> MarkList = new List<MarkID>();
                foreach (XmlNode xMark in xNode.ChildNodes)
                {
                    //MarkList.Add (new MarkID (-1, xMark.Name, xMark.InnerText));
                    MarkList.Add (xMark.Name, new MarkID (-1, xMark.Name, xMark.InnerText));
                }
                Structures.Add (currFormName, MarkList);
            }
            return true;
        }

        /*public static string BuildSQLStatement(string SourceXML)
        {
            //Si se quiere llamar sin importar el codigo de error            
            return BuildSQLStatement(SourceXML, ref iLastErrorCode);
        }*/

        private static int EnsureConfig()
        {
            // Load Field Config XML if not present
            if (XML == null)
            {
                string xmlConfigPath = ConfigurationSettings.AppSettings["FormsFieldsDefinitionXMLURL"];
                if (string.IsNullOrEmpty (xmlConfigPath))
                    return (30);

                /*if (!string.IsNullOrEmpty(ConfigurationSettings.AppSettings["FormsFieldsDefinitionXMLURL"]))
                    xmlConfigPath = ConfigurationSettings.AppSettings["FormsFieldsDefinitionXMLURL"];*/
                /*else
                    xmlConfigPath = HttpContext.Current.Server.MapPath("./config.xml");*/
                
                //xmlConfigPath = "..\\..\\Config.xml";                

                if (!LoadFromXML(xmlConfigPath))
                {
                    return (10);
                }

                //Parse Config File
                if (!ExtractStructures())
                {
                    return (20);
                }
            }
            return 0;
        }

        private static Hashtable GetNodeMarkList (string NodeName)
        {
            try
            {
                return (Hashtable)Structures[NodeName.Trim().ToUpper()];
            }
            catch
            {
                return null;
            }
        }

        private static bool NodeIsWritable(string NodeName, Hashtable NodeMarkList)
        {
            try
            {
                return NodeMarkList.ContainsKey(NodeName);
            }
            catch
            {
                return false;
            }
        }

        private static void Explode(XmlNode xrNode, ref string Statement, Hashtable NodeMarkList)
        {
            // Level++;
            
            bool Writable = NodeIsWritable(xrNode.Name, NodeMarkList);
            Hashtable Data = null;
            if (Writable) Data = new Hashtable();

            // Iterate Tree
            foreach (XmlNode xNode in xrNode.ChildNodes)
            {
                //Iterate Children
                // If no children or text children
                if ((xNode.ChildNodes.Count == 0) || 
                    ((xNode.ChildNodes.Count == 1) && (xNode.ChildNodes[0].NodeType == XmlNodeType.Text)))
                {
                    if (Data != null)
                        Data.Add(xNode.Name, xNode.InnerText);
                }
                else
                {
                    Explode(xNode, ref Statement, NodeMarkList);
                }
            }
            if (Writable)
            {
                string NewStatement = ((MarkID)NodeMarkList[xrNode.Name]).SQL;

                foreach (string Key in Data.Keys)
                {
                    NewStatement = NewStatement.Replace(Key, Data[Key].ToString());
                }
                
                Statement = NewStatement + Statement;
            }                        
            //Level--;
        }

        public static string CreateSQLScript(string SourceXML)
        {
            return CreateSQLScript(SourceXML, ref iLastErrorCode);
        }

        public static string CreateSQLScript(string SourceXML, ref int iErrCode)
        {
            string Res = "";
            try
            {
                // Ensure that config and structures are ready
                iErrCode = EnsureConfig();
                if (iErrCode != 0)
                    throw new Exception ("Setup failed");

                // Parse data ==================================================

                // Get Data Source XML ready
                XmlDocument xSource = new XmlDocument();
                xSource.LoadXml(SourceXML);

                // Find Form Metadata and use it
                Hashtable NodeMarkList = GetNodeMarkList (GetFormName(SourceXML));
                if (NodeMarkList != null)
                    Explode(xSource, ref Res, NodeMarkList);

                Res = "BEGIN TRANSACTION" + Environment.NewLine + Res + "COMMIT TRANSACTION" + Environment.NewLine;

                Res = Res.Replace("''", "NULL");

                return Res;
            }
            catch (Exception Ex)
            {
                return null;
            }
        }

        private static string GetFormName(string SourceXML)
        {
            string Res = null;
            int i = SourceXML.IndexOf ("<my:FormName>") + 13;
            int j = SourceXML.IndexOf ("</my:FormName>");
            if ((i != -1) && (j != -1))
            {
                Res = SourceXML.Substring(i, j - i).Trim();
            }
            return Res;
        }

        /*public static string BuildSQLStatement(string SourceXML, ref int iErrCode)
        {
            string Res = null;
            try
            {
                // Load Field Config XML if not present
                if (XML == null)
                {
                    string xmlConfigPath;
                    if (!string.IsNullOrEmpty(ConfigurationSettings.AppSettings["FormsFieldsDefinitionXMLURL"]))
                        xmlConfigPath = ConfigurationSettings.AppSettings["FormsFieldsDefinitionXMLURL"];
                    else
                        xmlConfigPath = HttpContext.Current.Server.MapPath("./config.xml");

                    if (!LoadFromXML(xmlConfigPath))
                    {
                        iErrCode = 10;
                        return null;
                    }

                    //Parse Config File
                    if (!ExtractStructures())
                    {
                        iErrCode = 20;
                        return null;
                    }
                }

                // Get Data Source XML ready
                XmlDocument xSource = new XmlDocument();
                xSource.LoadXml(SourceXML);
                // Dump data into hash - Get Form name
                string sFormName = null;
                string sCurrNod = null;
                string sCurrVal = null;
                XmlNodeList xNodLst = xSource.GetElementsByTagName("my:myFields");
                Hashtable Fields = new Hashtable();
                foreach (XmlNode currNod in xNodLst[0].ChildNodes)
                {
                    sCurrNod = currNod.Name.ToString();
                    sCurrVal = currNod.InnerText;
                    Fields.Add(sCurrNod, sCurrVal);
                    if (sCurrNod.Equals("my:FormName"))
                        sFormName = sCurrVal.Trim().ToUpper();
                }

                // Search form node
                if (!string.IsNullOrEmpty(sFormName))
                {
                    XmlNodeList xForms = XML.GetElementsByTagName("FORM");

                    foreach (XmlNode xNode in xForms)
                    {
                        string currFormName = xNode.Attributes["name"].Value.ToString().Trim().ToUpper();

                        // Form found, match fields
                        if (currFormName.Equals(sFormName))
                        {
                            string Statement = xNode.InnerText;
                            foreach (string Key in Fields.Keys)
                            {
                                Statement = Statement.Replace(Key, (string)Fields[Key]);
                            }
                            Res = Statement;
                            break;
                        }
                    }
                }
                Res = Res.Replace("''", "NULL");
                return Res;
            }
            catch (Exception Ex)
            {
                return null;
            }
        }*/
    }

    public class MarkID
    {
        public int ID;
        public string Name;
        public string SQL;

        public MarkID(int pID, string pName, string pSQL)
        {
            ID = pID;
            Name = pName;
            SQL = pSQL;
        }
    }
}