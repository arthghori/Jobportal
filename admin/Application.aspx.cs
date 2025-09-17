using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal.admin
{
    public partial class Application : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null && Session["UserRole"].ToString() == "Jobseeker")
            {
                string username = Session["Username"].ToString();

            }
            else if (Session["Username"] != null && Session["UserRole"].ToString() == "Company")
            {

            }
            else if (Session["Username"] != null && Session["UserRole"].ToString() == "Admin")
            {

            }
            else
            {
                Response.Redirect("~/login_page.aspx");
            }


            if (!IsPostBack)
            {
                LoadApplications();
            }

        }
        private void LoadApplications()
        {

            // Check if jobpostid exists
            if (string.IsNullOrEmpty(Request.QueryString["jobpostid"]))
            {
                // Response.Write("No jobpostid in URL.");
                return;
            }

            int jobPostId;
            if (!int.TryParse(Request.QueryString["jobpostid"], out jobPostId))
            {
                //  Response.Write("Invalid jobpostid format.");
                return;
            }

            //  Response.Write("JobPost ID: " + jobPostId); // Debugging

            using (SqlConnection con = new SqlConnection(connString))
            {
                string query = @"
                SELECT a.applicationid, s.firstname AS applicantname, 
                       a.applicationdate, a.status, a.seekerid
                FROM tbl_jobapplication a
                JOIN tbl_jobseeker s ON a.seekerid = s.seekerid
                WHERE a.jobpostid = @jobpostid";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@jobpostid", jobPostId);
                    con.Open();

                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        // Check if data is available
                        if (dt.Rows.Count == 0)
                        {
                            // Response.Write("No applications found.");
                        }

                        gvApplications.DataSource = dt;
                        gvApplications.DataBind();
                    }
                }
            }
        }



        protected void gvApplications_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Approve" || e.CommandName == "Reject")
            {
                int applicationId = Convert.ToInt32(e.CommandArgument);
                string newStatus = (e.CommandName == "Approve") ? "Approved" : "Rejected";
                UpdateApplicationStatus(applicationId, newStatus);
            }

        }

        private void UpdateApplicationStatus(int applicationId, string newStatus)
        {
            using (SqlConnection con = new SqlConnection(connString))
            {
                string query = "UPDATE tbl_jobapplication SET status = @status WHERE applicationid = @applicationid";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@status", newStatus);
                    cmd.Parameters.AddWithValue("@applicationid", applicationId);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            LoadApplications(); // Refresh the GridView
        }


        protected void btnViewProfile_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int seekerid = Convert.ToInt32(btn.CommandArgument);
            Response.Redirect("~/Employee/Employee_profile.aspx?seekerid=" + seekerid);
        }

    }

}

