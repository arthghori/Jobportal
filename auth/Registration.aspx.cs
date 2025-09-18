using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal.auth
{
    public partial class Registration : System.Web.UI.Page
    {

        SqlConnection con;
        string strcon = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Fndbconn();


                fnBindstate();
                fnBindcity();
            }




        }

        protected void Fndbconn()
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




        // dorp down bilnd mate che 

        //public void depaddl()
        //{

        //    SqlConnection conn = new SqlConnection(strcon);
        //    conn.Open();
        //    string query = "select * from depa_1";
        //    SqlDataAdapter adpt = new SqlDataAdapter(query, conn);
        //    DataTable dt = new DataTable();
        //    adpt.Fill(dt);
        //    ddldepa.DataSource = dt;
        //    ddldepa.DataBind();
        //    ddldepa.DataTextField = "depa_name";
        //    ddldepa.DataValueField = "depa_id";
        //    ddldepa.DataBind();
        //    conn.Close();




        //}

        //protected void ddldepa_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    SqlConnection conn = new SqlConnection(strcon);
        //    conn.Open();
        //    string query = "select * from depa_1 where depa_id=@depa_id";
        //    SqlCommand cmd = new SqlCommand(query, conn);
        //    cmd.Parameters.AddWithValue("@depa_id", ddldepa.SelectedItem.Value);

        //    ddlcou.DataSource = cmd.ExecuteReader();
        //    ddlcou.DataTextField = "course_name";
        //    ddlcou.DataValueField = "cousre_id";
        //    ddlcou.DataBind();
        //}

        protected void fnBindstate()
        {
            ddlState.Items.Insert(0, new ListItem("---Select State---"));
            ddlState.Items.Add("andhra pradesh");
            ddlState.Items.Add("arunachal pradesh");
            ddlState.Items.Add("assam");
            ddlState.Items.Add("bihar");
            ddlState.Items.Add("chhattisgarh");
            ddlState.Items.Add("goa");
            ddlState.Items.Add("gujarat");
            ddlState.Items.Add("haryana");
            ddlState.Items.Add("himachal pradesh");
            ddlState.Items.Add("jharkhand");
            ddlState.Items.Add("karnataka");
            ddlState.Items.Add("kerala");
            ddlState.Items.Add("madhya pradesh");
            ddlState.Items.Add("maharashtra");
            ddlState.Items.Add("manipur");
            ddlState.Items.Add("meghalaya");
            ddlState.Items.Add("mizoram");
            ddlState.Items.Add("nagaland");
            ddlState.Items.Add("odisha");
            ddlState.Items.Add("punjab");
            ddlState.Items.Add("rajasthan");
            ddlState.Items.Add("sikkim");
            ddlState.Items.Add("tamil nadu");
            ddlState.Items.Add("telangana");
            ddlState.Items.Add("tripura");
            ddlState.Items.Add("uttar pradesh");
            ddlState.Items.Add("uttarakhand");
            ddlState.Items.Add("west bengal");
        }

        protected void fnBindcity()
        {
            ddlCity.Items.Clear();

            ddlCity.Items.Insert(0, new ListItem("---Select city---"));

            if (ddlState.SelectedValue == "andhra pradesh")
            {
                ddlCity.Items.Add("Visakhapatnam");
                ddlCity.Items.Add("Vijayawada");
                ddlCity.Items.Add("Guntur");
                ddlCity.Items.Add("Nellore");
                ddlCity.Items.Add("Kurnool");
                ddlCity.Items.Add("Tirupati");
                ddlCity.Items.Add("Kakinada");
                ddlCity.Items.Add("Rajahmundry");
                ddlCity.Items.Add("Kadapa");
                ddlCity.Items.Add("Anantapur");
            }
            else if (ddlState.SelectedValue == "arunachal pradesh")
            {
                ddlCity.Items.Add("Itanagar");
                ddlCity.Items.Add("Naharlagun");
                ddlCity.Items.Add("Pasighat");
                ddlCity.Items.Add("Tawang");
                ddlCity.Items.Add("Bomdila");
                ddlCity.Items.Add("Ziro");
                ddlCity.Items.Add("Tezu");
                ddlCity.Items.Add("Roing");
                ddlCity.Items.Add("Along");
                ddlCity.Items.Add("Namsai");
            }
            else if (ddlState.SelectedValue == "assam")
            {
                ddlCity.Items.Add("Guwahati");
                ddlCity.Items.Add("Silchar");
                ddlCity.Items.Add("Dibrugarh");
                ddlCity.Items.Add("Jorhat");
                ddlCity.Items.Add("Nagaon");
                ddlCity.Items.Add("Tinsukia");
                ddlCity.Items.Add("Tezpur");
                ddlCity.Items.Add("Bongaigaon");
                ddlCity.Items.Add("Karimganj");
                ddlCity.Items.Add("Diphu");
            }
            else if (ddlState.SelectedValue == "bihar")
            {
                ddlCity.Items.Add("Patna");
                ddlCity.Items.Add("Gaya");
                ddlCity.Items.Add("Muzaffarpur");
                ddlCity.Items.Add("Bhagalpur");
                ddlCity.Items.Add("Darbhanga");
                ddlCity.Items.Add("Arrah");
                ddlCity.Items.Add("Begusarai");
                ddlCity.Items.Add("Purnea");
                ddlCity.Items.Add("Katihar");
                ddlCity.Items.Add("Munger");
            }
            else if (ddlState.SelectedValue == "chhattisgarh")
            {
                ddlCity.Items.Add("Raipur");
                ddlCity.Items.Add("Bhilai");
                ddlCity.Items.Add("Bilaspur");
                ddlCity.Items.Add("Korba");
                ddlCity.Items.Add("Durg");
                ddlCity.Items.Add("Rajnandgaon");
                ddlCity.Items.Add("Jagdalpur");
                ddlCity.Items.Add("Ambikapur");
                ddlCity.Items.Add("Raigarh");
                ddlCity.Items.Add("Dhamtari");
            }
            else if (ddlState.SelectedValue == "goa")
            {
                ddlCity.Items.Add("Panaji");
                ddlCity.Items.Add("Margao");
                ddlCity.Items.Add("Vasco da Gama");
                ddlCity.Items.Add("Mapusa");
                ddlCity.Items.Add("Ponda");
                ddlCity.Items.Add("Cuncolim");
                ddlCity.Items.Add("Curchorem");
                ddlCity.Items.Add("Bicholim");
                ddlCity.Items.Add("Canacona");
                ddlCity.Items.Add("Pernem");
            }
            else if (ddlState.SelectedValue == "gujarat")
            {
                ddlCity.Items.Add("Ahmedabad");
                ddlCity.Items.Add("Surat");
                ddlCity.Items.Add("Vadodara");
                ddlCity.Items.Add("Rajkot");
                ddlCity.Items.Add("Bhavnagar");
                ddlCity.Items.Add("Jamnagar");
                ddlCity.Items.Add("Junagadh");
                ddlCity.Items.Add("Gandhinagar");
                ddlCity.Items.Add("Anand");
                ddlCity.Items.Add("Navsari");
            }
            else if (ddlState.SelectedValue == "haryana")
            {
                ddlCity.Items.Add("Faridabad");
                ddlCity.Items.Add("Gurugram");
                ddlCity.Items.Add("Panipat");
                ddlCity.Items.Add("Ambala");
                ddlCity.Items.Add("Yamunanagar");
                ddlCity.Items.Add("Rohtak");
                ddlCity.Items.Add("Hisar");
                ddlCity.Items.Add("Karnal");
                ddlCity.Items.Add("Sonipat");
                ddlCity.Items.Add("Panchkula");
            }
            else if (ddlState.SelectedValue == "himachal pradesh")
            {
                ddlCity.Items.Add("Shimla");
                ddlCity.Items.Add("Mandi");
                ddlCity.Items.Add("Solan");
                ddlCity.Items.Add("Dharamshala");
                ddlCity.Items.Add("Baddi");
                ddlCity.Items.Add("Nahan");
                ddlCity.Items.Add("Kullu");
                ddlCity.Items.Add("Palampur");
                ddlCity.Items.Add("Hamirpur");
                ddlCity.Items.Add("Una");
            }
            else if (ddlState.SelectedValue == "jharkhand")
            {
                ddlCity.Items.Add("Ranchi");
                ddlCity.Items.Add("Jamshedpur");
                ddlCity.Items.Add("Dhanbad");
                ddlCity.Items.Add("Bokaro");
                ddlCity.Items.Add("Hazaribagh");
                ddlCity.Items.Add("Deoghar");
                ddlCity.Items.Add("Phusro");
                ddlCity.Items.Add("Giridih");
                ddlCity.Items.Add("Ramgarh");
                ddlCity.Items.Add("Medininagar");
            }
            else if (ddlState.SelectedValue == "karnataka")
            {
                ddlCity.Items.Add("Bengaluru");
                ddlCity.Items.Add("Mysuru");
                ddlCity.Items.Add("Hubballi-Dharwad");
                ddlCity.Items.Add("Mangaluru");
                ddlCity.Items.Add("Belagavi");
                ddlCity.Items.Add("Kalaburagi");
                ddlCity.Items.Add("Vijayapura");
                ddlCity.Items.Add("Ballari");
                ddlCity.Items.Add("Davanagere");
                ddlCity.Items.Add("Tumakuru");
            }
            else if (ddlState.SelectedValue == "kerala")
            {
                ddlCity.Items.Add("Thiruvananthapuram");
                ddlCity.Items.Add("Kochi");
                ddlCity.Items.Add("Kozhikode");
                ddlCity.Items.Add("Thrissur");
                ddlCity.Items.Add("Kollam");
                ddlCity.Items.Add("Kannur");
                ddlCity.Items.Add("Alappuzha");
                ddlCity.Items.Add("Kottayam");
                ddlCity.Items.Add("Palakkad");
                ddlCity.Items.Add("Malappuram");
            }
            else if (ddlState.SelectedValue == "madhya pradesh")
            {
                ddlCity.Items.Add("Indore");
                ddlCity.Items.Add("Bhopal");
                ddlCity.Items.Add("Jabalpur");
                ddlCity.Items.Add("Gwalior");
                ddlCity.Items.Add("Ujjain");
                ddlCity.Items.Add("Sagar");
                ddlCity.Items.Add("Dewas");
                ddlCity.Items.Add("Satna");
                ddlCity.Items.Add("Ratlam");
                ddlCity.Items.Add("Rewa");
            }
            else if (ddlState.SelectedValue == "maharashtra")
            {
                ddlCity.Items.Add("Mumbai");
                ddlCity.Items.Add("Pune");
                ddlCity.Items.Add("Nagpur");
                ddlCity.Items.Add("Thane");
                ddlCity.Items.Add("Nashik");
                ddlCity.Items.Add("Aurangabad");
                ddlCity.Items.Add("Solapur");
                ddlCity.Items.Add("Amravati");
                ddlCity.Items.Add("Kolhapur");
                ddlCity.Items.Add("Navi Mumbai");
            }
            else if (ddlState.SelectedValue == "manipur")
            {
                ddlCity.Items.Add("Imphal");
                ddlCity.Items.Add("Thoubal");
                ddlCity.Items.Add("Kakching");
                ddlCity.Items.Add("Ukhrul");
                ddlCity.Items.Add("Chandel");
                ddlCity.Items.Add("Bishnupur");
                ddlCity.Items.Add("Churachandpur");
                ddlCity.Items.Add("Moreh");
                ddlCity.Items.Add("Lilong");
                ddlCity.Items.Add("Mayang Imphal");
            }
            else if (ddlState.SelectedValue == "meghalaya")
            {
                ddlCity.Items.Add("Shillong");
                ddlCity.Items.Add("Tura");
                ddlCity.Items.Add("Jowai");
                ddlCity.Items.Add("Nongstoin");
                ddlCity.Items.Add("Williamnagar");
                ddlCity.Items.Add("Baghmara");
                ddlCity.Items.Add("Resubelpara");
                ddlCity.Items.Add("Mankachar");
                ddlCity.Items.Add("Nongpoh");
                ddlCity.Items.Add("Khliehriat");
            }
            else if (ddlState.SelectedValue == "mizoram")
            {
                ddlCity.Items.Add("Aizawl");
                ddlCity.Items.Add("Lunglei");
                ddlCity.Items.Add("Champhai");
                ddlCity.Items.Add("Saiha");
                ddlCity.Items.Add("Kolasib");
                ddlCity.Items.Add("Serchhip");
                ddlCity.Items.Add("Lawngtlai");
                ddlCity.Items.Add("Mamit");
                ddlCity.Items.Add("Khawzawl");
                ddlCity.Items.Add("Hnahthial");
            }
            else if (ddlState.SelectedValue == "nagaland")
            {
                ddlCity.Items.Add("Kohima");
                ddlCity.Items.Add("Dimapur");
                ddlCity.Items.Add("Mokokchung");
                ddlCity.Items.Add("Tuensang");
                ddlCity.Items.Add("Wokha");
                ddlCity.Items.Add("Zunheboto");
                ddlCity.Items.Add("Phek");
                ddlCity.Items.Add("Mon");
                ddlCity.Items.Add("Kiphire");
                ddlCity.Items.Add("Longleng");
            }
            else if (ddlState.SelectedValue == "odisha")
            {
                ddlCity.Items.Add("Bhubaneswar");
                ddlCity.Items.Add("Cuttack");
                ddlCity.Items.Add("Rourkela");
                ddlCity.Items.Add("Berhampur");
                ddlCity.Items.Add("Sambalpur");
                ddlCity.Items.Add("Puri");
                ddlCity.Items.Add("Balasore");
                ddlCity.Items.Add("Bhadrak");
                ddlCity.Items.Add("Baripada");
                ddlCity.Items.Add("Jharsuguda");
            }
            else if (ddlState.SelectedValue == "punjab")
            {
                ddlCity.Items.Add("Ludhiana");
                ddlCity.Items.Add("Amritsar");
                ddlCity.Items.Add("Jalandhar");
                ddlCity.Items.Add("Patiala");
                ddlCity.Items.Add("Bathinda");
                ddlCity.Items.Add("Mohali");
                ddlCity.Items.Add("Pathankot");
                ddlCity.Items.Add("Hoshiarpur");
                ddlCity.Items.Add("Moga");
                ddlCity.Items.Add("Firozpur");
            }
            else if (ddlState.SelectedValue == "rajasthan")
            {
                ddlCity.Items.Add("Jaipur");
                ddlCity.Items.Add("Jodhpur");
                ddlCity.Items.Add("Kota");
                ddlCity.Items.Add("Bikaner");
                ddlCity.Items.Add("Ajmer");
                ddlCity.Items.Add("Udaipur");
                ddlCity.Items.Add("Bhilwara");
                ddlCity.Items.Add("Alwar");
                ddlCity.Items.Add("Sikar");
                ddlCity.Items.Add("Sri Ganganagar");
            }
            else if (ddlState.SelectedValue == "sikkim")
            {
                ddlCity.Items.Add("Gangtok");
                ddlCity.Items.Add("Namchi");
                ddlCity.Items.Add("Gyalshing");
                ddlCity.Items.Add("Mangan");
                ddlCity.Items.Add("Singtam");
                ddlCity.Items.Add("Rangpo");
                ddlCity.Items.Add("Jorethang");
                ddlCity.Items.Add("Ravangla");
                ddlCity.Items.Add("Legship");
                ddlCity.Items.Add("Chungthang");
            }
            else if (ddlState.SelectedValue == "tamil nadu")
            {
                ddlCity.Items.Add("Chennai");
                ddlCity.Items.Add("Coimbatore");
                ddlCity.Items.Add("Madurai");
                ddlCity.Items.Add("Tiruchirappalli");
                ddlCity.Items.Add("Salem");
                ddlCity.Items.Add("Tirunelveli");
                ddlCity.Items.Add("Tiruppur");
                ddlCity.Items.Add("Erode");
                ddlCity.Items.Add("Vellore");
                ddlCity.Items.Add("Thoothukudi");
            }
            else if (ddlState.SelectedValue == "telangana")
            {
                ddlCity.Items.Add("Hyderabad");
                ddlCity.Items.Add("Warangal");
                ddlCity.Items.Add("Nizamabad");
                ddlCity.Items.Add("Karimnagar");
                ddlCity.Items.Add("Khammam");
                ddlCity.Items.Add("Ramagundam");
                ddlCity.Items.Add("Mahbubnagar");
                ddlCity.Items.Add("Nalgonda");
                ddlCity.Items.Add("Adilabad");
                ddlCity.Items.Add("Suryapet");
            }
            else if (ddlState.SelectedValue == "tripura")
            {
                ddlCity.Items.Add("Agartala");
                ddlCity.Items.Add("Udaipur");
                ddlCity.Items.Add("Dharmanagar");
                ddlCity.Items.Add("Kailashahar");
                ddlCity.Items.Add("Belonia");
                ddlCity.Items.Add("Khowai");
                ddlCity.Items.Add("Teliamura");
                ddlCity.Items.Add("Ambassa");
                ddlCity.Items.Add("Santirbazar");
                ddlCity.Items.Add("Kumarghat");
            }
            else if (ddlState.SelectedValue == "uttar pradesh")
            {
                ddlCity.Items.Add("Lucknow");
                ddlCity.Items.Add("Kanpur");
                ddlCity.Items.Add("Ghaziabad");
                ddlCity.Items.Add("Agra");
                ddlCity.Items.Add("Meerut");
                ddlCity.Items.Add("Varanasi");
                ddlCity.Items.Add("Prayagraj");
                ddlCity.Items.Add("Bareilly");
                ddlCity.Items.Add("Aligarh");
                ddlCity.Items.Add("Moradabad");
            }
            else if (ddlState.SelectedValue == "uttarakhand")
            {
                ddlCity.Items.Add("Dehradun");
                ddlCity.Items.Add("Haridwar");
                ddlCity.Items.Add("Roorkee");
                ddlCity.Items.Add("Haldwani");
                ddlCity.Items.Add("Rudrapur");
                ddlCity.Items.Add("Kashipur");
                ddlCity.Items.Add("Rishikesh");
                ddlCity.Items.Add("Pithoragarh");
                ddlCity.Items.Add("Mussoorie");
                ddlCity.Items.Add("Nainital");
            }
            else if (ddlState.SelectedValue == "west bengal")
            {
                ddlCity.Items.Add("Kolkata");
                ddlCity.Items.Add("Asansol");
                ddlCity.Items.Add("Siliguri");
                ddlCity.Items.Add("Durgapur");
                ddlCity.Items.Add("Bardhaman");
                ddlCity.Items.Add("Malda");
                ddlCity.Items.Add("Baharampur");
                ddlCity.Items.Add("Howrah");
                ddlCity.Items.Add("Jalpaiguri");
                ddlCity.Items.Add("Kharagpur");
            }

        }
        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            fnBindcity();
        }



        protected void btnRegister_Click1(object sender, EventArgs e)
        {
            try
            {


                string Fname = txtFname.Text;
                string Lname = txtLname.Text;
                string experi = ddlExperience.SelectedValue;
                DateTime dob = DateTime.Parse(txtDob.Text); // Convert DOB to DateTime
                string gender = rblGender.SelectedValue;
                decimal phone = decimal.Parse(txtPhone.Text); // Parse phone to decimal
                string email = txtEmail.Text;
                string address = txtAddress.Text;
                string state = ddlState.SelectedValue;
                string city = ddlCity.SelectedValue;
                string username = txtUname.Text;
                string password = txtPassword.Text;
                string conpassword = txtCpaasword.Text;

                // Validate password and confirm password
                if (password != conpassword)
                {
                    Response.Write("Passwords do not match.");
                    return;
                }

                //// Handle file uploads
                byte[] picture = null;
                byte[] resume = null;

                if (fuProfilepicture.HasFile)
                {
                    picture = GetFileBytes(fuProfilepicture.PostedFile); // Convert profile photo to binary
                }
                if (fuResume.HasFile)
                {
                    resume = GetFileBytes(fuResume.PostedFile); // Convert resume to binary
                }

                DateTime now = DateTime.Now;

                string currentDate = now.ToString("yyyy-MM-dd"); // Format as YYYY-MM-DD
                Console.WriteLine("Current Date (String): " + currentDate);

                string currentDateTime = now.ToString("yyyy-MM-dd HH:mm:ss"); // Format with time
                Console.WriteLine("Current Date and Time (String): " + currentDateTime);


                // SQL query
                string query = @"
    INSERT INTO tbl_jobseeker
    (firstname, lastname, username, gender, birthday, email, phonenumber, password, addreess, state, city, experience, resume, profilephoto, createtime)
    VALUES 
    (@f_name, @l_name, @user, @gender, @dob, @email, @phone, @pass, @address, @state, @city, @experience, @resume, @picture, @createtime)";


                using (SqlConnection con = new SqlConnection(strcon))
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        // Add parameters
                        cmd.Parameters.AddWithValue("@f_name", Fname);
                        cmd.Parameters.AddWithValue("@l_name", Lname);
                        cmd.Parameters.AddWithValue("@user", username);
                        cmd.Parameters.AddWithValue("@gender", gender);
                        cmd.Parameters.AddWithValue("@dob", dob);
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@phone", phone);
                        cmd.Parameters.AddWithValue("@pass", password);
                        cmd.Parameters.AddWithValue("@address", address);
                        cmd.Parameters.AddWithValue("@state", state);
                        cmd.Parameters.AddWithValue("@city", city);
                        cmd.Parameters.AddWithValue("@experience", experi);
                        cmd.Parameters.AddWithValue("@resume", resume); // Binary data for resume
                        cmd.Parameters.AddWithValue("@picture", picture); // Binary data for profile photo
                        cmd.Parameters.AddWithValue("@createtime", currentDateTime); // Current timestamp


                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }

                // Refresh grid or notify user

                Response.Redirect("~/Job Seeker Dashboard/jobseeker_main.aspx");

            }
            catch (Exception el)
            {

                Response.Write(el.ToString());
            }
        }

        //convety to binary 
        private byte[] GetFileBytes(HttpPostedFile postedFile)
        {
            using (var binaryReader = new System.IO.BinaryReader(postedFile.InputStream))
            {
                return binaryReader.ReadBytes(postedFile.ContentLength);
            }
        }


    }

}


