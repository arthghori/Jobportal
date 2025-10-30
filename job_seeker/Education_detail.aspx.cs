using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal.job_seeker
{
    public partial class Education_detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\job_portel\\App_Data\\jobportal.mdf;Integrated Security=True";

            if (Session["Username"] != null && Session["UserRole"].ToString() == "Jobseeker")
            {
                string username = Session["Username"].ToString();

            }
            else
            {
                Response.Redirect("~/auth/login_page.aspx");
            }
        }

        protected void btnSubmittt_Click(object sender, EventArgs e)
        {
            // Ensure form is valid before processing
            if (!Page.IsValid)
            {
                lblMessage.Text = "Please fill in all required fields correctly.";
                lblMessage.CssClass = "error-message";
                return;
            }

            // Retrieve username from session
            string username = Session["Username"].ToString();
            string seekerId = GetSeekerId(username);

            if (string.IsNullOrEmpty(seekerId))
            {
                lblMessage.Text = "Error fetching user details. Please log in again.";
                lblMessage.CssClass = "error-message";
                return;
            }

            // Retrieve form inputs
            string university = ddlUniversity.SelectedValue;
            string field = ddlField.SelectedValue;
            string degree = ddlDegree.SelectedValue;
            string graduationYear = ddlYear.SelectedValue;
            string cgpa = txtUgpa.Text;

            // Database connection and insertion
            string connString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            try
            {
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    string query = "INSERT INTO tbl_educationdetails (seekerid, university, degree, major, graduationyear, gpa) " +
                                   "VALUES (@seekerid, @university, @degree, @major, @graduationyear, @gpa)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@seekerid", seekerId);
                        cmd.Parameters.AddWithValue("@university", university);
                        cmd.Parameters.AddWithValue("@degree", degree);
                        cmd.Parameters.AddWithValue("@major", field);
                        cmd.Parameters.AddWithValue("@graduationyear", graduationYear);
                        cmd.Parameters.AddWithValue("@gpa", cgpa);

                        conn.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            lblMessage.Text = "Education details added successfully!";
                            lblMessage.CssClass = "success-message";
                            // Redirect to profile page after a short delay or immediately
                            Response.Redirect("~/job_seeker/Employee_profile.aspx");
                        }
                        else
                        {
                            lblMessage.Text = "Error inserting data. Please try again.";
                            lblMessage.CssClass = "error-message";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the exception (in a real app, use logging framework)
                lblMessage.Text = "An error occurred while saving your details. Please try again later.";
                lblMessage.CssClass = "error-message";
                // Optionally: System.Diagnostics.Debug.WriteLine(ex.Message);
            }
        }

        private string GetSeekerId(string username)
        {
            string seekerId = null;
            string connString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            try
            {
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    string query = "SELECT seekerid FROM tbl_jobseeker WHERE username = @username";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@username", username);
                        conn.Open();
                        object result = cmd.ExecuteScalar();
                        if (result != null)
                        {
                            seekerId = result.ToString();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle database errors gracefully
                // System.Diagnostics.Debug.WriteLine(ex.Message);
            }

            return seekerId;
        }
    }
}
