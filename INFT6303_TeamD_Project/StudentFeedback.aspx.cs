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
    public partial class StudentFeedback : System.Web.UI.Page
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
                if (!IsPostBack)
                {
                        DropDownList1.DataSource = Session["Courses"].ToString().Split(',');
                        DropDownList1.DataBind();
                }
            }
        }

        protected String getCourseId(String courseName)
        {
            String course_id = "";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qry = "SELECT * FROM Course WHERE course_name='" + courseName.Trim() + "'";
            SqlCommand qry_n = new SqlCommand(qry, conn);
            SqlDataReader rd = qry_n.ExecuteReader();
            if (rd.Read())
                course_id = rd.GetValue(1).ToString().Trim();
            conn.Close();
            return course_id;
        }

        protected void Btn_submit_Click(object sender, EventArgs e)
        {
            String courseId = getCourseId(DropDownList1.SelectedValue);
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qry = "SELECT * FROM Feedback WHERE student_id='" + Session["New"].ToString().Replace(" ","") + "'AND course_id='" + courseId + "'";
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
                Label1.Text = "* Feedback already submitted for this course";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Label1.Visible = false;
                conn.Open();
                string query = "INSERT INTO Feedback (student_id,course_id,q1,q2,q3,q4,q5) VALUES ('" + Session["New"].ToString().Replace(" ","") + "','" + courseId + "','" + RadioButtonList1.SelectedValue + "','" + RadioButtonList2.SelectedValue + "','" + RadioButtonList3.SelectedValue + "','" + RadioButtonList4.SelectedValue + "','" + RadioButtonList5.SelectedValue + "')";
                SqlCommand com = new SqlCommand(query, conn);
                com.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Student.aspx");
            }
        }
    }
}