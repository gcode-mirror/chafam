using System;
using System.Collections.Generic;
using System.Text;
using System.Web.Security;
using System.Web.UI.WebControls;
using System.Web;

namespace CAFAM.WebPortal.UserLogin
{
    public class LoginCafamPage : Microsoft.SharePoint.ApplicationPages.LoginPage
    {

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            this.login.LoginError += new EventHandler(OnLoginError);
            this.login.LoggedIn += new EventHandler(OnLoggedIn);

            if (Request.Cookies["cookieLoginName"] != null && !string.IsNullOrEmpty(Request.Cookies["cookieLoginName"].Value) &&
                Request.Cookies["cookieLoginPass"] != null && !string.IsNullOrEmpty(Request.Cookies["cookieLoginPass"].Value))
            {
                if (((TextBox)this.login.FindControl("UserName")).Text == Request.Cookies["cookieLoginName"].Value &&
                 ((TextBox)this.login.FindControl("password")).Text == Request.Cookies["cookieLoginPass"].Value)
                {
                    ((TextBox)this.login.FindControl("password")).Text = Commons.CryptographicService.Decrypt(Request.Cookies["cookieLoginPass"].Value);
                }
            }
        }

        protected override void OnPreRender(EventArgs e)
        {
            base.OnPreRender(e);

            if (!IsPostBack)
            {
                if (Request.Cookies["cookieLoginName"] != null && !string.IsNullOrEmpty(Request.Cookies["cookieLoginName"].Value) &&
                    Request.Cookies["cookieLoginPass"] != null && !string.IsNullOrEmpty(Request.Cookies["cookieLoginPass"].Value))
                {
                    ((CheckBox)this.login.FindControl("Remember")).Checked = true;
                    ((TextBox)this.login.FindControl("UserName")).Text = Request.Cookies["cookieLoginName"].Value;
                    ((TextBox)this.login.FindControl("password")).Attributes.Add("value",  Request.Cookies["cookieLoginPass"].Value);
                }
            }
        }

        protected void OnLoggedIn(object sender, EventArgs e)
        {
            if (Request.Cookies["cookieLoginName"] != null && Request.Cookies["cookieLoginPass"] != null)
            {
                HttpCookie cookieLoginName = Request.Cookies["cookieLoginName"];
                cookieLoginName.Expires = DateTime.Now.AddDays(-1);

                HttpCookie cookieLoginPass = Request.Cookies["cookieLoginPass"];
                cookieLoginPass.Expires = DateTime.Now.AddDays(-1);

                Response.Cookies.Add(cookieLoginName);
                Response.Cookies.Add(cookieLoginPass);
            }

            if (((CheckBox)this.login.FindControl("Remember")).Checked == true)
            {
                HttpCookie cookieLoginName = new HttpCookie("cookieLoginName", ((TextBox)this.login.FindControl("UserName")).Text);
                HttpCookie cookieLoginPass = new HttpCookie("cookieLoginPass",  Commons.CryptographicService.Encrypt(((TextBox)this.login.FindControl("password")).Text));

                cookieLoginName.Expires = DateTime.Today.AddDays(7).AddSeconds(-1);
                cookieLoginPass.Expires = DateTime.Today.AddDays(7).AddSeconds(-1);

                Response.Cookies.Add(cookieLoginName);
                Response.Cookies.Add(cookieLoginPass);
            }

            if (Request.QueryString["ReturnUrl"] != null)
            {
                string url = Request.QueryString["ReturnUrl"];
                url = Server.HtmlDecode(url);
                url = Server.HtmlDecode(url);
                Response.Redirect(url);
            }
        }

        private void OnLoginError(object sender, EventArgs e)
        {
            this.login.FailureText = "El nombre de Usuario y la Contraseña no coinciden.";
        }
    }
}
