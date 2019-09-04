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
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void BtnLogon_Click(object sender, EventArgs e)
    {
        if ((UserEmail.Text == "jsmith@ibm.ca") && (UserPass.Text == "ceil865"))
        {
            FormsAuthentication.RedirectFromLoginPage(UserEmail.Text, Persist.Checked);
        }   
        else
        {
            Message.Text = "Invalid credentials. Please try again.";
        }
    }

    protected void BtnLogonWebConfig_Click(object sender, EventArgs e)
    {
        //Authenticating against values in Web.config
        if (FormsAuthentication.Authenticate(UserEmail.Text, UserPass.Text))
        {
            FormsAuthentication.RedirectFromLoginPage(UserEmail.Text, Persist.Checked);
        } else
        {
            Message.Text = "Invalid credentials. Please try again";
        }
            
    }
}