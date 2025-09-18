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
    public partial class Skill1 : System.Web.UI.Page
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
        private void BindGrid()
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "SELECT SkillID, SkillName FROM tbl_skill";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    gvSkills.DataSource = dt;
                    gvSkills.DataBind();
                }
            }
        }
        protected void btnAddSkill_Click(object sender, EventArgs e)
        {
            string skillName = txtSkillName.Text.Trim();
            if (!string.IsNullOrEmpty(skillName))
            {
                string connStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string query = "INSERT INTO tbl_skill (skillname) VALUES (@SkillName)";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@SkillName", skillName);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }

                txtSkillName.Text = ""; // Clear input field
                BindGrid(); // Refresh the grid
            }
        }

        protected void gvSkills_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (gvSkills.DataKeys[e.RowIndex] == null)
            {
                return; // Avoid index out of bound error
            }

            int skillId = Convert.ToInt32(gvSkills.DataKeys[e.RowIndex].Value);
            string connStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "DELETE FROM tbl_skill WHERE skillid = @SkillID";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@SkillID", skillId);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            BindGrid(); // Refresh the grid
        }
    }
}