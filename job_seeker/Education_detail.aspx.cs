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
                Response.Redirect("~/login_page.aspx");
            }
        }

        protected void btnSubmittt_Click(object sender, EventArgs e)
        {
            //if (Session["Username"] == null)
            //{
            //    Response.Redirect("~/login_page.aspx"); // Redirect if session data is missing
            //    return;
            //}

            // Retrieve the username from session
            string username = Session["Username"].ToString();
            string seekerId = GetSeekerId(username); // Get seekerid from database

            if (string.IsNullOrEmpty(seekerId))
            {
                Response.Write("Error fetching user details. Please log in again.");
                // lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Retrieve user input
            string university = ddlUniversity.SelectedValue;
            string field = ddlField.SelectedValue;
            string degree = ddlDegree.SelectedValue;
            string graduationYear = ddlYear.SelectedValue;
            string ugpa = txtUgpa.Text;

            // Validate inputs
            if (university == "---Select University" || field == "---Select Your Course" || degree == "---Select Degree")
            {
                Response.Write("Please select all required fields.");
                // lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Database connection
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
                        cmd.Parameters.AddWithValue("@gpa", ugpa);

                        conn.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Redirect to profile page after successful insertion
                            Response.Redirect("~/Employee/Employee_profile.aspx");
                        }
                        else
                        {
                            Response.Write("Error inserting data. Please try again.");
                            //lblMessage.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                //  lblMessage.Text = "Database Error: " + ex.Message;
                //lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        private string GetSeekerId(string username)
        {
            string seekerId = "";
            string connString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

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
            return seekerId;
        }
    }
}