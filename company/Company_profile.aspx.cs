using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal.company
{
    public partial class Company_profile : System.Web.UI.Page
    {
        string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\admin\\Documents\\project\\job_portal\\App_Data\\jobportal.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null && Session["UserRole"].ToString() == "Company")
                {
                    string username = Session["Username"].ToString();
                    FetchCompanyData(username);
                }
                else
                {
                    Response.Redirect("~/auth/login_page.aspx");
                }
            }
        }
        private void FetchCompanyData(string username)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM tbl_company WHERE username = @Username";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@Username", username);

                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();
                    lblCompanyName.Text = txtCompanyName.Text = reader["companyname"].ToString();
                    lblUsername.Text = txtUsername.Text = reader["username"].ToString();
                    lblEmail.Text = txtEmail.Text = reader["email"].ToString();
                    lblContactno.Text = txtContact.Text = reader["contactphone"].ToString();
                    lblWebsite.Text = txtWebsite.Text = reader["website"].ToString();
                    lblIndustryType.Text = txtIndustryType.Text = reader["indutrytype"].ToString();
                    lblAddress.Text = txtAddress.Text = reader["address"].ToString();
                    lblLocation.Text = txtLocation.Text = reader["location"].ToString();
                    lblDescription.Text = txtDescription.Text = reader["description"].ToString();

                    // Load company logo
                    if (reader["companylogo"] != DBNull.Value)
                    {
                        byte[] logoData = (byte[])reader["companylogo"];
                        string base64String = Convert.ToBase64String(logoData);
                        CompanyLogo.ImageUrl = "data:image/png;base64," + base64String;
                    }
                }
                else
                {
                    Response.Write("<script>alert('No company data found.');</script>");
                }
            }
        }

        protected void btnUploadLogo_Click(object sender, EventArgs e)
        {
            if (fuCompanyLogo.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(fuCompanyLogo.FileName).ToLower();
                string[] allowedExtensions = { ".jpg", ".jpeg", ".png", ".gif" };

                if (Array.Exists(allowedExtensions, ext => ext == fileExtension))
                {
                    byte[] imageBytes;
                    using (System.IO.BinaryReader br = new System.IO.BinaryReader(fuCompanyLogo.PostedFile.InputStream))
                    {
                        imageBytes = br.ReadBytes(fuCompanyLogo.PostedFile.ContentLength);
                    }

                    string username = Session["Username"].ToString();

                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        string query = "UPDATE tbl_company SET companylogo = @Logo WHERE username = @Username";
                        SqlCommand cmd = new SqlCommand(query, connection);
                        cmd.Parameters.AddWithValue("@Logo", imageBytes);
                        cmd.Parameters.AddWithValue("@Username", username);

                        connection.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            //  Response.Write("<script>alert('Profile picture updated successfully!');</script>");
                            FetchCompanyData(username);
                        }
                        else
                        {
                            Response.Write("<script>alert('Error updating profile picture.');</script>");
                        }
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid file type! Only JPG, PNG, and GIF are allowed.');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please select an image to upload.');</script>");
            }
        }


        protected void btnEdit_Click(object sender, EventArgs e)
        {
            // Show textboxes and hide labels for editing
            // Hide Labels
            lblCompanyName.Visible = false;
            lblUsername.Visible = false;
            lblEmail.Visible = false;
            lblContactno.Visible = false;
            lblWebsite.Visible = false;
            lblIndustryType.Visible = false;
            lblAddress.Visible = false;
            lblLocation.Visible = false;
            lblDescription.Visible = false;

            // Show Textboxes for Editing
            txtCompanyName.Visible = true;
            txtUsername.Visible = true;
            txtEmail.Visible = true;
            txtContact.Visible = true;
            txtWebsite.Visible = true;
            txtIndustryType.Visible = true;
            txtAddress.Visible = true;
            txtLocation.Visible = true;
            txtDescription.Visible = true;

            // Hide Edit Button, Show Save Button
            btnEdit.Visible = false;
            btnSave.Visible = true;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string currentUsername = Session["Username"].ToString();
            string newUsername = txtUsername.Text;
            string newEmail = txtEmail.Text;
            string newContact = txtContact.Text;
            string newCompanyName = txtCompanyName.Text;
            string newWebsite = txtWebsite.Text;
            string newIndustryType = txtIndustryType.Text;
            string newAddress = txtAddress.Text;
            string newLocation = txtLocation.Text;
            string newDescription = txtDescription.Text;

            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\admin\\Documents\\project\\job_portal\\App_Data\\jobportal.mdf;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    string query = @"
                UPDATE tbl_company 
                SET 
                    companyname = @CompanyName,
                    username = @NewUsername, 
                    email = @Email, 
                    contactphone = @Contact,
                    website = @Website,
                    indutrytype = @IndustryType,
                    address = @Address,
                    location = @Location,
                    description = @Description
                WHERE username = @CurrentUsername";

                    SqlCommand cmd = new SqlCommand(query, connection);
                    cmd.Parameters.AddWithValue("@CompanyName", newCompanyName);
                    cmd.Parameters.AddWithValue("@NewUsername", newUsername);
                    cmd.Parameters.AddWithValue("@Email", newEmail);
                    cmd.Parameters.AddWithValue("@Contact", newContact);
                    cmd.Parameters.AddWithValue("@Website", newWebsite);
                    cmd.Parameters.AddWithValue("@IndustryType", newIndustryType);
                    cmd.Parameters.AddWithValue("@Address", newAddress);
                    cmd.Parameters.AddWithValue("@Location", newLocation);
                    cmd.Parameters.AddWithValue("@Description", newDescription);
                    cmd.Parameters.AddWithValue("@CurrentUsername", currentUsername);

                    connection.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    connection.Close();

                    if (rowsAffected > 0)
                    {
                        // If username changed, update session
                        if (currentUsername != newUsername)
                        {
                            Session["Username"] = newUsername;
                        }

                        Response.Write("<script>alert('Company profile updated successfully!');</script>");

                        // Update Labels with New Data
                        lblCompanyName.Text = newCompanyName;
                        lblUsername.Text = newUsername;
                        lblEmail.Text = newEmail;
                        lblContactno.Text = newContact;
                        lblWebsite.Text = newWebsite;
                        lblIndustryType.Text = newIndustryType;
                        lblAddress.Text = newAddress;
                        lblLocation.Text = newLocation;
                        lblDescription.Text = newDescription;

                        // Switch back to display mode
                        lblCompanyName.Visible = true;
                        lblUsername.Visible = true;
                        lblEmail.Visible = true;
                        lblContactno.Visible = true;
                        lblWebsite.Visible = true;
                        lblIndustryType.Visible = true;
                        lblAddress.Visible = true;
                        lblLocation.Visible = true;
                        lblDescription.Visible = true;

                        txtCompanyName.Visible = false;
                        txtUsername.Visible = false;
                        txtEmail.Visible = false;
                        txtContact.Visible = false;
                        txtWebsite.Visible = false;
                        txtIndustryType.Visible = false;
                        txtAddress.Visible = false;
                        txtLocation.Visible = false;
                        txtDescription.Visible = false;

                        btnEdit.Visible = true;
                        btnSave.Visible = false;
                    }
                    else
                    {
                        Response.Write("<script>alert('Update failed. Please try again.');</script>");
                    }
                }
                catch (SqlException ex)
                {
                    if (ex.Number == 2627) // Unique Constraint Violation (Username or Email already exists)
                    {
                        Response.Write("<script>alert('Username or Email already exists. Please choose another.');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                    }
                }
            }
        }

        protected void btnForgotPassword_Click(object sender, EventArgs e)
        {
            string email = lblEmail.Text; // Get the email from label

            if (!string.IsNullOrEmpty(email))
            {
                Response.Redirect("/auth/forgot_pass.aspx?email=" + email);
            }
            else
            {
                Response.Write("Email not available.");
            }
        }
    }
}