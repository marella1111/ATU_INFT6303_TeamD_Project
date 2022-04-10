using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace INFT6303_TeamD_Project
{
    public partial class Login_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_ID_Click(object sender, EventArgs e)
        {
            if (Session["New"] == null)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                int flg = 0;
                string query = "select * from [Admin]";
                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    if (string.Equals(email_textbox.Text.ToString().Replace(" ", ""), rd["Username"].ToString().Replace(" ", "")))
                    {
                        if (string.Equals(password_textbox.Text.ToString().Replace(" ", ""), rd["Password"].ToString().Replace(" ", "")))
                        {
                            Response.Write("Login Successfull");
                            flg = 1;
                            Session["New"] = password_textbox.Text;
                            Response.Redirect("WebForm1.aspx");
                            break;
                        }
                    }
                }
                conn.Close();
                if (flg == 0)
                    Response.Write("Error in Authentication");
            }
            else
                Response.Redirect("Login_page.aspx");
        }
    }
}