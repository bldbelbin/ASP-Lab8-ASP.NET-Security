using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Welcome.Text = "Hello, " + Context.User.Identity.Name;
    }

    protected void Sign_Out_Click(object sender, EventArgs e)
    {
        //removes the forms authenication cookie
        FormsAuthentication.SignOut();

        //redirects the browser to the login URL. Clears the cookies
        FormsAuthentication.RedirectToLoginPage();
    }
}