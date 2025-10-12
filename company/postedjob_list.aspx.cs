using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal.company
{
    public partial class postedjob_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                string userRole = Session["UserRole"].ToString();

                if (userRole == "Jobseeker" || userRole == "Admin" || userRole == "Company")
                {
                    LoadVacancies();
                }
                else
                {
                    // Redirect unauthorized users
                    Response.Redirect("~/auth/login_page.aspx");
                }
            }
            else
            {
                // Redirect to login page if session is not set
                Response.Redirect("~/auth/login_page.aspx");
            }
        }
        private void LoadVacancies()
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT jobpostid AS JobID, jobtitle AS JobTitle, jobtype AS EmploymentType, " +
                               "applicationdeadline AS ApplicationDeadline, status AS Published, 1 AS Views " +
                               "FROM tbl_jobpost";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                gvVacancies.DataSource = dt;
                gvVacancies.DataBind();
            }
        }


        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/company/job_post.aspx");

        }


        protected void btnView_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int jobid = Convert.ToInt32(btn.CommandArgument);
            Response.Redirect("~/company/job_application.aspx?jobpostid=" + jobid);
        }

        protected void btnApplications_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int jobid = Convert.ToInt32(btn.CommandArgument);
            Response.Redirect("~/admin/Application.aspx?jobpostid=" + jobid);

        }





    }
}