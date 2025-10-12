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
                if (Session["Username"] != null && Session["UserRole"]?.ToString() == "Admin")
                {
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
                string query = "SELECT companyid, companyname, username, email, contactphone, website, indutrytype, address, location, description, companylogo, status FROM tbl_company";
                if (!string.IsNullOrEmpty(searchQuery))
                {
                    query += " WHERE companyname LIKE @search OR username LIKE @search OR email LIKE @search";
                }
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    if (!string.IsNullOrEmpty(searchQuery))
                        cmd.Parameters.AddWithValue("@search", "%" + searchQuery + "%");

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
            BindGrid(txtSearch.Text.Trim());
        }

        protected void gvCompanies_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int companyId = Convert.ToInt32(e.CommandArgument);
            string connStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connStr))
            {
                con.Open();
                string newStatus = e.CommandName == "Approve" ? "Active" : "Inactive";
                string updateQuery = "UPDATE tbl_company SET status=@status WHERE companyid=@id";
                SqlCommand cmd = new SqlCommand(updateQuery, con);
                cmd.Parameters.AddWithValue("@status", newStatus);
                cmd.Parameters.AddWithValue("@id", companyId);
                cmd.ExecuteNonQuery();
            }

            BindGrid(txtSearch.Text.Trim());
        }

        protected void gvCompanies_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // ✅ Existing logo handling
                Image img = (Image)e.Row.FindControl("imgCompanyLogo");
                object logo = DataBinder.Eval(e.Row.DataItem, "companylogo");
                if (logo != DBNull.Value)
                    img.ImageUrl = "data:image/png;base64," + Convert.ToBase64String((byte[])logo);
                else
                    img.ImageUrl = "../Images/no-logo.png";

                // ✅ NEW: Hide Approve button if already Active
                string status = DataBinder.Eval(e.Row.DataItem, "status").ToString();
                Button btnApprove = (Button)e.Row.FindControl("btnApprove");
                if (status.Equals("Active", StringComparison.OrdinalIgnoreCase))
                {
                    btnApprove.Visible = false;
                }
            }
        }
    }
}