using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Web.UI;
using System.Web.UI.WebControls.WebParts;
using CAFAM.WebPortal.WebUI;

namespace CAFAM.WebPortal.WebParts
{
    [Guid("2626ef7d-b1ad-458d-8398-98a6dad72cbb")]
    public class WPCaptcha : Microsoft.SharePoint.WebPartPages.WebPart
    {
        private bool _error = false;

        /*private string _ButtonText = null;
        [Personalizable(PersonalizationScope.Shared)]
        [WebBrowsable(true)]
        [System.ComponentModel.Category("My Property Group")]
        [WebDisplayName("ButtonText")]
        [WebDescription("Button Text")]
        public string ButtonText
        {
            get
            {
                if (_ButtonText == null)
                {
                    _ButtonText = "Hello SharePoint";
                }
                return _ButtonText;
            }
            set { _ButtonText = value; }
        }*/

        private string _MessageText = null;
        [Personalizable(PersonalizationScope.Shared)]
        [WebBrowsable(true)]
        [System.ComponentModel.Category("My Property Group")]
        [WebDisplayName("MessageText")]
        [WebDescription("Message Text")]
        public string MessageText
        {
            get
            {
                if (_MessageText == null)
                {
                    _MessageText = "Please enter the code written in the image";
                }
                return _MessageText;
            }
            set { _MessageText = value; }
        }

        private int _Digits = 6;
        [Personalizable(PersonalizationScope.Shared)]
        [WebBrowsable(true)]
        [System.ComponentModel.Category("My Property Group")]
        [WebDisplayName("Digitos")]
        [WebDescription("Digits")]
        public int Digits
        {
            get
            {
                return _Digits;
            }
            set 
            { 
                _Digits = value; }
        }        

        public WPCaptcha()
        {
            this.ExportMode = WebPartExportMode.All;
        }

        /// <summary>
        /// Create all your controls here for rendering.
        /// Try to avoid using the RenderWebPart() method.
        /// </summary>
        protected override void CreateChildControls()
        {
            if (!_error)
            {
                try
                {
                    base.CreateChildControls();
                    // Your code here...
                    CaptchaValidatorWP Captcha = new CaptchaValidatorWP();
                    //Captcha.ButtonText = ButtonText;
                    Captcha.LabelText = MessageText;
                    Captcha.Digits = Digits;
                    this.Controls.Add(Captcha);
                }
                catch (Exception ex)
                {
                    HandleException(ex);
                }
            }
        }

        /// <summary>
        /// Ensures that the CreateChildControls() is called before events.
        /// Use CreateChildControls() to create your controls.
        /// </summary>
        /// <param name="e"></param>
        protected override void OnLoad(EventArgs e)
        {
            if (!_error)
            {
                try
                {
                    base.OnLoad(e);
                    this.EnsureChildControls();

                    // Your code here...
                }
                catch (Exception ex)
                {
                    HandleException(ex);
                }
            }
        }

        /// <summary>
        /// Clear all child controls and add an error message for display.
        /// </summary>
        /// <param name="ex"></param>
        private void HandleException(Exception ex)
        {
            this._error = true;
            this.Controls.Clear();
            this.Controls.Add(new LiteralControl(ex.Message));
        }
    }
}
