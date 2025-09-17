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
    public partial class admin_register : System.Web.UI.Page
    {
        SqlConnection con;
        string strcon = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["Username"] != null && Session["UserRole"].ToString() == "Admin")
                {
                    //string username = Session["Username"].ToString();
                    Fndbconn();
                    bindgrid();
                }
                else
                {
                    Response.Redirect("~/login_page.aspx");
                }
            }

        }

        protected void Fndbconn()
        {
            con = new SqlConnection(strcon);

            if (con.State != ConnectionState.Open)
            {
                con.Open();
                // Response.Write("Connection success!");
            }

            else
            {
                Response.Write("Connection Fail!");
            }

        }

        public void bindgrid()
        {
            SqlConnection con = new SqlConnection(strcon);

            string query = "select * from tbl_admin";
            con.Open();

            SqlDataAdapter adpt = new SqlDataAdapter(query, con);
            DataSet dt = new DataSet();

            adpt.Fill(dt);
            gvadmin.DataSource = dt;
            gvadmin.DataBind();
            con.Close();

        }
        // register button

        protected void btnRegister_Click(object sender, EventArgs e)
        {

            try
            {
                string username = txtUname.Text;
                string password = txtPassword.Text;
                string email = txtEmail.Text;
                string contact = txtContactnumber.Text;


                string query = "insert into tbl_admin (username,password,email,contactno) values (@username, @password, @email, @contact)";


                using (SqlConnection con = new SqlConnection(strcon))
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        // Add parameters
                        cmd.Parameters.AddWithValue("@username", username);
                        cmd.Parameters.AddWithValue("@password", password);
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@contact", contact);


                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                bindgrid();
            }
            catch (Exception els)
            {

                Response.Write(els.ToString());
            }


        }
    }
}