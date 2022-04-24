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
    public partial class FacultyRegistration : System.Web.UI.Page
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
                Label3.Text = Session["Role"].ToString();
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
                ListBox1.DataTextField = "course_name";
                ListBox1.DataValueField = "course_name";
                ListBox1.DataSource = cmd.ExecuteReader();
                ListBox1.DataBind();
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
            string qry = "SELECT * FROM Faculty WHERE email_id='" + txtbox_email.Text + "'OR faculty_id='" + txtbox_tno.Text + "'";
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
                Label1.Text = "* Email address or Faculty already exists";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label2.Visible = true;
                Label2.Text = "* Email address or Faculty already exists";
                Label2.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Label1.Visible = false;
                Label2.Visible = false;
                conn.Open();
                var selected = ListBox1.GetSelectedIndices().ToList();
                var selectedValues = (from c in selected
                                      select ListBox1.Items[c].Value.Replace(" ", "")).ToList();
                string result = string.Join(",", selectedValues);
                string password = txtbox_name.Text.Substring(0,3)+"@"+ txtbox_tno.Text.Substring(txtbox_tno.Text.Length - 3);
                string query = "INSERT INTO Faculty (faculty_id,name,email_id,address,phone_no,department,courses_tought,password) VALUES ('" + txtbox_tno.Text + "','" + txtbox_name.Text + "','" + txtbox_email.Text + "','" + txtbox_address.Text + "','" + txtbox_phnno.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + result + "','" + password.Trim() + "')";
                SqlCommand com = new SqlCommand(query, conn);
                com.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Admin.aspx");
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