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
        string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\job_portel\\App_Data\\jobportal.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null && Session["UserRole"].ToString() == "Jobseeker")
            {
                string username = Session["Username"].ToString();
                FetchJobseekerData(username);
                LoadAvailableSkills(); // Load skills from tbl_skill
                LoadUserSkills();      // Load user's skills from tbl_seekerskill
                LoadEducationDetails(); // Refresh the grid
                fujobseekerlogo.Visible = true;
                btnUploadLogo.Visible = true;
                btnUploadResume.Visible = true;
                fuResume.Visible = true;
                btnForgotPassword.Visible = true;
                btnEdit.Visible = true;
                btnAddSkill.Visible = true;
                btnManageEducation.Visible = true;
                ddlSkills.Visible = true;

            }
            else if (Session["Username"] != null && Session["UserRole"].ToString() == "Company")
            {
                //string username = Session["Username"].ToString();
                //FetchJobseekerData(username);

                if (Request.QueryString["seekerid"] != null)
                {
                    int seekerid = Convert.ToInt32(Request.QueryString["seekerid"]);
                    FetchJobseekerData(seekerid);
                    LoadUserSkillscom(seekerid); // Load skills for jobseeker profile
                    LoadEducationDetails(seekerid); // Load education details for jobseeker profile

                    btnSave.Visible = false;
                    fujobseekerlogo.Visible = false;
                    btnUploadLogo.Visible = false;
                    btnUploadResume.Visible = false;
                    fuResume.Visible = false;
                    ddlSkills.Visible = false;
                    btnForgotPassword.Visible = false;
                    btnEdit.Visible = false;
                    btnAddSkill.Visible = false;
                    btnManageEducation.Visible = false;
                }
            }
            else
            {
                Response.Redirect("~/login_page.aspx");
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


        private void LoadAvailableSkills()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT SkillID, SkillName FROM tbl_skill";
                SqlCommand cmd = new SqlCommand(query, connection);
                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                ddlSkills.DataSource = reader;
                ddlSkills.DataTextField = "SkillName";
                ddlSkills.DataValueField = "SkillID";
                ddlSkills.DataBind();
            }
        }

        // **2️⃣ Load User's Skills from tbl_seekerskill**
        private void LoadUserSkills()
        {
            string username = Session["Username"].ToString();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = @"
                    SELECT s.SkillName, ss.seekerskillid
                    FROM tbl_seekerskill ss
                    INNER JOIN tbl_skill s ON ss.skillid = s.SkillID
                    WHERE ss.seekerid = (SELECT seekerid FROM tbl_jobseeker WHERE username = @Username)";

                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@Username", username);
                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                rptSkills.DataSource = reader;
                rptSkills.DataBind();
            }
        }

        //for the company

        private void LoadUserSkillscom(int seekerid)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = @"
            SELECT s.SkillName, ss.seekerskillid
            FROM tbl_seekerskill ss
            INNER JOIN tbl_skill s ON ss.skillid = s.SkillID
            WHERE ss.seekerid = @SeekerID";

                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@SeekerID", seekerid);
                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                rptSkills.DataSource = reader;
                rptSkills.DataBind();
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
                Response.Redirect("~/forgot_pass.aspx?email=" + email);
            }
            else
            {
                Response.Write("Email not available.");
            }
        }

        //skil for use 
        protected void btnAddSkill_Click(object sender, EventArgs e)
        {
            string username = Session["Username"].ToString();
            int skillId = int.Parse(ddlSkills.SelectedValue);

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = @"
                    INSERT INTO tbl_seekerskill (seekerid, skillid) 
                    VALUES ((SELECT seekerid FROM tbl_jobseeker WHERE username = @Username), @SkillID)";

                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@SkillID", skillId);

                connection.Open();
                cmd.ExecuteNonQuery();
            }

            LoadUserSkills(); // Refresh user skills
        }

        protected void rptSkills_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "RemoveSkill")
            {
                int seekerskillId = Convert.ToInt32(e.CommandArgument);
                RemoveSkill(seekerskillId);
            }
        }

        private void RemoveSkill(int seekerskillId)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\job_portel\\App_Data\\jobportal.mdf;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM tbl_seekerskill WHERE seekerskillid = @seekerskillid";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@seekerskillid", seekerskillId);

                connection.Open();
                cmd.ExecuteNonQuery();
            }

            LoadUserSkills(); // Reload the skills to update the UI
        }

        protected void btnRemoveSkill_Click(object sender, EventArgs e)
        {
            int seekerskillid = int.Parse((sender as Button).CommandArgument);

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM tbl_seekerskill WHERE seekerskillid = @SeekerskillID";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@SeekerskillID", seekerskillid);

                connection.Open();
                cmd.ExecuteNonQuery();
            }

            LoadUserSkills(); // Refresh user skills
        }



        //education
        private void LoadEducationDetails()
        {

            string username = Session["username"] as string;
            if (string.IsNullOrEmpty(username))
            {
                Response.Redirect("Login.aspx");
                return;
            }

            string connStr = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                // Get seekerid using username
                string seekerQuery = "SELECT seekerid FROM tbl_jobseeker WHERE username = @username";
                SqlCommand seekerCmd = new SqlCommand(seekerQuery, conn);
                seekerCmd.Parameters.AddWithValue("@username", username);

                object result = seekerCmd.ExecuteScalar();
                if (result == null)
                {
                    Response.Write("User not found!");
                    return;
                }

                int seekerid = Convert.ToInt32(result);

                // Get education details using seekerid
                string eduQuery = "SELECT educationid, university, degree, major, graduationyear, gpa FROM tbl_educationdetails WHERE seekerid = @seekerid";
                SqlDataAdapter da = new SqlDataAdapter(eduQuery, conn);
                da.SelectCommand.Parameters.AddWithValue("@seekerid", seekerid);

                DataTable dt = new DataTable();
                da.Fill(dt);

                gvEducation.DataSource = dt;
                gvEducation.DataBind();
            }
        }

        //for the company

        private void LoadEducationDetails(int seekerid)
        {
            string connStr = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                // Get education details using seekerid
                string eduQuery = @"
            SELECT educationid, university, degree, major, graduationyear, gpa 
            FROM tbl_educationdetails 
            WHERE seekerid = @seekerid";

                SqlDataAdapter da = new SqlDataAdapter(eduQuery, conn);
                da.SelectCommand.Parameters.AddWithValue("@seekerid", seekerid);

                DataTable dt = new DataTable();
                da.Fill(dt);

                gvEducation.DataSource = dt;
                gvEducation.DataBind();
            }
        }

        protected void btnManageEducation_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Employee/Education_detail.aspx"); // Change the filename if different

        }

        protected void gvEducation_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string username = Session["Username"] as string;
            if (string.IsNullOrEmpty(username))
            {
                Response.Redirect("~/login_page.aspx");
                return;
            }

            // Get the selected education ID
            int educationid = Convert.ToInt32(gvEducation.DataKeys[e.RowIndex].Value);

            string connStr = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                // Delete education record where seekerid matches the logged-in user
                string deleteQuery = "DELETE FROM tbl_educationdetails WHERE educationid = @educationid";
                using (SqlCommand deleteCmd = new SqlCommand(deleteQuery, conn))
                {
                    deleteCmd.Parameters.AddWithValue("@educationid", educationid);
                    deleteCmd.ExecuteNonQuery();
                }
            }

            // Refresh education list after deletion
            LoadEducationDetails();

        }




        //extra
        protected void txtFirstName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void gvEducation_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //for company 

        protected void gvEducation_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton lnkRemove = (LinkButton)e.Row.FindControl("lnkRemove");

                int rowSeekerID = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "seekerid"));
                int loggedInSeekerID = Convert.ToInt32(Session["SeekerID"] ?? "0");
                string userRole = Session["UserRole"]?.ToString() ?? "";

                // Hide "Remove" button if the user is a company or another job seeker
                if (userRole == "Company" || rowSeekerID != loggedInSeekerID)
                {
                    lnkRemove.Visible = false;
                }
            }
        }

        //for company 
        protected void rptSkills_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Button btnRemoveSkill = (Button)e.Item.FindControl("btnRemoveSkill");

                int rowSeekerID = Convert.ToInt32(DataBinder.Eval(e.Item.DataItem, "seekerid"));
                int loggedInSeekerID = Convert.ToInt32(Session["SeekerID"] ?? "0");
                string userRole = Session["UserRole"]?.ToString() ?? "";

                // Hide "Remove" button if the user is a company or another job seeker
                if (userRole == "Company" || rowSeekerID != loggedInSeekerID)
                {
                    btnRemoveSkill.Visible = false;
                }
            }
        }
    }
}