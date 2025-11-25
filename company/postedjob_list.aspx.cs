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

                if (userRole == "Company")
                {
                    if (!IsPostBack)
                    {
                        LoadCompanyVacancies();
                    }
                }
                else if (userRole == "Jobseeker" || userRole == "Admin")
                {
                    // Redirect other roles to appropriate pages or show error
                    Response.Redirect("~/auth/login_page.aspx");
                }
                else
                {
                    Response.Redirect("~/auth/login_page.aspx");
                }
            }
            else
            {
                Response.Redirect("~/auth/login_page.aspx");
            }
        }

        private void LoadCompanyVacancies()
        {
            string companyId = Session["CompanyId"]?.ToString();

            if (string.IsNullOrEmpty(companyId))
            {
                companyId = GetCompanyIdFromUsername(Session["Username"].ToString());
                Session["CompanyId"] = companyId;
            }

            if (string.IsNullOrEmpty(companyId))
            {
                ShowErrorMessage("Company information not found. Please login again.");
                return;
            }

            string connStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = @"SELECT jp.jobpostid AS jobid, 
                               c.companyname AS CompanyName,
                               jp.jobtitle AS JobTitle, 
                               jp.jobtype AS EmploymentType, 
                               jp.applicationdeadline AS ApplicationDeadline, 
                               jp.status,
                               1 AS Views 
                        FROM tbl_jobpost jp
                        INNER JOIN tbl_company c ON jp.companyid = c.companyid
                        WHERE jp.companyid = @CompanyId 
                        ORDER BY jp.jobpostid DESC";

                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                da.SelectCommand.Parameters.AddWithValue("@CompanyId", companyId);

                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    gvVacancies.DataSource = dt;
                    gvVacancies.DataBind();
                }
                else
                {
                    dt.Rows.Add(dt.NewRow());
                    gvVacancies.DataSource = dt;
                    gvVacancies.DataBind();
                    gvVacancies.Rows[0].Cells.Clear();
                    gvVacancies.Rows[0].Cells.Add(new TableCell());
                    gvVacancies.Rows[0].Cells[0].ColumnSpan = gvVacancies.Columns.Count;
                    gvVacancies.Rows[0].Cells[0].Text = "No jobs posted yet. Click 'Create New Vacancy' to get started!";
                    gvVacancies.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                    gvVacancies.Rows[0].Cells[0].CssClass = "no-data-message";
                }
            }
        }

        private string GetCompanyIdFromUsername(string username)
        {
            string companyId = null;
            string connStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT companyid FROM tbl_company WHERE username = @Username";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Username", username);

                conn.Open();
                object result = cmd.ExecuteScalar();
                if (result != null)
                {
                    companyId = result.ToString();
                }
            }

            return companyId;
        }

        private void ShowErrorMessage(string message)
        {
            // You can implement this to show error messages to the user
            // For example, using a label or JavaScript alert
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('{message}');", true);
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/company/job_post.aspx");
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int jobid = Convert.ToInt32(btn.CommandArgument);
            Response.Redirect("job_application.aspx?jobpostid=" + jobid);
        }

        protected void btnApplications_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int jobid = Convert.ToInt32(btn.CommandArgument);
            Response.Redirect("~/admin/Application.aspx?jobpostid=" + jobid);
        }

        protected void gvVacancies_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Your existing code
        }
    }
}