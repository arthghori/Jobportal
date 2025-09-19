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
    public partial class Job_seeker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null && Session["UserRole"].ToString() == "Admin")
                {
                    //string username = Session["Username"].ToString();
                    BindGrid();
                }
                else
                {
                    Response.Redirect("~/auth/login_page.aspx");
                }
            }
        }

        private void BindGrid(string searchQuery = "")
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "SELECT seekerid, firstname, lastname, email, gender, birthday, phonenumber, experience, city, addreess, state, username, profilephoto FROM tbl_jobseeker";

                if (!string.IsNullOrEmpty(searchQuery))
                {
                    query += " WHERE firstname LIKE @search OR lastname LIKE @search OR email LIKE @search";
                }

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    if (!string.IsNullOrEmpty(searchQuery))
                    {
                        cmd.Parameters.AddWithValue("@search", "%" + searchQuery + "%");
                    }

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    gvJobSeekers.DataSource = dt;
                    gvJobSeekers.DataBind();
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindGrid(txtSearch.Text.Trim());  // Filter job seekers by search text
        }

        protected void gvJobSeekers_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Image imgProfile = (Image)e.Row.FindControl("imgProfile");
                if (imgProfile != null)
                {
                    object imgData = DataBinder.Eval(e.Row.DataItem, "profilephoto");

                    if (imgData != DBNull.Value)
                    {
                        byte[] imageBytes = (byte[])imgData;
                        string base64String = Convert.ToBase64String(imageBytes);
                        imgProfile.ImageUrl = "data:image/png;base64," + base64String;
                    }
                    else
                    {
                        imgProfile.ImageUrl = "no-image.png"; // Default image if no profile picture
                    }
                }
            }
        }
    }
}