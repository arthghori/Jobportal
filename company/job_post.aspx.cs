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
    public partial class job_post : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // Load only on first page load
            {
                LoadCategories();
                LoadCompanies();
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
                    ddlcategory.DataTextField = "categoryname";  // Display category name
                    ddlcategory.DataValueField = "categoryid";   // Store category ID
                    ddlcategory.DataBind();

                    ddlcategory.Items.Insert(0, new ListItem("--Select Category--", "0"));
                }
            }
        }

        private void LoadCompanies()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT companyid, companyname FROM tbl_company";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    conn.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    ddlcampany.DataSource = dt;
                    ddlcampany.DataTextField = "companyname";  // Display company name
                    ddlcampany.DataValueField = "companyid";   // Store company ID
                    ddlcampany.DataBind();

                    ddlcampany.Items.Insert(0, new ListItem("--Select Company--", "0"));
                }
            }
        }

        protected void btnPost_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = @"INSERT INTO tbl_jobpost 
                            (companyid, jobtitle, jobdescription, categoryid, skillrequried, location, salary, jobtype, postdate, applicationdeadline, status, createdtime) 
                            VALUES 
                            (@companyid, @jobtitle, @jobdescription, @categoryid, @skillrequried, @location, @salary, @jobtype, @postdate, @applicationdeadline, @status, GETDATE())";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@companyid", ddlcampany.SelectedValue); // Fetch selected company ID
                    cmd.Parameters.AddWithValue("@jobtitle", txtJobtitle.Text);
                    cmd.Parameters.AddWithValue("@jobdescription", txtDescription.Text);
                    cmd.Parameters.AddWithValue("@categoryid", ddlcategory.SelectedValue); // Fetch selected category ID
                    cmd.Parameters.AddWithValue("@skillrequried", txtSkillRequried.Text);
                    cmd.Parameters.AddWithValue("@location", txtLocation.Text);
                    cmd.Parameters.AddWithValue("@salary", txtSalary.Text);
                    cmd.Parameters.AddWithValue("@jobtype", ddlJobpost.SelectedValue);
                    cmd.Parameters.AddWithValue("@postdate", Convert.ToDateTime(txtPostdate.Text));
                    cmd.Parameters.AddWithValue("@applicationdeadline", Convert.ToDateTime(txtDate.Text));
                    cmd.Parameters.AddWithValue("@status", "Open"); // Default status

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            ResetForm();
        }

        private void ResetForm()
        {
            ddlcampany.SelectedIndex = 0;
            ddlcategory.SelectedIndex = 0;
            txtJobtitle.Text = "";
            txtDescription.Text = "";
            txtSkillRequried.Text = "";
            txtLocation.Text = "";
            txtSalary.Text = "";
            ddlJobpost.SelectedIndex = 0;
            txtPostdate.Text = "";
            txtDate.Text = "";
        }
    }
}
