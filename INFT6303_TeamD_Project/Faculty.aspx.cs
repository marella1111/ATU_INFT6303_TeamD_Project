using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INFT6303_TeamD_Project
{
    public partial class Faculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] == null)
            {
                Response.Redirect("Login_page.aspx");
            }
            else if (Session["New"] != null && string.Equals(Session["Role"], "Admin"))
            {
                Response.Redirect("Admin.aspx");
            }
            else if (Session["New"] != null && string.Equals(Session["Role"], "Student"))
            {
                Response.Redirect("Student.aspx");
            }
            else
            {
            }
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Session["New"] = null;
                Response.Redirect("Login_page.aspx");
            }
        }
    }
}