using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal.company
{
    public partial class jobs : System.Web.UI.Page
    {
        private string connString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null && (Session["UserRole"].ToString() == "Jobseeker" || Session["UserRole"].ToString() == "Admin"))
                {
                    LoadCategories();
                    LoadSkills();
                    LoadJobListings();
                }
                else
                {
                    //  Response.Redirect("~/login_page.aspx");
                    LoadCategories();
                    LoadSkills();
                    LoadJobListings();
                }
            }
        }

        private void LoadCategories()
        {
            using (SqlConnection con = new SqlConnection(connString))
            {
                string query = "SELECT categoryid, categoryname FROM tbl_category";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "categoryname";
                ddlCategory.DataValueField = "categoryid";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, new ListItem("-- All Categories --", ""));
            }
        }

        // Load Skill DropDown
        private void LoadSkills()
        {
            using (SqlConnection con = new SqlConnection(connString))
            {
                string query = "SELECT skillid, skillname FROM tbl_skill";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                ddlSkill.DataSource = dt;
                ddlSkill.DataTextField = "skillname";
                ddlSkill.DataValueField = "skillid";
                ddlSkill.DataBind();
                ddlSkill.Items.Insert(0, new ListItem("-- All Skills --", ""));
            }
        }

        // Load Job Listings with optional filters
        private void LoadJobListings(string categoryFilter = "", string skillFilter = "", string experienceFilter = "", string jobTypeFilter = "")
        {
            using (SqlConnection con = new SqlConnection(connString))
            {
                // Join tbl_jobpost_skill to filter by skills
                string query = @"SELECT DISTINCT jp.jobpostid, jp.jobtitle, c.companyname, jp.location, jp.salary, 
       jp.jobtype, jp.postdate, jp.applicationdeadline, c.companylogo
FROM tbl_jobpost jp
INNER JOIN tbl_company c ON jp.companyid = c.companyid
LEFT JOIN tbl_jobpost_skill jps ON jp.jobpostid = jps.JobPostID
WHERE (@CategoryID = '' OR jp.categoryid = @CategoryID)
  AND (@SkillID = '' OR jps.SkillID = @SkillID)
  AND (@JobType = '' OR jp.jobtype = @JobType)
ORDER BY jp.postdate DESC";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@CategoryID", string.IsNullOrEmpty(categoryFilter) ? "" : categoryFilter);
                cmd.Parameters.AddWithValue("@SkillID", string.IsNullOrEmpty(skillFilter) ? "" : skillFilter);
                cmd.Parameters.AddWithValue("@Experience", string.IsNullOrEmpty(experienceFilter) ? "" : experienceFilter);
                cmd.Parameters.AddWithValue("@JobType", string.IsNullOrEmpty(jobTypeFilter) ? "" : jobTypeFilter);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                rptJobListings.DataSource = dt;
                rptJobListings.DataBind();
            }
        }

        // Apply Filter Button
        protected void btnFilter_Click(object sender, EventArgs e)
        {
            string categoryFilter = ddlCategory.SelectedValue;
            string skillFilter = ddlSkill.SelectedValue;
            string experienceFilter = rblExperience.SelectedValue;
            string jobTypeFilter = rblJobType.SelectedValue;

            LoadJobListings(categoryFilter, skillFilter, experienceFilter, jobTypeFilter);
        }

        // Show company logo in repeater
        protected void rptJobListings_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Image img = (Image)e.Item.FindControl("imgcompanylogo");
                DataRowView drv = (DataRowView)e.Item.DataItem;
                string logoFile = drv["companylogo"]?.ToString();
                string defaultImage = "~/Images/default_company.png";

                if (!string.IsNullOrEmpty(logoFile))
                {
                    string serverPath = Server.MapPath("~/CompanyLogos/" + logoFile);
                    img.ImageUrl = System.IO.File.Exists(serverPath) ? "~/CompanyLogos/" + logoFile : defaultImage;
                }
                else
                {
                    img.ImageUrl = defaultImage;
                }
            }
        }

        // View Job Details
        protected void rptJobListings_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string jobPostId = e.CommandArgument.ToString();
                Response.Redirect("~/job_seeker/job_details.aspx?id=" + jobPostId);
            }
        }

        // Optional: filter on dropdown change
        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e) => btnFilter_Click(sender, e);
        protected void ddlSkill_SelectedIndexChanged(object sender, EventArgs e) => btnFilter_Click(sender, e);
        protected void rblExperience_SelectedIndexChanged(object sender, EventArgs e) => btnFilter_Click(sender, e);
        protected void rblJobType_SelectedIndexChanged(object sender, EventArgs e) => btnFilter_Click(sender, e);


         protected void btnDetails_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string jobId = btn.CommandArgument;
            Response.Redirect("~/job_application.aspx?jobpostid=" + jobId);
        }

    }
}