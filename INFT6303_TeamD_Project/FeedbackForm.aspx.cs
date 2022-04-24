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
    public partial class FeedbackForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] == null)
            {
                Response.Redirect("Login_page.aspx");
            }
            else if (Session["New"] != null && string.Equals(Session["Role"], "Faculty"))
            {
                Response.Redirect("Faculty.aspx");
            }
            else if (Session["New"] != null && string.Equals(Session["Role"], "Student"))
            {
                Response.Redirect("Student.aspx");
            }
            else
            {
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                conn.Open();
                string qry = "SELECT * FROM Course WHERE department='" + DropDownList1.SelectedValue.ToString().Replace(" ", "") + "'";
                SqlCommand cmd = new SqlCommand(qry, conn);
                DropDownList2.DataTextField = "course_name";
                DropDownList2.DataValueField = "course_id";
                DropDownList2.DataSource = cmd.ExecuteReader();
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0,"Select a course");
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            Session["cid"] = DropDownList2.SelectedValue.ToString().Trim();
            Response.Redirect("AdminFeedback.aspx");
        }
    }
}