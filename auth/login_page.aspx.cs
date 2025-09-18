using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal.auth
{
    public partial class login_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                hlForgot.NavigateUrl = $"~/auth/forgot_pass.aspx";

            }
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {

            string username = txtEmail.Text;
            string password = txtPass.Text;

            // Check Admin Login
            if (ValidateLogin("tbl_admin", username, password))
            {
                Session["Username"] = username;
                Session["UserRole"] = "Admin";
                Response.Redirect("~/admin_mainpage.aspx");
            }
            // Check Jobseeker Login
            else if (ValidateLogin("tbl_jobseeker", username, password))
            {
                Session["Username"] = username;
                Session["UserRole"] = "Jobseeker";
                Response.Redirect("~/Job seeker dashboard/jobseeker_main.aspx");
            }
            // Check Company Login
            else if (ValidateLogin("tbl_company", username, password))
            {
                Session["Username"] = username;
                Session["UserRole"] = "Company";
                Response.Redirect("~/company_main.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid username or password');</script>");
            }
        }

        private bool ValidateLogin(string tableName, string username, string password)
        {
            bool isValid = false;

            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\job_portel\\App_Data\\jobportal.mdf;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = $"SELECT COUNT(1) FROM {tableName} WHERE username = @username AND password = @password";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);

                connection.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                isValid = (count > 0);
            }

            return isValid;
        }

    }
}

