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
    public partial class FacultyFeedbackForm : System.Web.UI.Page
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
                Label1.Text = Session["Name"].ToString();
                Label2.Text = Session["Role"].ToString();
                if (!IsPostBack)
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    try
                    {
                        conn.Open();
                        string qry = "SELECT * FROM Coursemapping WHERE faculty_id='" + Session["New"].ToString().Trim() + "'";
                        SqlCommand cmd = new SqlCommand(qry, conn);
                        SqlDataReader sdr = cmd.ExecuteReader();
                        if (sdr.Read())
                        {
                            DropDownList2.DataTextField = "course_id";
                            DropDownList2.DataValueField = "course_id";
                            DropDownList2.DataSource = cmd.ExecuteReader();
                            DropDownList2.DataBind();
                        }
                        conn.Close();
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                }
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
                    Session["cid"] = DropDownList2.SelectedValue.Trim();
                    Response.Redirect("FacultyFeedback.aspx");
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