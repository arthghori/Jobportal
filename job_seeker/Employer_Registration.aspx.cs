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
    public partial class Employer_Registration : System.Web.UI.Page

    {

        SqlConnection con;
        string strcon = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                fndbconn();
                bindgrid();
            }

        }

        protected void fndbconn()
        {
            con = new SqlConnection(strcon);

            if (con.State != ConnectionState.Open)
            {
                con.Open();
                Console.Write("Connection success!");
            }

            else
            {
                Console.Write("Connection Fail!");
            }

        }

        public void bindgrid()
        {
            SqlConnection con = new SqlConnection(strcon);

            string query = "select * from tbl_company";
            con.Open();

            SqlDataAdapter adpt = new SqlDataAdapter(query, con);
            DataSet dt = new DataSet();

            adpt.Fill(dt);
            gvcompany.DataSource = dt;
            gvcompany.DataBind();
            con.Close();

        }

        //covent to binary
        private byte[] GetFileBytes(HttpPostedFile postedFile)
        {
            using (var binaryReader = new System.IO.BinaryReader(postedFile.InputStream))
            {
                return binaryReader.ReadBytes(postedFile.ContentLength);
            }
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {

            try
            {
                string Cname = txtCname.Text;
                string username = txtUname.Text;
                string email = txtEmail.Text;
                string password = txtPassword.Text;
                string conpassword = txtCpassword.Text;
                decimal phone = decimal.Parse(txtContactno.Text); // Parse phone to decimal
                string website = txtWebsite.Text;
                string industry = ddlIndustryype.SelectedValue;
                string address = txtAddress.Text;
                string location = txtLocation.Text;
                string description = txtDescription.Text;


                // Validate password and confirm password
                if (password != conpassword)
                {
                    Response.Write("Passwords do not match.");
                    return;
                }

                // date and time mate 

                DateTime now = DateTime.Now;

                string currentDate = now.ToString("yyyy-MM-dd"); // Format as YYYY-MM-DD
                Console.WriteLine("Current Date (String): " + currentDate);

                string currentDateTime = now.ToString("yyyy-MM-dd HH:mm:ss"); // Format with time
                Console.WriteLine("Current Date and Time (String): " + currentDateTime);


                byte[] logo = null;

                if (fuFileupload.HasFile)
                {
                    logo = GetFileBytes(fuFileupload.PostedFile);

                }

                string query = @"INSERT INTO tbl_company
            ([companyname], [username], [email], [password], [contactphone], [website], [indutrytype], [address], [location], [description], [companylogo], [createdtime])
            VALUES (@CompanyName, @Username, @Email, @Password, @ContactPhone, @Website, @IndustryType, @Address, @Location, @Description, @CompanyLogo, @CreatedTime)";

                using (SqlConnection con = new SqlConnection(strcon))
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        // Add parameters
                        cmd.Parameters.AddWithValue("@CompanyName", Cname);
                        cmd.Parameters.AddWithValue("@Username", username);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", password);
                        cmd.Parameters.AddWithValue("@ContactPhone", phone);
                        cmd.Parameters.AddWithValue("@Website", website);
                        cmd.Parameters.AddWithValue("@IndustryType", industry);
                        cmd.Parameters.AddWithValue("@Address", address);
                        cmd.Parameters.AddWithValue("@Location", location);
                        cmd.Parameters.AddWithValue("@Description", description);
                        cmd.Parameters.AddWithValue("@CompanyLogo", logo);
                        cmd.Parameters.AddWithValue("@CreatedTime", currentDateTime);


                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }

                // Refresh grid or notify user
                bindgrid();
                Response.Redirect("~/company/company_main.aspx");

            }
            catch (Exception com)
            {

                Response.Write(com.ToString());

            }

        }

    }
}