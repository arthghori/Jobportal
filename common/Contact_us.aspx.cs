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
    public partial class Contact_us : System.Web.UI.Page
    {
        SqlConnection con;
        string strcon = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                fndbconn();

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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {

                string Fname = txtFname.Text;
                string Lname = txtLname.Text;
                string email = txtEmail.Text;
                string phone = txtPhoneno.Text;
                string message = txtMessage.Text;




                // date and time mate 

                DateTime now = DateTime.Now;

                string currentDate = now.ToString("yyyy-MM-dd"); // Format as YYYY-MM-DD
                Console.WriteLine("Current Date (String): " + currentDate);

                string currentDateTime = now.ToString("yyyy-MM-dd HH:mm:ss"); // Format with time
                Console.WriteLine("Current Date and Time (String): " + currentDateTime);


                string query = @"INSERT INTO tbl_contact
            ([firstname], [lastname], [phonenumber], [email], [message] ,[createdtime])
            VALUES (@firstname, @lastname, @phonenumber, @email ,@message ,@createdtime)";

                using (SqlConnection con = new SqlConnection(strcon))
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        // Add parameters
                        cmd.Parameters.AddWithValue("@firstname", Fname);
                        cmd.Parameters.AddWithValue("@lastname", Lname);
                        cmd.Parameters.AddWithValue("@phonenumber", phone);
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@message", message);
                        cmd.Parameters.AddWithValue("@createdtime", currentDateTime);


                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }




            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}