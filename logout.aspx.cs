using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodBankProject
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Session["adminEmail"] = null;
            Session["emailRecepient"] = null;
            Session.Abandon();
            Session.Clear();
            Response.Cookies.Clear();
            Response.Redirect("adminLogin.aspx");
            
        }
    }
}