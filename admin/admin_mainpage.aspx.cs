using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal.admin
   
 {
    public partial class admin_mainpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null && Session["UserRole"].ToString() == "Admin")
            {
                string username = Session["Username"].ToString();
                lblUsername.Text = username;
            }
            else
            {
                Response.Redirect("~/login_page.aspx");
            }
        }
    }
}