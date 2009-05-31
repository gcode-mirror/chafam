using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Microsoft.SharePoint;
using Microsoft.SharePoint.Utilities;
using System.Xml;
using System.Configuration;
using Microsoft.ApplicationBlocks.Data;
using System.Data;
using System.Data.SqlClient;
using CAFAM.WebPortal.Commons;

namespace CAFAM.WebPortal.WebUI
{
    /// <summary>
    /// CaptchaValidator.
    /// Does a server side check of the CAPTCHA Text.
    /// Inherits BaseValidator and is only Enabled when Captcha is enabled in CKS:EBE Settings Page.
    /// </summary>
    [ToolboxData("<{0}:CaptchaValidator runat=\"server\" ErrorMessage=\"CaptchaValidator\" LabelText=\"LabelText\"></{0}:CaptchaValidator>")]
    public class CaptchaValidatorWP : WebControl, IValidator, INamingContainer
    {
        #region Constants
        private const int CACHE_EXPIRATION_SECS = 300;
        private const string CAPTCHA_RENDERURL = "/_layouts/cks/ebe/ImageHipChallenge.ashx";
        private const string CAPTCHA_LABELTEXT = "CAPTCHA Image Validation";
        private const string CAPTCHA_BUTTONTEXT = "Enviar";
        private const int CAPTCHA_DIGITS = 6;
        private const int IMAGE_WIDTH = 200;
        private const int IMAGE_HEIGHT = 50;
        #endregion

        #region Web Controls
        private Image imgCaptcha = null;
        private TextBox txtCaptcha = null;
        private Button btnSend = null;
        //private Label lblHello = null;
        #endregion

        #region Properties
        private int _Digits = CAPTCHA_DIGITS;
        [Category("Behavior")]
        [Description("The number of digits in control")]
        public int Digits
        {
            get { return _Digits; }
            set 
            {
                if ((value >= 1) && (value <= 10))
                    _Digits = value;
                else
                    _Digits = CAPTCHA_DIGITS;
            }
        }

        private string labelText = CAPTCHA_LABELTEXT;
        [Category("Behavior")]
        [Description("The duration of time (seconds) a user has before the challenge expires.")]
        [DefaultValue(CAPTCHA_LABELTEXT)]
        public string LabelText
        {
            get { return labelText; }
            set { labelText = value; }
        }

        /*private string buttonText = CAPTCHA_BUTTONTEXT;
        [Category("Behavior")]
        [Description("Text button")]
        [DefaultValue(CAPTCHA_BUTTONTEXT)]
        public string ButtonText
        {
            get { return buttonText; }
            set { buttonText = value; }
        }
        */
        private int imageWidth = IMAGE_WIDTH;
        [Category("Behavior")]
        [Description("Width of the CAPTCHA Image.")]
        [DefaultValue(IMAGE_WIDTH)]
        public int ImageWidth
        {
            get { return imageWidth; }
            set { imageWidth = value; }
        }

        private int imageHeight = IMAGE_HEIGHT;
        [Category("Behavior")]
        [Description("Height of the CAPTCHA Image.")]
        [DefaultValue(IMAGE_HEIGHT)]
        public int ImageHeight
        {
            get { return imageHeight; }
            set { imageHeight = value; }
        }

        private string errorMessage = null;
        [Category("Behavior")]
        [Description("Validation Error Message.")]
        public string ErrorMessage
        {
            get { return errorMessage; }
            set { errorMessage = value; }
        }

        private bool isValid = false;
        public bool IsValid
        {
            get { return isValid; }
            set { isValid = value; }
        }
        #endregion

        public CaptchaValidatorWP()
        {
            this.isValid = true;
            this.Enabled = true;// BlogContext.Current.Settings.EnableCaptchaComments;
            this.Visible = this.Enabled;
        }

        protected override void OnInit(EventArgs e)
        {
            this.Page.Validators.Add(this);
            base.OnInit(e);
        }

        protected void CheckCaptcha (object sender, EventArgs e)
        {
            EvaluateIsValid ();
            if (this.IsValid)
            {
                string sForm = Page.Request.Params["Form"];
                string sURL = FormsConfig.GetURL(sForm, Page);
                if (!string.IsNullOrEmpty(sURL))
                    Page.Response.Redirect (sURL);
            }

            //lblHello.Text = "Ud ha ingresado algo mal";
        }

        protected override void CreateChildControls()
        {
            imgCaptcha = new Image();
            imgCaptcha.BorderColor = this.BorderColor;
            imgCaptcha.BorderStyle = this.BorderStyle;
            imgCaptcha.BorderWidth = this.BorderWidth;
            imgCaptcha.ToolTip = this.ToolTip;
            Controls.Add(imgCaptcha);

            txtCaptcha = new TextBox();
            Controls.Add(txtCaptcha);

            btnSend = new Button();
            if (ConfigurationSettings.AppSettings["CaptchaButtonText"] != null)
                btnSend.Text = ConfigurationSettings.AppSettings["CaptchaButtonText"];
            else
                btnSend.Text = CAPTCHA_BUTTONTEXT;

            btnSend.Click += new EventHandler(CheckCaptcha);
            Controls.Add(btnSend);            

            /*lblHello = new Label();
            lblHello.Text = "Prueba";
            Controls.Add(lblHello);*/
        }

        /// <summary>Generates a new image and fills in the dynamic image and hidden field appropriately.</summary>
        /// <param name="e">Ignored.</param>
        protected sealed override void OnPreRender(EventArgs e)
        {
            // Generate id and text
            Guid id;
            string text;
            CaptchaUtility.GenerateRandomText(6, out id, out text);

            // Store id and text
            CaptchaUtility.SetChallengeText(id, text, DateTime.Now.AddSeconds(CACHE_EXPIRATION_SECS));
            txtCaptcha.Attributes.Add("ChallengeId", id.ToString("N"));
            imgCaptcha.ImageUrl = String.Format("{0}?id={1}&width={2}&height={3}", SPUrlUtility.CombineUrl(SPContext.Current.Web.ServerRelativeUrl, CAPTCHA_RENDERURL), id.ToString("N"), this.ImageWidth, this.ImageHeight);
        }

        protected override void Render(HtmlTextWriter writer)
        {
            if (!String.IsNullOrEmpty(labelText))
            {
                writer.Write(labelText);
                
                writer.WriteBreak();
            }            
            imgCaptcha.RenderControl(writer);
            writer.WriteBreak();            
            txtCaptcha.RenderControl(writer);
            btnSend.RenderControl(writer);
            if (!this.IsValid)
            {
                writer.WriteBreak();
                writer.Write(String.Format(@"<span style=""color: red;"">{0}</span>", this.ErrorMessage));
            }            
        }

        public void Validate()
        {
            this.IsValid = true;

            if (this.Enabled)
            {
                this.IsValid = this.EvaluateIsValid();
            }
        }

        protected bool EvaluateIsValid()
        {
            bool result = false;

            string strId = txtCaptcha.Attributes["ChallengeId"];
            if (!String.IsNullOrEmpty(strId))
            {
                try
                {
                    Guid id = new Guid(strId);
                    string text = CaptchaUtility.GetChallengeText(id);

                    if ((text != null) && text.Equals(txtCaptcha.Text))
                    {
                        CaptchaUtility.SetChallengeText(id, null, DateTime.MinValue);

                        result = true;
                    }
                }
                catch (FormatException) { }
            }

            return result;
        }
    }
}
