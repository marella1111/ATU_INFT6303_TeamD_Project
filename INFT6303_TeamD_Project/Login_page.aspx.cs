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
            if (Session["New"] != null && string.Equals(Session["Role"], "Admin"))
            {
                Response.Redirect("Admin.aspx");
            }
            else if (Session["New"] != null && string.Equals(Session["Role"], "Faculty"))
            {
                Response.Redirect("Faculty.aspx");
            }
            else if (Session["New"] != null && string.Equals(Session["Role"], "Student"))
            {
                Response.Redirect("Student.aspx");
            }
        }

        protected void Login_ID_Click(object sender, EventArgs e)
        {
            if (Session["New"] == null)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                try
                {
                    conn.Open();
                    string qry = "";
                    if (DropDownList1.SelectedValue == "Admin")
                        qry = "SELECT * FROM Admin WHERE Username='" + email.Text.Trim() + "' AND Password='" + password.Text.Trim() + "'";
                    else if (DropDownList1.SelectedValue == "Faculty")
                        qry = "SELECT * FROM Faculty WHERE email_id='" + email.Text.Trim() + "' AND password='" + password.Text.Trim() + "'";
                    else
                        qry = "SELECT * FROM Student WHERE email_id='" + email.Text.Trim() + "' AND password='" + password.Text.Trim() + "'";
                    SqlCommand cmd = new SqlCommand(qry, conn);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        Session["New"] = sdr.GetValue(1).ToString();
                        Session["Role"]= DropDownList1.SelectedValue;
                        if (string.Equals(Session["Role"], "Admin"))
                            Response.Redirect("Admin.aspx");
                        else if (string.Equals(Session["Role"], "Faculty"))
                        {
                            Session["Name"] = sdr.GetValue(2).ToString();
                            Session["Courses"] = sdr.GetValue(7).ToString();
                            Response.Redirect("Faculty.aspx");
                        }
                        else
                        {
                            Session["Name"] = sdr.GetValue(2).ToString();
                            Session["Courses"] = sdr.GetValue(7).ToString();
                            Response.Redirect("Student.aspx");
                        }
                    }
                    else
                    {
                        Label1.Text = "* username and password are incorrect";
                        Label1.ForeColor = System.Drawing.Color.Red;
                    }
                    conn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
            {
                Response.Redirect("WebForm1.aspx");
            }

        }
    }
}