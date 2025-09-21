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
                hlForgot.NavigateUrl = "~/auth/forgot_pass.aspx";
            }
        }

        int companyid;

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtEmail.Text.Trim();
            string password = txtPass.Text.Trim();

            // Admin Login
            if (ValidateLogin("tbl_admin", username, password))
            {
                Session["Username"] = username;
                Session["UserRole"] = "Admin";
                Response.Redirect("~/admin/admin_mainpage.aspx");
                return;
            }

            // Jobseeker Login
            if (ValidateLogin("tbl_jobseeker", username, password))
            {
                Session["Username"] = username;
                Session["UserRole"] = "Jobseeker";
                Response.Redirect("~/job_seeker/jobseeker_main.aspx");
                return;
            }

            // Company Login
            if (ValidateLogin("tbl_company", username, password, out companyid))
            {
                string status = GetCompanyStatus(username, password, out companyid);

                switch (status)
                {
                    case null:
                        ShowAlert("Invalid username or password.");
                        break;
                    case "Inactive":
                        ShowAlert("Company account is inactive.");
                        break;
                    case "Active":
                        Session["Companyid"] = companyid;
                        Session["Username"] = username;
                        Session["UserRole"] = "Company";
                        Response.Redirect("~/company/company_main.aspx");
                        break;
                    default:
                        ShowAlert("Invalid company status.");
                        break;
                }

                return;
            }

            // If none matched
            ShowAlert("Invalid username or password.");
        }

        private void ShowAlert(string message)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", $"alert('{message}');", true);
        }

        private bool ValidateLogin(string tableName, string username, string password, out int id)
        {
            id = 0;
            bool isValid = false;

            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\jobportal.mdf;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = $"SELECT * FROM {tableName} WHERE username = @username AND password = @password";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);

                connection.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    isValid = true;

                    switch (tableName)
                    {
                        case "tbl_company":
                            id = Convert.ToInt32(dr["companyid"]);
                            break;
                        case "tbl_jobseeker":
                            id = Convert.ToInt32(dr["seekerid"]);
                            break;
                        case "tbl_admin":
                            id = Convert.ToInt32(dr["adminid"]);
                            break;
                    }
                }
                dr.Close();
            }

            return isValid;
        }

        private bool ValidateLogin(string tableName, string username, string password)
        {
            return ValidateLogin(tableName, username, password, out _);
        }

        private string GetCompanyStatus(string username, string password, out int companyId)
        {
            companyId = 0;
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\jobportal.mdf;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT companyid, status FROM tbl_company WHERE username=@username AND password=@password";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);

                connection.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    companyId = Convert.ToInt32(dr["companyid"]);
                    string status = dr["status"].ToString(); // Active or Inactive
                    dr.Close();
                    return status;
                }
                dr.Close();
            }

            return null; // Invalid login
        }
    }
}