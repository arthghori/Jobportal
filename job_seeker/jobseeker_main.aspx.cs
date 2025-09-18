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
    public partial class jobseeker_main : System.Web.UI.Page
    {
        private string connString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null && Session["UserRole"].ToString() == "Jobseeker")
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
                LoadLatestJobs();
            }
        }

        private void LoadLatestJobs()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    string query = @"SELECT TOP 4 jp.jobpostid, jp.jobtitle, jp.location, jp.salary, 
                                jp.jobtype, jp.postdate, jp.applicationdeadline, 
                                c.companyname, c.companylogo 
                         FROM tbl_jobpost jp
                         INNER JOIN tbl_company c ON jp.companyid = c.companyid
                         ORDER BY jp.postdate DESC";

                    SqlCommand cmd = new SqlCommand(query, conn);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);



                    if (dt.Rows.Count > 0)
                    {
                        rptLatestJobs.DataSource = dt;
                        rptLatestJobs.DataBind();
                    }
                    else
                    {
                        rptLatestJobs.DataSource = null;
                        rptLatestJobs.DataBind();
                    }
                }
                catch (Exception ex)
                {
                    // Log error or display message
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }

        }
        protected void rptLatestJobs_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Image imgcompanylogo = (Image)e.Item.FindControl("imgcompanylogo");

                DataRowView row = (DataRowView)e.Item.DataItem;
                if (row["companylogo"] != DBNull.Value)
                {
                    byte[] imgBytes = (byte[])row["companylogo"];
                    string base64String = Convert.ToBase64String(imgBytes);
                    imgcompanylogo.ImageUrl = "data:image/png;base64," + base64String;
                }
            }
        }
        protected void btnApply_Command(object sender, CommandEventArgs e)
        {
            Button btn = (Button)sender;
            string jobId = btn.CommandArgument;
            Response.Redirect("~/job_application.aspx?jobpostid=" + jobId);
        }


    }
}
