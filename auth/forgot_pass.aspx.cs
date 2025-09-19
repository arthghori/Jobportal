using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal.auth
{
    public partial class forgot_pass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Request.QueryString["email"] != null)
                {
                    txtEmail.Text = Request.QueryString["email"];
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string newPassword = txtNewPassword.Text.Trim();
            string confirmPassword = txtConfirmPassword.Text.Trim();

            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(newPassword) || string.IsNullOrEmpty(confirmPassword))
            {
                lblMessage.Text = "⚠ All fields are required.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (newPassword != confirmPassword)
            {
                lblMessage.Text = "❌ New Password and Confirm Password do not match.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            bool emailExists = false;
            bool passwordUpdated = false;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string[] tables = { "tbl_admin", "tbl_company", "tbl_jobseeker" };

                // ✅ **Step 1: Check if Email Exists in Any Table**
                foreach (string table in tables)
                {
                    string checkEmailQuery = $"SELECT COUNT(*) FROM {table} WHERE email = @email";
                    using (SqlCommand checkCmd = new SqlCommand(checkEmailQuery, conn))
                    {
                        checkCmd.Parameters.AddWithValue("@email", email);
                        int count = Convert.ToInt32(checkCmd.ExecuteScalar());

                        if (count > 0)
                        {
                            emailExists = true;
                            break; // Exit loop once found
                        }
                    }
                }

                if (!emailExists)
                {
                    lblMessage.Text = "❌ Email not found in our records!";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    return;
                }

                // ✅ **Step 2: Update Password if Email Exists**
                foreach (string table in tables)
                {
                    string query = $"UPDATE {table} SET password = @password WHERE email = @email";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@password", newPassword);
                        cmd.Parameters.AddWithValue("@email", email);

                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            passwordUpdated = true;
                        }
                    }
                }

                if (passwordUpdated)
                {
                    lblMessage.Text = "✅ Password updated successfully!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    System.Threading.Thread.Sleep(3000); // Delays execution for 3 seconds
                    Response.Redirect("~/auth/login_page.aspx");
                }
                else
                {
                    lblMessage.Text = "❌ Email not found in our records!";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }


    }
}