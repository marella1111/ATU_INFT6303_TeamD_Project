using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace INFT6303_TeamD_Project
{
    public partial class FacultyProfile : System.Web.UI.Page
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
                Label8.Text = Session["Name"].ToString();
                Label9.Text = Session["Role"].ToString();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                try
                {
                    conn.Open();
                    string qry = "SELECT * FROM Faculty WHERE faculty_id='" + Session["New"].ToString() + "'";
                    SqlCommand cmd = new SqlCommand(qry, conn);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        Label1.Text = sdr.GetValue(2).ToString();
                        Label2.Text = sdr.GetValue(1).ToString();
                        Label3.Text = sdr.GetValue(3).ToString();
                        Label4.Text = sdr.GetValue(5).ToString();
                        Label5.Text = sdr.GetValue(4).ToString();
                        Label6.Text = sdr.GetValue(6).ToString();
                    }
                    conn.Close();
                    conn.Open();
                     qry = "SELECT * FROM Coursemapping WHERE faculty_id='" + Session["New"].ToString() + "'";
                     cmd = new SqlCommand(qry, conn);
                     sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        Response.Write(sdr.GetValue(0));
                    }
                    conn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }

        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacultyUpdate.aspx");
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