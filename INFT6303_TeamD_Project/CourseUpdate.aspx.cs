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
    public partial class CourseUpdate : System.Web.UI.Page
    {
        public string courseId;
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
                bool hasKeys = Request.QueryString.HasKeys();
                if (hasKeys)
                {
                    courseId = Request.QueryString["id"];
                    DropDownList1.Enabled = true;
                    if (!IsPostBack)
                        LoadById(courseId);
                }
            }
        }

        protected void LoadById(string id)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                conn.Open();
                string qry = "select * from Course where course_id='" + id + "'";
                SqlCommand cmd = new SqlCommand(qry, conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    txtbox_cid.Text = id;
                    txtbox_name.Text = sdr.GetValue(2).ToString();
                    txtbox_dep.Text = sdr.GetValue(3).ToString();
                    txtbox_desc.Text = sdr.GetValue(4).ToString().Trim();
                }
                txtbox_dep.Attributes["readonly"] = "readonly";
                txtbox_cid.Attributes["readonly"] = "readonly";
                conn.Close();
                LoadFaculty(txtbox_dep.Text);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void LoadFaculty(string department) 
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                conn.Open();
                string qry = "SELECT * FROM Faculty WHERE department='" + department.Trim() + "'";
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
            string courseId = Request.QueryString["id"];
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            String qry = "UPDATE Course SET course_name='" + txtbox_name.Text.ToString() + "',course_desc='" + txtbox_desc.Text.ToString() + "'WHERE course_id='" + courseId.Trim() + "'";
            SqlCommand qry_n = new SqlCommand(qry, conn);
            qry_n.ExecuteNonQuery();
            conn.Close();
            conn.Open();
            qry = "UPDATE Coursemapping SET faculty_id = '" + DropDownList1.SelectedValue.ToString() + "'WHERE course_id='" + courseId.Trim() + "'";
            qry_n = new SqlCommand(qry, conn);
            qry_n.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("CourseList.aspx");
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