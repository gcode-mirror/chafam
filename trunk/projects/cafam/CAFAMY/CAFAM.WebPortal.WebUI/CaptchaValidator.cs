using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Microsoft.SharePoint;
using Microsoft.SharePoint.Utilities;

namespace CAFAM.WebPortal.WebUI
{
    /// <summary>
    /// CaptchaValidator.
    /// Does a server side check of the CAPTCHA Text.
    /// Based on CKS:EBE Solution.
    /// </summary>
    [ToolboxData("<{0}:CaptchaValidator runat=\"server\" ErrorMessage=\"CaptchaValidator\" LabelText=\"LabelText\"></{0}:CaptchaValidator>")]
    public class CaptchaValidator : WebControl, IValidator, INamingContainer
    {
        #region Constants
        private const int CACHE_EXPIRATION_SECS = 300;
        private const string CAPTCHA_RENDERURL = "/_layouts/cks/ebe/ImageHipChallenge.ashx";
        private const string CAPTCHA_LABELTEXT = "Escriba los caracteres que aparecen en la imagen";
        private const int IMAGE_WIDTH = 200;
        private const int IMAGE_HEIGHT = 50;
        #endregion

        #region Web Controls
        private Image imgCaptcha = null;
        private TextBox txtCaptcha = null;
        #endregion

        #region Properties
        private string labelText = CAPTCHA_LABELTEXT;
        [Category("Behavior")]
        [Description("The duration of time (seconds) a user has before the challenge expires.")]
        [DefaultValue(CAPTCHA_LABELTEXT)]
        public string LabelText
        {
            get { return labelText; }
            set { labelText = value; }
        }

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

        private string errorMessage = "Debe ingresar los caracteres exactamente como se muestran en la imagen";
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

        public CaptchaValidator()
        {
            this.isValid = true;
            this.Visible = true;
        }

        protected override void OnInit(EventArgs e)
        {
            this.Page.Validators.Add(this);
            base.OnInit(e);
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
            txtCaptcha.CssClass = "form_text";
            Controls.Add(txtCaptcha);
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
                writer.Write("<div class='form_label'>");
                writer.Write(labelText);
                writer.Write("</div>");
            }

            imgCaptcha.RenderControl(writer);
            writer.WriteBreak();
            txtCaptcha.RenderControl(writer);

            if (!this.IsValid)
            {
                writer.WriteBreak();
                writer.Write(String.Format(@"<span style=""color: red;"" class=""ms-descriptiontext"">{0}</span>", this.ErrorMessage));
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
