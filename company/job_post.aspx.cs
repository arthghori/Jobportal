using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal.company
{
    public partial class job_post : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if company is logged in
            if (Session["Username"] == null || Session["UserRole"] == null || Session["UserRole"].ToString() != "Company")
            {
                Response.Redirect("~/auth/login_page.aspx");
            }

            if (!IsPostBack)
            {
                LoadCategories();
                LoadSkills();
                LoadCompany();
            }
        }

        private void LoadCategories()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT categoryid, categoryname FROM tbl_category";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    conn.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    ddlcategory.DataSource = dt;
                    ddlcategory.DataTextField = "categoryname";
                    ddlcategory.DataValueField = "categoryid";
                    ddlcategory.DataBind();

                    ddlcategory.Items.Insert(0, new ListItem("--Select Category--", "0"));
                }
            }
        }

        private void LoadSkills()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT skillid, skillname FROM tbl_skill";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);

                ddlSkills.DataSource = dt;
                ddlSkills.DataTextField = "skillname";
                ddlSkills.DataValueField = "skillid";
                ddlSkills.DataBind();

                ddlSkills.Items.Insert(0, new ListItem("--Select Skill--", "0"));
            }
        }



        private void LoadCompany()
        {
            // Get logged-in company ID from session
            if (Session["Companyid"] != null)
            {
                int companyId = Convert.ToInt32(Session["Companyid"]);
                string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "SELECT companyid, companyname FROM tbl_company WHERE companyid=@companyid";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@companyid", companyId);
                        conn.Open();
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            ddlcampany.Items.Clear();
                            ddlcampany.Items.Add(new ListItem(dr["companyname"].ToString(), dr["companyid"].ToString()));
                            ddlcampany.SelectedIndex = 0;
                            ddlcampany.Enabled = false; // disable dropdown so company cannot change
                        }
                        dr.Close();
                    }
                }
            }
        }


        private void ResetForm()
        {
            // Do not reset company as it is pre-selected
            ddlcategory.SelectedIndex = 0;
            ddlSkills.SelectedIndex = 0;
            txtJobtitle.Text = "";
            txtDescription.Text = "";
            txtLocation.Text = "";
            txtSalary.Text = "";
            ddlJobpost.SelectedIndex = 0;
            txtPostdate.Text = "";
            txtDate.Text = "";
        }

        protected void btnAddSkill_Click(object sender, EventArgs e)
        {
            // Only add if a skill is selected
            if (ddlSkills.SelectedIndex > 0)
            {
                // Prevent duplicate selection
                if (!lstSelectedSkills.Items.Cast<ListItem>().Any(item => item.Value == ddlSkills.SelectedValue))
                {
                    lstSelectedSkills.Items.Add(new ListItem(ddlSkills.SelectedItem.Text, ddlSkills.SelectedValue));
                }
            }
        }

        protected void btnPost_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlTransaction transaction = conn.BeginTransaction(); // Ensure atomic operation

                try
                {
                    // 1️⃣ Insert the job post
                    string insertJobPostQuery = @"
    INSERT INTO tbl_jobpost 
        (companyid, jobtitle, jobdescription, categoryid, location, salary, jobtype, experience, postdate, applicationdeadline, status, createdtime)
    VALUES 
        (@companyid, @jobtitle, @jobdescription, @categoryid, @location, @salary, @jobtype, @experience, @postdate, @applicationdeadline, @status, GETDATE());
    SELECT SCOPE_IDENTITY();"; // Returns inserted JobPostID


                    SqlCommand cmdJobPost = new SqlCommand(insertJobPostQuery, conn, transaction);
                    cmdJobPost.Parameters.AddWithValue("@companyid", ddlcampany.SelectedValue);
                    cmdJobPost.Parameters.AddWithValue("@jobtitle", txtJobtitle.Text);
                    cmdJobPost.Parameters.AddWithValue("@jobdescription", txtDescription.Text);
                    cmdJobPost.Parameters.AddWithValue("@categoryid", ddlcategory.SelectedValue);
                    cmdJobPost.Parameters.AddWithValue("@location", txtLocation.Text);
                    cmdJobPost.Parameters.AddWithValue("@salary", txtSalary.Text);
                    cmdJobPost.Parameters.AddWithValue("@jobtype", ddlJobpost.SelectedValue);
                    cmdJobPost.Parameters.AddWithValue("@experience", ddlExperience.SelectedValue); // <-- new
                    cmdJobPost.Parameters.AddWithValue("@postdate", Convert.ToDateTime(txtPostdate.Text));
                    cmdJobPost.Parameters.AddWithValue("@applicationdeadline", Convert.ToDateTime(txtDate.Text));
                    cmdJobPost.Parameters.AddWithValue("@status", "Open");


                    // Execute and get JobPostID
                    int jobPostId = Convert.ToInt32(cmdJobPost.ExecuteScalar());

                    // 2️⃣ Insert all selected skills
                    foreach (ListItem skill in lstSelectedSkills.Items)
                    {
                        string insertSkillQuery = "INSERT INTO tbl_jobpost_skill (JobPostID, SkillID) VALUES (@jobpostid, @skillid)";
                        SqlCommand cmdSkill = new SqlCommand(insertSkillQuery, conn, transaction);
                        cmdSkill.Parameters.AddWithValue("@jobpostid", jobPostId);
                        cmdSkill.Parameters.AddWithValue("@skillid", skill.Value);
                        cmdSkill.ExecuteNonQuery();
                    }

                    // Commit transaction
                    transaction.Commit();

                    // Clear form and listbox
                    lstSelectedSkills.Items.Clear();
                    ddlSkills.SelectedIndex = 0;
                    ResetForm();

                    // Optional: show success message
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Job posted successfully!');", true);
                }
                catch (Exception ex)
                {
                    // Rollback on error
                    transaction.Rollback();
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Error: {ex.Message}');", true);
                }
            }
        }
    }
}
