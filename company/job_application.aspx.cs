using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal.company
{
    public partial class job_application : System.Web.UI.Page
    {
        string connString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\job_portel\\App_Data\\jobportal.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Username"] != null && Session["UserRole"].ToString() == "Jobseeker")
            {
                string username = Session["Username"].ToString();
                btnApply.Visible = true;
                btnUpdate.Visible = false;
                btnEdit.Visible = false;
            }
            else if (Session["Username"] != null && Session["UserRole"].ToString() == "Admin")
            {
                btnApply.Visible = false;
                btnUpdate.Visible = false;
                btnEdit.Visible = false;

            }
            else if (Session["Username"] != null && Session["UserRole"].ToString() == "Company")
            {
                btnApply.Visible = false;
                btnUpdate.Visible = true;
                btnEdit.Visible = true;

            }
            else
            {
                Response.Redirect("~/login_page.aspx");
            }

            if (!IsPostBack)
            {
                if (Request.QueryString["jobpostid"] != null && int.TryParse(Request.QueryString["jobpostid"], out int jobpostid))
                {
                    LoadJobDetails(jobpostid);
                    LoadCategories();

                }
                else
                {
                    lblMessage.Text = "Invalid Job ID.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        private void LoadCategories()
        {
            using (SqlConnection con = new SqlConnection(connString))
            {
                string query = "SELECT categoryid, categoryname FROM tbl_category";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                ddlCategory.DataSource = reader;
                ddlCategory.DataTextField = "categoryname";
                ddlCategory.DataValueField = "categoryid";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, new ListItem("Select Category", "0"));
            }
        }
        private void LoadJobDetails(int jobpostid)
        {
            string query = @"
            SELECT jp.jobtitle, jp.jobdescription, cat.categoryid, cat.categoryname, jp.skillrequried, 
                   jp.location, jp.salary, jp.jobtype, jp.postdate, jp.applicationdeadline, jp.status,
                   c.companyname, c.website, c.email, c.contactphone, c.description AS companydescription, 
                   c.companylogo
            FROM tbl_jobpost jp
            INNER JOIN tbl_company c ON jp.companyid = c.companyid
            INNER JOIN tbl_category cat ON jp.categoryid = cat.categoryid
            WHERE jp.jobpostid = @jobpostid";

            using (SqlConnection con = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@jobpostid", jobpostid);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.HasRows)
                    {
                        reader.Read();

                        // Labels
                        lblJobTitle.Text = reader["jobtitle"].ToString();
                        lblDescription.Text = reader["jobdescription"].ToString();
                        lblCategory.Text = reader["categoryname"].ToString();
                        lblSkillsRequired.Text = reader["skillrequried"].ToString();
                        lblLocation.Text = reader["location"].ToString();
                        lblSalary.Text = reader["salary"].ToString();
                        lblJobType.Text = reader["jobtype"].ToString();
                        lblPostDate.Text = Convert.ToDateTime(reader["postdate"]).ToString("yyyy-MM-dd");
                        lblApplicationDeadline.Text = Convert.ToDateTime(reader["applicationdeadline"]).ToString("yyyy-MM-dd");
                        lblStatus.Text = reader["status"].ToString();

                        // Textboxes (for editing)
                        txtJobTitle.Text = reader["jobtitle"].ToString();
                        txtDescription.Text = reader["jobdescription"].ToString();
                        txtSkillsRequired.Text = reader["skillrequried"].ToString();
                        txtLocation.Text = reader["location"].ToString();
                        txtSalary.Text = reader["salary"].ToString();
                        ddlJobType.SelectedValue = reader["jobtype"].ToString();
                        txtPostDate.Text = Convert.ToDateTime(reader["postdate"]).ToString("yyyy-MM-dd");
                        txtApplicationDeadline.Text = Convert.ToDateTime(reader["applicationdeadline"]).ToString("yyyy-MM-dd");
                        txtStatus.Text = reader["status"].ToString();
                        ddlCategory.SelectedValue = reader["categoryid"].ToString();

                        // Display company logo
                        if (reader["companylogo"] != DBNull.Value)
                        {
                            byte[] imgBytes = (byte[])reader["companylogo"];
                            string base64String = Convert.ToBase64String(imgBytes);
                            imgCompanyLogo.ImageUrl = "data:image/png;base64," + base64String;
                        }
                        else
                        {
                            imgCompanyLogo.ImageUrl = "~/Images/default-company.png";
                        }
                    }
                    else
                    {
                        lblMessage.Text = "Job not found.";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                lblMessage.Text = "You need to log in as a job seeker to apply.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            string jobPostId = Request.QueryString["jobpostid"];
            string username = Session["username"].ToString();
            string connString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connString))
            {
                con.Open();

                // Retrieve seekerid from username
                string getSeekerIdQuery = "SELECT seekerid FROM tbl_jobseeker WHERE username = @username";
                int seekerId;

                using (SqlCommand getSeekerIdCmd = new SqlCommand(getSeekerIdQuery, con))
                {
                    getSeekerIdCmd.Parameters.AddWithValue("@username", username);
                    object result = getSeekerIdCmd.ExecuteScalar();

                    if (result == null)
                    {
                        lblMessage.Text = "Invalid job seeker account.";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        return;
                    }

                    seekerId = Convert.ToInt32(result);
                }

                // Check if user has already applied
                string checkQuery = "SELECT COUNT(*) FROM tbl_jobapplication WHERE jobpostid = @jobpostid AND seekerid = @seekerid";
                using (SqlCommand checkCmd = new SqlCommand(checkQuery, con))
                {
                    checkCmd.Parameters.AddWithValue("@jobpostid", jobPostId);
                    checkCmd.Parameters.AddWithValue("@seekerid", seekerId);
                    int count = (int)checkCmd.ExecuteScalar();

                    if (count > 0)
                    {
                        lblMessage.Text = "You have already applied for this job.";
                        lblMessage.ForeColor = System.Drawing.Color.Orange;
                        return;
                    }
                }

                // Insert job application
                string insertQuery = "INSERT INTO tbl_jobapplication (jobpostid, seekerid, applicationdate, status) VALUES (@jobpostid, @seekerid, GETDATE(), 'Pending')";
                using (SqlCommand cmd = new SqlCommand(insertQuery, con))
                {
                    cmd.Parameters.AddWithValue("@jobpostid", jobPostId);
                    cmd.Parameters.AddWithValue("@seekerid", seekerId);

                    cmd.ExecuteNonQuery();
                    lblMessage.Text = "Successfully applied for the job!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (Session["Username"] == null || Session["UserRole"].ToString() != "Company")
            {
                lblMessage.Text = "You need to log in as a company to update job details.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (Request.QueryString["jobpostid"] == null || !int.TryParse(Request.QueryString["jobpostid"], out int jobpostid))
            {
                lblMessage.Text = "Invalid Job ID.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            string query = @"
                UPDATE tbl_jobpost 
                SET jobtitle = @jobtitle, jobdescription = @jobdescription, 
                    categoryid = @categoryid, skillrequried = @skillrequried, 
                    location = @location, salary = @salary, 
                    jobtype = @jobtype, applicationdeadline = @applicationdeadline, 
                    status = @status 
                WHERE jobpostid = @jobpostid";

            using (SqlConnection con = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@jobtitle", txtJobTitle.Text);
                    cmd.Parameters.AddWithValue("@jobdescription", txtDescription.Text);
                    cmd.Parameters.AddWithValue("@categoryid", ddlCategory.SelectedValue);
                    cmd.Parameters.AddWithValue("@skillrequried", txtSkillsRequired.Text);
                    cmd.Parameters.AddWithValue("@location", txtLocation.Text);
                    cmd.Parameters.AddWithValue("@salary", txtSalary.Text);
                    cmd.Parameters.AddWithValue("@jobtype", ddlJobType.SelectedValue);
                    cmd.Parameters.AddWithValue("@applicationdeadline", Convert.ToDateTime(txtApplicationDeadline.Text));
                    cmd.Parameters.AddWithValue("@status", txtStatus.Text);
                    cmd.Parameters.AddWithValue("@jobpostid", jobpostid);

                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        lblMessage.Text = "Job details updated successfully!";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        Response.Redirect(Request.RawUrl);
                    }
                    else
                    {
                        lblMessage.Text = "Failed to update job details.";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            txtJobTitle.Visible = true;
            txtDescription.Visible = true;
            ddlCategory.Visible = true;
            txtSkillsRequired.Visible = true;
            txtLocation.Visible = true;
            txtSalary.Visible = true;
            ddlJobType.Visible = true;
            txtPostDate.Visible = true;
            txtApplicationDeadline.Visible = true;
            txtStatus.Visible = true;

            lblJobTitle.Visible = false;
            lblDescription.Visible = false;
            lblCategory.Visible = false;
            lblSkillsRequired.Visible = false;
            lblLocation.Visible = false;
            lblSalary.Visible = false;
            lblJobType.Visible = false;
            lblPostDate.Visible = false;
            lblApplicationDeadline.Visible = false;
            lblStatus.Visible = false;
        }
    }
}
