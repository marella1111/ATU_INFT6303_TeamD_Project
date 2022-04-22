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
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    try
                    {
                        conn.Open();
                        string query = "select * from Course";
                        SqlCommand cmd = new SqlCommand(query, conn);

                        DropDownList1.DataTextField = "course_name";
                        DropDownList1.DataValueField = "course_id";
                        DropDownList1.DataSource = cmd.ExecuteReader();
                        DropDownList1.DataBind();


                        conn.Close();
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                }
            }
        }

        protected void Btn_submit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qry = "SELECT * FROM Feedback WHERE student_id='" + Session["New"].ToString().Replace(" ","") + "'AND course_id='" + DropDownList1.SelectedValue + "'";
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
                string query = "INSERT INTO Feedback (student_id,course_id,q1,q2,q3,q4,q5) VALUES ('" + Session["New"].ToString().Replace(" ","") + "','" + DropDownList1.SelectedValue + "','" + RadioButtonList1.SelectedValue + "','" + RadioButtonList2.SelectedValue + "','" + RadioButtonList3.SelectedValue + "','" + RadioButtonList4.SelectedValue + "','" + RadioButtonList5.SelectedValue + "')";
                SqlCommand com = new SqlCommand(query, conn);
                com.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Student.aspx");
            }
        }

    }
}