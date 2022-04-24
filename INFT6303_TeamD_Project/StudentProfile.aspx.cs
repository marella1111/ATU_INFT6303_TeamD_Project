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
    public partial class StudentProfile : System.Web.UI.Page
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
            else if (Session["New"] != null && string.Equals(Session["Role"], "Faculty"))
            {
                Response.Redirect("Faculty.aspx");
            }
            else
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                try
                {
                    conn.Open();
                    string qry = "SELECT * FROM Student WHERE student_id='" + Session["New"].ToString() + "'";
                    SqlCommand cmd = new SqlCommand(qry, conn);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                       Label1.Text= sdr.GetValue(2).ToString();
                       Label2.Text= sdr.GetValue(1).ToString();
                       Label3.Text= sdr.GetValue(3).ToString();
                       Label4.Text=sdr.GetValue(5).ToString();
                       Label5.Text=sdr.GetValue(4).ToString();
                       Label6.Text= sdr.GetValue(6).ToString();
                       Label7.Text=sdr.GetValue(7).ToString();
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
            Response.Redirect("StudentUpdate.aspx");
        }

        protected void Btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student.aspx");
        }
    }
}