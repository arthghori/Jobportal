using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal.common
{
    public partial class Message : System.Web.UI.Page
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
                    Response.Redirect("~/login_page.aspx");
                }
            }
        }

        private void BindGrid(string searchQuery = "")
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "SELECT contactid, firstname, lastname, phonenumber, email, message, createdtime FROM tbl_contact";

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

                    gvcontact.DataSource = dt;
                    gvcontact.DataBind();
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindGrid(txtSearch.Text.Trim());  // Filter job seekers by search text

        }





    }
}