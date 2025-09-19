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
    public partial class Company : System.Web.UI.Page
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
                string query = "SELECT companyid, companyname, username, email, contactphone, website, indutrytype, address, location, description, companylogo FROM tbl_company";

                if (!string.IsNullOrEmpty(searchQuery))
                {
                    query += " WHERE companyname LIKE @search OR username LIKE @search OR email LIKE @search";
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

                    gvCompanies.DataSource = dt;
                    gvCompanies.DataBind();
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindGrid(txtSearch.Text.Trim());  // Filter companies by search text

        }

        protected void gvCompanies_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Image imgCompanyLogo = (Image)e.Row.FindControl("imgCompanyLogo");
                if (imgCompanyLogo != null)
                {
                    object imgData = DataBinder.Eval(e.Row.DataItem, "companylogo");

                    if (imgData != DBNull.Value)
                    {
                        byte[] imageBytes = (byte[])imgData;
                        string base64String = Convert.ToBase64String(imageBytes);
                        imgCompanyLogo.ImageUrl = "data:image/png;base64," + base64String;
                    }
                    else
                    {
                        imgCompanyLogo.ImageUrl = "no-logo.png"; // Default image if no logo
                    }

                }
            }
        }


    }
}