using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal.admin
{
    public partial class admin_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null && Session["UserRole"].ToString() == "Admin")
                {
                    string username = Session["Username"].ToString();
                    FetchAdminData(username);
                }
                else
                {
                    Response.Redirect("~/login_page.aspx");
                }
            }
        }
        private void FetchAdminData(string username)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\job_portel\\App_Data\\jobportal.mdf;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM tbl_admin WHERE Username = @Username";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@Username", username);

                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();
                    lblUsername.Text = reader["username"].ToString();
                    lblEmail.Text = reader["email"].ToString();
                    lblContactno.Text = reader["contactno"].ToString();

                    // Populate textboxes (hidden by default)
                    txtUsername.Text = reader["username"].ToString();
                    txtEmail.Text = reader["email"].ToString();
                    txtContact.Text = reader["contactno"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('No data found for this user.');</script>");
                }
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            // Hide labels and show textboxes for editing
            lblUsername.Visible = false;
            lblEmail.Visible = false;
            lblContactno.Visible = false;

            txtUsername.Visible = true;
            txtEmail.Visible = true;
            txtContact.Visible = true;

            // Hide Edit button, show Save button
            btnEdit.Visible = false;
            btnSave.Visible = true;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string currentUsername = Session["Username"].ToString();
            string newUsername = txtUsername.Text;
            string newEmail = txtEmail.Text;
            string newContact = txtContact.Text;

            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\job_portel\\App_Data\\jobportal.mdf;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "UPDATE tbl_admin SET username = @NewUsername, email = @Email, contactno = @Contact WHERE username = @CurrentUsername";
                SqlCommand cmd = new SqlCommand(query, connection);

                cmd.Parameters.AddWithValue("@NewUsername", newUsername);
                cmd.Parameters.AddWithValue("@Email", newEmail);
                cmd.Parameters.AddWithValue("@Contact", newContact);
                cmd.Parameters.AddWithValue("@CurrentUsername", currentUsername);

                connection.Open();
                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // Update Session with New Username
                    Session["Username"] = newUsername;

                    Response.Write("<script>alert('Profile updated successfully!');</script>");

                    // Update Labels
                    lblUsername.Text = newUsername;
                    lblEmail.Text = newEmail;
                    lblContactno.Text = newContact;

                    // Switch back to display mode
                    lblUsername.Visible = true;
                    lblEmail.Visible = true;
                    lblContactno.Visible = true;

                    txtUsername.Visible = false;
                    txtEmail.Visible = false;
                    txtContact.Visible = false;

                    btnEdit.Visible = true;
                    btnSave.Visible = false;
                }
                else
                {
                    Response.Write("<script>alert('Update failed. Please try again.');</script>");
                }
            }
        }

        protected void btnForgotPassword_Click(object sender, EventArgs e)
        {
            string email = lblEmail.Text; // Get the email from label

            if (!string.IsNullOrEmpty(email))
            {
                Response.Redirect("forgot_pass.aspx?email=" + email);
            }
            else
            {
                Response.Write("Email not available.");
            }
        }
    }
}