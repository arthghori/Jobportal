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
    public partial class jobs : System.Web.UI.Page
    {
        private string connString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null && Session["UserRole"].ToString() == "Jobseeker")
                {
                    string username = Session["Username"].ToString();
                    LoadCategories();
                    LoadJobListings();
                }
                else if (Session["Username"] != null && Session["UserRole"].ToString() == "Admin")
                {
                    LoadCategories();
                    LoadJobListings();
                }
                else
                {
                    //Response.Redirect("~/login_page.aspx");
                    LoadCategories();
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

                ddlCategory.Items.Insert(0, new ListItem("All Categories", "0"));
            }
        }

        private void LoadJobListings(string category = "", string jobType = "")
        {
            string query = @"SELECT jp.jobpostid, jp.jobtitle, jp.location, jp.salary, jp.jobtype, 
                                jp.postdate, jp.applicationdeadline, c.companyname, c.companylogo
                         FROM tbl_jobpost jp
                         INNER JOIN tbl_company c ON jp.companyid = c.companyid
                         WHERE (@category = '' OR jp.categoryid = @category)
                         AND (@jobType = '' OR jp.jobtype = @jobType)";
            //AND(@experience = '' OR jp.skillrequried = @experience) , string experience = ""
            using (SqlConnection con = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@category", category == "0" ? "" : category);
                    //      cmd.Parameters.AddWithValue("@experience", string.IsNullOrEmpty(experience) ? "" : experience);
                    cmd.Parameters.AddWithValue("@jobType", string.IsNullOrEmpty(jobType) ? "" : jobType);

                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);



                    rptJobListings.DataSource = dt;
                    rptJobListings.DataBind();
                }
            }
        }

        protected void rptJobListings_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Image imgCompanyLogo = (Image)e.Item.FindControl("imgcompanylogo");

                DataRowView row = (DataRowView)e.Item.DataItem;
                if (row["companylogo"] != DBNull.Value)
                {
                    byte[] imgBytes = (byte[])row["companylogo"];
                    string base64String = Convert.ToBase64String(imgBytes);
                    imgCompanyLogo.ImageUrl = "data:image/png;base64," + base64String;
                }
            }
        }

        // Event handler for the Filter button click
        protected void btnFilter_Click(object sender, EventArgs e)
        {
            string category = ddlCategory.SelectedValue;
            // string experience = rblExperience.SelectedValue;
            string jobType = rblJobType.SelectedValue;

            LoadJobListings(category, jobType);
        }

        // Event handler for the "Details" button click
        protected void btnDetails_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string jobId = btn.CommandArgument;
            Response.Redirect("~/company/job_application.aspx?jobpostid=" + jobId);
        }


        protected void rptJobListings_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}