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
    public partial class company_main : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Username"] != null && Session["UserRole"].ToString() == "Company")
            {
                string username = Session["Username"].ToString();
                lblUsername.Text = username;
            }
            else
            {
                Response.Redirect("~/login_page.aspx");
            }

            if (!IsPostBack)
            {
                LoadCompanyJobs();
            }
        }


        private void LoadCompanyJobs()
        {
            string companyUsername = Session["Username"]?.ToString();
            if (string.IsNullOrEmpty(companyUsername))
            {
                Response.Redirect("Login.aspx");
                return;
            }

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string query = @"
                SELECT jp.jobpostid, jp.jobtitle,
                       (SELECT COUNT(*) FROM tbl_jobapplication WHERE jobpostid = jp.jobpostid) AS ApplicantCount
                FROM tbl_jobpost jp
                WHERE jp.companyid = (SELECT companyid FROM tbl_company WHERE username = @Username)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Username", companyUsername);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    rptCompanyJobs.DataSource = dt;
                    rptCompanyJobs.DataBind();
                }
            }
        }








    }
}