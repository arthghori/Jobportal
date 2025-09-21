using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal.admin
{
    public partial class category : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                if (Session["Username"] != null && Session["UserRole"].ToString() == "Admin")
                {
                    //string username = Session["Username"].ToString();
                    BindCategories();
                }
                else
                {
                  Response.Redirect("~/auth/login_page.aspx");
                }
            }

        }



        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            string categoryName = txtCategoryName.Text.Trim();

            if (string.IsNullOrEmpty(categoryName))
            {
                Response.Write("<script>alert('Please enter a category name.');</script>");
                return;
            }

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO tbl_category (categoryname) VALUES (@categoryname)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@categoryname", categoryName);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            BindCategories();
            txtCategoryName.Text = ""; // Clear input field
        }

        protected void gvCategories_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void BindCategories()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT categoryid, categoryname FROM tbl_category";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        gvCategories.DataSource = dt;
                        gvCategories.DataBind();
                    }
                }
            }
        }

        protected void gvCategories_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int categoryid = Convert.ToInt32(gvCategories.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM tbl_category WHERE categoryid = @categoryid";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@categoryid", categoryid);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            BindCategories();
        }
    }
}