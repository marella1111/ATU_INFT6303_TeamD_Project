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
    public partial class Course : System.Web.UI.Page
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
                Label2.Text = Session["Role"].ToString();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                conn.Open();
                string qry = "SELECT * FROM Faculty WHERE department='" + DropDownList2.SelectedValue.ToString().Trim() + "'";
                SqlCommand cmd = new SqlCommand(qry, conn);
                DropDownList1.DataTextField = "name";
                DropDownList1.DataValueField = "faculty_id";
                DropDownList1.DataSource = cmd.ExecuteReader();
                DropDownList1.DataBind();
                DropDownList1.ForeColor = System.Drawing.Color.Black;
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qry = "SELECT * FROM Course WHERE course_id='" + txtbox_cid.Text + "'";
            SqlCommand qry_n = new SqlCommand(qry, conn);
            SqlDataReader rd = qry_n.ExecuteReader();
            int flg = -1;
            while (rd.Read())
            {
                flg = 1 + 1;
            }
            conn.Close();
            if (flg > 0)
            {
                Label1.Visible = true;
                Label1.Text = "* Course already exists";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Label1.Visible = false;
                conn.Open();
                string query = "INSERT INTO Course (course_id,course_name,department,course_desc) VALUES ('" + txtbox_cid.Text + "','" + txtbox_name.Text + "','" + DropDownList2.SelectedItem.ToString() + "','" + txtbox_desc.Text + "')";
                SqlCommand com = new SqlCommand(query, conn);
                com.ExecuteNonQuery();
                conn.Close();
                conn.Open();
                query = "INSERT INTO Coursemapping (course_id,faculty_id) VALUES ('" + txtbox_cid.Text + "','"+ DropDownList1.SelectedValue.Trim() + "')";
                com = new SqlCommand(query, conn);
                com.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("CourseList.aspx");
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