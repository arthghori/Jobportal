using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal.auth
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();  // Destroy the session
            Session.Clear();    // Clear session variables
            Response.Redirect("login_page.aspx"); // Redirect to login
        }
    }
}