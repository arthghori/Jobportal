using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal.job_seeker
{
    public partial class applied_job : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Username"] != null && Session["UserRole"].ToString() == "Jobseeker")
            {
                string username = Session["Username"].ToString();

            }
            else
            {
                Response.Redirect("~/auth/login_page.aspx");
            }
            if (!IsPostBack)
            {
                LoadAppliedJobs();
            }
        }

        private void LoadAppliedJobs()
        {
            if (Session["username"] == null)
            {
                Response.Write("You need to log in as a job seeker to view applied jobs.");
                // lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            string username = Session["username"].ToString();
            string connString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            int seekerId = 0;

            using (SqlConnection con = new SqlConnection(connString))
            {
                con.Open();

                // ✅ Retrieve seekerid from username
                string getSeekerIdQuery = "SELECT seekerid FROM tbl_jobseeker WHERE username = @username";
                using (SqlCommand cmd = new SqlCommand(getSeekerIdQuery, con))
                {
                    cmd.Parameters.AddWithValue("@username", username);
                    object result = cmd.ExecuteScalar();

                    if (result == null)
                    {
                        Response.Write("Invalid job seeker account.");
                        // lblMessage.ForeColor = System.Drawing.Color.Red;
                        return;
                    }
                    seekerId = Convert.ToInt32(result);
                }

                // ✅ Now fetch applied jobs using seekerid
                string query = @"SELECT ja.jobpostid, jp.jobtitle, ja.applicationdate, ja.status 
                             FROM tbl_jobapplication ja
                             INNER JOIN tbl_jobpost jp ON ja.jobpostid = jp.jobpostid
                             WHERE ja.seekerid = @seekerid";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@seekerid", seekerId);
                    cmd.Parameters.AddWithValue("@status", "pending");
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        rptAppliedJobs.DataSource = dt;
                        rptAppliedJobs.DataBind();
                    }
                    else
                    {
                        Response.Write("No jobs applied yet.");
                        //lblMessage.ForeColor = System.Drawing.Color.Gray;
                    }
                }
            }
        }
        protected void btnApplyNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("/company/Jobs.aspx");
        }
    }
}