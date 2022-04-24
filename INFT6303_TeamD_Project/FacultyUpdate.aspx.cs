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
    public partial class FacultyUpdate : System.Web.UI.Page
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
                        string qry = "select * from Faculty where Faculty_id='" + Session["New"].ToString().Replace(" ", "") + "'";
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            String qry;
            if (String.IsNullOrEmpty(txtbox_password.Text))
                qry = "UPDATE Faculty SET name='" + txtbox_name.Text.ToString() + "',address='" + txtbox_address.Text.ToString() + "',phone_no = '" + txtbox_phnno.Text.ToString() + "'WHERE faculty_id='" + Session["new"].ToString().Replace(" ", "") + "'";
            else
                qry = "UPDATE Faculty SET name='" + txtbox_name.Text.ToString() + "',address='" + txtbox_address.Text.ToString() + "',phone_no = '" + txtbox_phnno.Text.ToString() + "',password='" + txtbox_password.Text.ToString() + "'WHERE faculty_id='" + Session["new"].ToString().Replace(" ", "") + "'";
            SqlCommand qry_n = new SqlCommand(qry, conn);
            qry_n.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("FacultyProfile.aspx");
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