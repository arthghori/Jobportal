using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal.job_seeker
{
    public partial class Employee_profile : System.Web.UI.Page
    {
        string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\admin\\Documents\\project\\job_portal\\App_Data\\jobportal.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null && Session["UserRole"].ToString() == "Jobseeker")
            {
                string username = Session["Username"].ToString();
                FetchJobseekerData(username);
                fujobseekerlogo.Visible = true;
                btnUploadLogo.Visible = true;
                btnUploadResume.Visible = true;
                fuResume.Visible = true;
                btnForgotPassword.Visible = true;
                btnEdit.Visible = true;
                btnAddSkill.Visible = true;
                ddlSkills.Visible = true;
                btnAddEducation.Visible = true;

                if (!IsPostBack)
                {
                    LoadAllSkills(); // Load skills dropdown
                    LoadSeekerSkills(); // Load seeker's current skills
                    LoadEducationDetails(); // Load education details

                }
            }
            else if (Session["Username"] != null && Session["UserRole"].ToString() == "Company")
            {
                if (Request.QueryString["seekerid"] != null)
                {
                    int seekerid = Convert.ToInt32(Request.QueryString["seekerid"]);
                    FetchJobseekerData(seekerid);

                    btnSave.Visible = false;
                    fujobseekerlogo.Visible = false;
                    btnUploadLogo.Visible = false;
                    btnUploadResume.Visible = false;
                    fuResume.Visible = false;
                    ddlSkills.Visible = false;
                    btnForgotPassword.Visible = false;
                    btnEdit.Visible = false;
                    btnAddSkill.Visible = false;
                    btnAddEducation.Visible = false;

                    if (!IsPostBack)
                    {
                        LoadSeekerSkills(seekerid); // Load skills for viewing
                        LoadEducationDetails(seekerid); // Load education for viewing

                    }
                }
            }
            else
            {
                Response.Redirect("~/auth/login_page.aspx");
            }

            if (!IsPostBack)
            {
                if (Request.QueryString["seekerid"] != null)
                {
                    int seekerid = Convert.ToInt32(Request.QueryString["seekerid"]);
                    LoadSeekerProfile(seekerid);
                }
            }
        }


        private void LoadSeekerProfile(int seekerid)
        {
            // Fetch job seeker data only if the current user has permission
            if (Session["Username"] != null && Session["UserRole"].ToString() == "Company")
            {
                // Load the data from the database
            }

        }
        private void FetchJobseekerData(string username)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM tbl_jobseeker WHERE username = @Username";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@Username", username);

                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();

                    // Load all fields
                    lblFirstName.Text = txtFirstName.Text = reader["firstname"].ToString();
                    lblLastName.Text = txtLastName.Text = reader["lastname"].ToString();
                    lblDetailUsername.Text = txtUsername.Text = reader["username"].ToString();
                    lblDetailemail.Text = txtEmail.Text = reader["email"].ToString();
                    lblDetailphone.Text = txtContact.Text = reader["phonenumber"].ToString();
                    lblDetailgender.Text = ddlGender.SelectedValue = reader["gender"].ToString();
                    lblDetaildbo.Text = txtDOB.Text = Convert.ToDateTime(reader["birthday"]).ToString("yyyy-MM-dd");
                    lblAddress.Text = txtAddress.Text = reader["addreess"].ToString();
                    lblState.Text = txtState.Text = reader["state"].ToString();
                    lblDetailcity.Text = txtCity.Text = reader["city"].ToString();
                    lblDetailexperience.Text = txtExperience.Text = reader["experience"].ToString();

                    // Load profile photo
                    if (!reader.IsDBNull(reader.GetOrdinal("profilephoto")))
                    {
                        byte[] imgData = (byte[])reader["profilephoto"];
                        string base64String = Convert.ToBase64String(imgData);
                        imgEmployeelogo.ImageUrl = "data:image/png;base64," + base64String;
                    }

                    // Load resume (convert to downloadable format)
                    if (!reader.IsDBNull(reader.GetOrdinal("resume")))
                    {
                        byte[] resumeData = (byte[])reader["resume"];
                        Session["ResumeData"] = resumeData;
                    }
                }
                else
                {
                    Response.Write("<script>alert('No data found for this user.');</script>");
                }
            }
        }

        //for the company 

        private void FetchJobseekerData(int seekerid)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM tbl_jobseeker WHERE seekerid = @seekerid";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@seekerid", seekerid);

                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();

                    // Load all fields into labels (readonly mode)
                    lblFirstName.Text = reader["firstname"].ToString();
                    lblLastName.Text = reader["lastname"].ToString();
                    lblDetailUsername.Text = reader["username"].ToString();
                    lblDetailemail.Text = reader["email"].ToString();
                    lblDetailphone.Text = reader["phonenumber"].ToString();
                    lblDetailgender.Text = reader["gender"].ToString();
                    lblDetaildbo.Text = Convert.ToDateTime(reader["birthday"]).ToString("yyyy-MM-dd");
                    lblAddress.Text = reader["addreess"].ToString();
                    lblState.Text = reader["state"].ToString();
                    lblDetailcity.Text = reader["city"].ToString();
                    lblDetailexperience.Text = reader["experience"].ToString();

                    // Load profile photo
                    if (!reader.IsDBNull(reader.GetOrdinal("profilephoto")))
                    {
                        byte[] imgData = (byte[])reader["profilephoto"];
                        string base64String = Convert.ToBase64String(imgData);
                        imgEmployeelogo.ImageUrl = "data:image/png;base64," + base64String;
                    }

                    // Load resume (convert to downloadable format)
                    if (!reader.IsDBNull(reader.GetOrdinal("resume")))
                    {
                        byte[] resumeData = (byte[])reader["resume"];
                        Session["ResumeData"] = resumeData;
                    }
                }
                else
                {
                    Response.Write("<script>alert('No data found for this jobseeker.');</script>");
                }
            }
        }

      


        protected void btnEdit_Click(object sender, EventArgs e)
        {
            // Hide labels, show text fields for editing
            lblFirstName.Visible = false;
            lblLastName.Visible = false;
            lblDetailUsername.Visible = false;
            lblDetailemail.Visible = false;
            lblDetailphone.Visible = false;
            lblDetailgender.Visible = false;
            lblDetaildbo.Visible = false;
            lblAddress.Visible = false;
            lblState.Visible = false;
            lblDetailcity.Visible = false;
            lblDetailexperience.Visible = false;

            txtFirstName.Visible = true;
            txtLastName.Visible = true;
            txtUsername.Visible = true;
            txtEmail.Visible = true;
            txtContact.Visible = true;
            ddlGender.Visible = true;
            txtDOB.Visible = true;
            txtAddress.Visible = true;
            txtState.Visible = true;
            txtCity.Visible = true;
            txtExperience.Visible = true;

            // Hide Edit button, show Save button
            btnEdit.Visible = false;
            btnSave.Visible = true;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string username = Session["Username"].ToString();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = @"UPDATE tbl_jobseeker 
                                SET firstname = @FirstName, lastname = @LastName, username = @NewUsername, 
                                    email = @Email, phonenumber = @Contact, gender = @Gender, 
                                    birthday = @DOB, addreess = @Address, state = @State, 
                                    city = @City, experience = @Experience 
                                WHERE username = @CurrentUsername";

                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
                cmd.Parameters.AddWithValue("@NewUsername", txtUsername.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Contact", txtContact.Text);
                cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                cmd.Parameters.AddWithValue("@DOB", txtDOB.Text);
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@State", txtState.Text);
                cmd.Parameters.AddWithValue("@City", txtCity.Text);
                cmd.Parameters.AddWithValue("@Experience", txtExperience.Text);
                cmd.Parameters.AddWithValue("@CurrentUsername", username);

                connection.Open();
                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // Update session with new username
                    Session["Username"] = txtUsername.Text;

                    Response.Write("<script>alert('Profile updated successfully!');</script>");

                    // Reload updated data
                    FetchJobseekerData(txtUsername.Text);

                    // Hide textboxes, show labels
                    txtFirstName.Visible = false;
                    txtLastName.Visible = false;
                    txtUsername.Visible = false;
                    txtEmail.Visible = false;
                    txtContact.Visible = false;
                    ddlGender.Visible = false;
                    txtDOB.Visible = false;
                    txtAddress.Visible = false;
                    txtState.Visible = false;
                    txtCity.Visible = false;
                    txtExperience.Visible = false;

                    lblFirstName.Visible = true;
                    lblLastName.Visible = true;
                    lblDetailUsername.Visible = true;
                    lblDetailemail.Visible = true;
                    lblDetailphone.Visible = true;
                    lblDetailgender.Visible = true;
                    lblDetaildbo.Visible = true;
                    lblAddress.Visible = true;
                    lblState.Visible = true;
                    lblDetailcity.Visible = true;
                    lblDetailexperience.Visible = true;

                    btnEdit.Visible = true;
                    btnSave.Visible = false;
                }
                else
                {
                    Response.Write("<script>alert('Update failed. Please try again.');</script>");
                }
            }

        }

        protected void btnUploadLogo_Click(object sender, EventArgs e)
        {
            if (fujobseekerlogo.HasFile)
            {
                // Get file extension and validate
                string fileExtension = Path.GetExtension(fujobseekerlogo.FileName).ToLower();
                string[] allowedExtensions = { ".jpg", ".jpeg", ".png", ".gif" };

                if (!allowedExtensions.Contains(fileExtension))
                {
                    Response.Write("<script>alert('Invalid file type! Only JPG, PNG, and GIF are allowed.');</script>");
                    return;
                }

                // Convert file to byte array
                byte[] imageBytes;
                using (BinaryReader br = new BinaryReader(fujobseekerlogo.PostedFile.InputStream))
                {
                    imageBytes = br.ReadBytes(fujobseekerlogo.PostedFile.ContentLength);
                }

                // Get logged-in user's username
                string username = Session["Username"].ToString();

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "UPDATE tbl_jobseeker SET profilephoto = @Logo WHERE username = @Username";
                    SqlCommand cmd = new SqlCommand(query, connection);
                    cmd.Parameters.AddWithValue("@Logo", imageBytes);
                    cmd.Parameters.AddWithValue("@Username", username);

                    connection.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        Response.Write("<script>alert('Profile picture updated successfully!');</script>");
                        FetchJobseekerData(username); // Reload updated image
                    }
                    else
                    {
                        Response.Write("<script>alert('Error updating profile picture.');</script>");
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('Please select an image to upload.');</script>");
            }
        }

        protected void btnDownloadResume_Click(object sender, EventArgs e)
        {
            if (Session["ResumeData"] != null)
            {
                byte[] resumeBytes = (byte[])Session["ResumeData"];
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment;filename=Resume.pdf");
                Response.BinaryWrite(resumeBytes);
                Response.End();
            }
        }

        protected void btnUploadResume_Click(object sender, EventArgs e)
        {
            if (fuResume.HasFile)
            {
                byte[] resumeBytes = fuResume.FileBytes;
                string username = Session["Username"].ToString();

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "UPDATE tbl_jobseeker SET resume = @Resume WHERE username = @Username";
                    SqlCommand cmd = new SqlCommand(query, connection);
                    cmd.Parameters.AddWithValue("@Resume", resumeBytes);
                    cmd.Parameters.AddWithValue("@Username", username);

                    connection.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Resume uploaded successfully!');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please select a resume to upload.');</script>");
            }
        }

        protected void btnForgotPassword_Click(object sender, EventArgs e)
        {
            string email = lblDetailemail.Text; // Get the email from label

            if (!string.IsNullOrEmpty(email))
            {
                Response.Redirect("~/auth/forgot_pass.aspx?email=" + email);
            }
            else
            {
                Response.Write("Email not available.");
            }
        }
 
       




        //extra
        protected void txtFirstName_TextChanged(object sender, EventArgs e)
        {

        }

        //skilllll 
        private void LoadAllSkills()
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT SkillID, SkillName FROM tbl_skill ORDER BY SkillName";
                SqlCommand cmd = new SqlCommand(query, conn);

                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                ddlSkills.DataSource = dt;
                ddlSkills.DataTextField = "SkillName";
                ddlSkills.DataValueField = "SkillID";
                ddlSkills.DataBind();

                // Add default item
                ddlSkills.Items.Insert(0, new ListItem("-- Select Skill --", "0"));
            }
        }

        private void LoadSeekerSkills(int? seekerId = null)
        {
            int currentSeekerId;

            if (seekerId.HasValue)
            {
                currentSeekerId = seekerId.Value;
            }
            else
            {
                // Get current logged-in seeker's ID
                string username = Session["Username"].ToString();
                currentSeekerId = GetSeekerIdByUsername(username);
            }

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = @"
            SELECT s.SkillID, s.SkillName 
            FROM tbl_skill s
            INNER JOIN tbl_seekerskill ss ON s.SkillID = ss.skillid
            WHERE ss.seekerid = @SeekerId
            ORDER BY s.SkillName";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@SeekerId", currentSeekerId);

                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    rptSkills.DataSource = dt;
                    rptSkills.DataBind();
                    lblNoSkills.Visible = false;
                }
                else
                {
                    rptSkills.DataSource = null;
                    rptSkills.DataBind();
                    lblNoSkills.Visible = true;
                }
            }
        }

        private int GetSeekerIdByUsername(string username)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT seekerid FROM tbl_jobseeker WHERE username = @Username";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Username", username);

                conn.Open();
                object result = cmd.ExecuteScalar();
                return result != null ? Convert.ToInt32(result) : 0;
            }
        }

        protected void btnAddSkill_Click(object sender, EventArgs e)
        {
            if (ddlSkills.SelectedValue != "0")
            {
                int skillId = Convert.ToInt32(ddlSkills.SelectedValue);
                string username = Session["Username"].ToString();
                int seekerId = GetSeekerIdByUsername(username);

                if (!SkillExistsForSeeker(seekerId, skillId))
                {
                    AddSkillToSeeker(seekerId, skillId);
                    LoadSeekerSkills();
                    ddlSkills.SelectedIndex = 0; // Reset dropdown
                }
                else
                {
                    Response.Write("<script>alert('This skill is already added to your profile.');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please select a skill to add.');</script>");
            }
        }

        private bool SkillExistsForSeeker(int seekerId, int skillId)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM tbl_seekerskill WHERE seekerid = @SeekerId AND skillid = @SkillId";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@SeekerId", seekerId);
                cmd.Parameters.AddWithValue("@SkillId", skillId);

                conn.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                return count > 0;
            }
        }

        private void AddSkillToSeeker(int seekerId, int skillId)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO tbl_seekerskill (seekerid, skillid) VALUES (@SeekerId, @SkillId)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@SeekerId", seekerId);
                cmd.Parameters.AddWithValue("@SkillId", skillId);

                conn.Open();
                cmd.ExecuteNonQuery();
            }

            
        }

        protected void rptSkills_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "RemoveSkill")
            {
                int skillId = Convert.ToInt32(e.CommandArgument);
                string username = Session["Username"].ToString();
                int seekerId = GetSeekerIdByUsername(username);

                RemoveSkillFromSeeker(seekerId, skillId);
                LoadSeekerSkills();
            }
        }

        private void RemoveSkillFromSeeker(int seekerId, int skillId)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM tbl_seekerskill WHERE seekerid = @SeekerId AND skillid = @SkillId";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@SeekerId", seekerId);
                cmd.Parameters.AddWithValue("@SkillId", skillId);

                conn.Open();
                cmd.ExecuteNonQuery();
            }

         }

        // Education Methods
        private void LoadEducationDetails(int? seekerId = null)
        {
            int currentSeekerId;

            if (seekerId.HasValue)
            {
                currentSeekerId = seekerId.Value;
            }
            else
            {
                // Get current logged-in seeker's ID
                string username = Session["Username"].ToString();
                currentSeekerId = GetSeekerIdByUsername(username);
            }

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = @"
            SELECT educationid, university, degree, major, graduationyear, gpa 
            FROM tbl_educationdetails 
            WHERE seekerid = @SeekerId 
            ORDER BY graduationyear DESC";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@SeekerId", currentSeekerId);

                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    rptEducation.DataSource = dt;
                    rptEducation.DataBind();
                    lblNoEducation.Visible = false;
                }
                else
                {
                    rptEducation.DataSource = null;
                    rptEducation.DataBind();
                    lblNoEducation.Visible = true;
                }
            }
        }

        protected void btnAddEducation_Click(object sender, EventArgs e)
        {
            // Redirect to education details page
            Response.Redirect("~/job_seeker/Education_detail.aspx");
        }

        protected void rptEducation_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "RemoveEducation")
            {
                int educationId = Convert.ToInt32(e.CommandArgument);
                string username = Session["Username"].ToString();
                int seekerId = GetSeekerIdByUsername(username);

                RemoveEducation(seekerId, educationId);
                LoadEducationDetails();

            }
        }

        private void RemoveEducation(int seekerId, int educationId)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM tbl_educationdetails WHERE educationid = @EducationId AND seekerid = @SeekerId";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@EducationId", educationId);
                cmd.Parameters.AddWithValue("@SeekerId", seekerId);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}