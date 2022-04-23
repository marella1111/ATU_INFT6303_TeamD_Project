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
    public partial class StudentUpdate : System.Web.UI.Page
    {
        public string password = "";
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
                        string qry = "select * from Student where student_id='" + Session["New"].ToString().Replace(" ","") + "'";
                        SqlCommand cmd = new SqlCommand(qry, conn);
                        SqlDataReader sdr = cmd.ExecuteReader();
                        if (sdr.Read())
                        {
                            txtbox_tno.Text = sdr.GetValue(1).ToString();
                            txtbox_name.Text = sdr.GetValue(2).ToString();
                            txtbox_email.Text = sdr.GetValue(3).ToString();
                            txtbox_address.Text = sdr.GetValue(4).ToString();
                            txtbox_phnno.Text = sdr.GetValue(5).ToString();
                            DropDownList1.SelectedValue = sdr.GetValue(6).ToString().Replace(" ", "");
                            TextBox1.Text = sdr.GetValue(7).ToString();
                        }
                        txtbox_tno.Attributes["readonly"] = "readonly";
                        TextBox1.Attributes["readonly"] = "readonly";
                        txtbox_email.Attributes["readonly"] = "readonly";
                        DropDownList1.Enabled = false;
                        conn.Close();
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                }
            }

        }

     /*   private string getpassword()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qry = "select * from Student where student_id='" + Session["New"].ToString().Replace(" ", "") + "'";
            SqlCommand cmd = new SqlCommand(qry, conn);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                password = rd["password"].ToString().Replace(" ", "");
            }
            conn.Close();
            return password;
        }*/

        protected void Button1_Click(object sender, EventArgs e)
        {
           // if (String.Equals(getpassword(), txtbox_oldpassword.Text.ToString().Replace(" ", "")))
            //{
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                String qry;
                if (String.IsNullOrEmpty(txtbox_password.Text))
                    qry = "UPDATE Student SET name='" + txtbox_name.Text.ToString() + "',address='" + txtbox_address.Text.ToString() +"',phone_no = '" + txtbox_phnno.Text.ToString()+ "'WHERE student_id='" + Session["new"].ToString().Replace(" ","") + "'";
                else
                    qry = "UPDATE Student SET name='" + txtbox_name.Text.ToString() + "',address='" + txtbox_address.Text.ToString() + "',phone_no = '" + txtbox_phnno.Text.ToString() + "',password='" + txtbox_password.Text.ToString()+ "'WHERE student_id='" + Session["new"].ToString().Replace(" ", "") + "'";
                SqlCommand qry_n = new SqlCommand(qry, conn);
                qry_n.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("StudentProfile.aspx");
           /* }
            else
            {
                Response.Write("Enter correct password");
            }*/
        }
    }
}