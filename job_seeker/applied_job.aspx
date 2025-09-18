<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="applied_job.aspx.cs" Inherits="job_portal.job_seeker.applied_job" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="../Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../Bootstrap/js/bootstrap.bundle.min.js"></script>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="icon" type="image/x-icon" href="../Images/JOB FiNDER logo.png" />
    <title>Applied jobs</title>

    <style>
        html, body {
            overflow-x: hidden;
            margin: 0;
            padding: 0;
            width: 100%;
        }

         .nav-link{
      color:#059669;
  }

 .dropdown-menu li {
     padding: 10px;
     text-align: left;
 }
 .profile-dropdown {
     position: relative;
     cursor: pointer;
 }

 .profile-icon {
     border-radius: 50%;
     width: 90px;
     height: 90px;
 }

 .dropdown-menu {
     position: absolute;
     top: 70px; 
     right: 0;
     background-color: white;
     border: 1px solid #ddd;
     border-radius: 5px;
     box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
     list-style: none;
     padding: 10px 0;
     min-width: 150px;
     display: none; 
     z-index: 1000;
 }

.dropdown-menu li a {
     text-decoration: none;
     color: #333;
     display: block;
     padding: 10px 15px;
}

.dropdown-menu li a:hover {
     background-color: #059669;
     color: white;
}

.profile-dropdown:hover .dropdown-menu {
     display: block;
}



.container {
    width: 80%;
    margin: auto;
    text-align: center;
}

.job-card {
    display: inline-block;
    width: 300px;
    margin: 10px;
    padding: 15px;
    border: 1px solid #ddd;
    border-radius: 5px;
    background: #f9f9f9;
    text-decoration:none

}

.job-card h4 {
    margin: 0;
    color: #059669;
    text-decoration:none
}

.approved {
    color: green;
    font-weight: bold;
}

.pending {
    color: orange;
    font-weight: bold;
}

.btn {
    padding: 10px 20px;
    background-color: #059669;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}


    </style>
</head>
<body>
    <form id="applied_job" runat="server">

        <ul class="nav nav-item nav-tabs " style="font-weight: bold; background-color: #FFFFFF;">
            <li>
                <img src="../Images/JOB FiNDER logo.png" alt="Logo" class="auto-style1" style="width: 100px; height: 100px" />
            </li>
            <div style="display: flex; margin-left: auto; align-items: center; gap: 30px">

                <li class="nav-item"><a class="nav-link" href="jobseeker_main.aspx" style="color: #059669;">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="jobs.aspx" style="color: #059669;">Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="applied_job.aspx" style="color: #059669;">Applied Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="../Message.aspx" style="color: #059669;">Message</a></li>


                <li class="profile-dropdown">
                    <img src="../Images/log_out-removebg-preview.png" alt="Profile" class="profile-icon" />
                    <ul class="dropdown-menu">
                        <li><a href="/admin_profile.aspx">Profile</a></li>
                        <li><a href="/logout.aspx">Logout</a></li>
                    </ul>
                </li>
            </div>
        </ul>


        
        <div>
            <img src="../Images/Static/mp6swi3s.png" style="width: 750px; height: 200px;" />&nbsp;
            <img src="../Images/Static/mp6swi3s.png" style="width: 750px; height: 200px;" /></div>



       <%-- main--%>


        <div class="container">
            <h2>Applied Jobs</h2>
            <asp:Button ID="btnApplyNew" runat="server" Text="Apply for new position" CssClass="btn" OnClick="btnApplyNew_Click" />
            <br /><br />
            <asp:Repeater ID="rptAppliedJobs" runat="server">
                <ItemTemplate>
                    <div class="job-card">
                        <h4>
                            <asp:HyperLink ID="lnkJobTitle" runat="server" NavigateUrl='<%# "job_application.aspx?jobpostid=" + Eval("jobpostid") %>'><%# Eval("jobtitle") %></asp:HyperLink>
                        </h4>
                        <p>Applied Date: <%# Eval("applicationdate", "{0:dd-MM-yyyy}") %></p>
                        <p>Status: <span class='<%# Eval("status").ToString() == "Approved" ? "approved" : "pending" %>'><%# Eval("status") %></span></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>




     <%--   <div style="margin-left:300px;margin-top:30px;">
            <!-- Google -->
            <div class="row" style="border: 1px solid #666666; border-radius: 5px; width: 80%; height: 70px; padding-top: 8px;">
                <div class="col">
                    <div style="color: #666666; font-weight: bolder; font-size: large;">
                        <img src="../Images/google_icon.png" alt="google_icon" style="width: 50px; height: 50px;" />
                        Google
                    </div>
                </div>

                <div class="col">
                    <div style="width: 80px; height: 25px; cursor: pointer; text-align: center; border-radius: 5px; background-color: #059669; color: white; font-weight: bolder;">Full time</div>
                    <div style="color: #666666">
                        <img src="../Images/clock_icon.png" style="width: 13px; height: 13px; margin-right: 5px;" />21th Oct 2024
                    </div>
                </div>

                <div class="col">
                    <div style="color: #666666"><img src="../Images/location.png"/ style="width:20px;height:20px;margin-right:5px;"/> India </div>
                    <div style="color: #666666">₹15000-₹25000</div>
               </div>
                            <div class="col" style="padding-top: 0px;">
                    <div style="color:#059669;font-size:25px;text-align:center;font-weight:bolder;cursor:pointer;">
                        Applied!!
                    </div>
                 </div>
        </div>
            <!-- Facebook -->
            <div class="row" style="border: 1px solid #666666; border-radius: 5px; width: 80%; height: 70px; padding-top: 8px; margin-top: 30px;">
                <div class="col">
                    <div style="color: #666666; font-weight: bolder; font-size: large;">
                        <img src="../Images/facebook_icon.png" alt="facebook_icon" style="width: 50px; height: 50px;" />
                        Facebook
                    </div>
                </div>

                <div class="col">
                    <div style="width: 80px; height: 25px; cursor: pointer; text-align: center; border-radius: 5px; background-color: #059669; color: white; font-weight: bolder;">Full time</div>
                    <div style="color: #666666">
                        <img src="../Images/clock_icon.png" style="width: 13px; height: 13px; margin-right: 5px;" />8th Jan 2025
                    </div>
                </div>
                
                <div class="col">
                      <div style="color: #666666"><img src="../Images/location.png"/ style="width:20px;height:20px;margin-right:5px;"/> Euro </div>
                      <div style="color: #666666"> €8000- €10000</div>
                </div>      

                <div class="col" style="padding-top: 10px;">
                    <div style="color: #059669; font-size: 25px; text-align: center; font-weight: bolder; cursor: pointer;">
                        Applied!!
                    </div>
                </div>
            </div>


             <!-- Android -->
             <div class="row" style="border: 1px solid #666666;border-radius:5px; width: 80%; height: 70px; padding-top: 8px;margin-top:30px;">
                 <div class="col">
                     <div style="color: #666666; font-weight: bolder; font-size: large;">
                         <img src="../Images/anroid_icon.png" alt="android_icon" style="width: 50px; height: 50px;" />
                         Android
                     </div>
                 </div>

                 <div class="col">
                     <div style="width: 80px; height: 25px; cursor: pointer; text-align: center; border-radius: 5px; background-color: #059669; color: white; font-weight: bolder;">Remote</div>
                     <div style="color: #666666">
                         <img src="../Images/clock_icon.png" style="width: 13px; height: 13px; margin-right: 5px;" />8th Jan 2025
                     </div>
                 </div>
         
                 <div class="col">
                         <div style="color: #666666"><img src="../Images/location.png"/ style="width:20px;height:20px;margin-right:5px;"/> USA </div>
                         <div style="color: #666666">$50000-$60000</div>
                 </div>

                 <div class="col" style="padding-top: 10px;">
                     <div style="color: #059669; font-size: 25px; text-align: center; font-weight: bolder; cursor: pointer;">
                         Applied!!
                     </div>                        
                 </div>
             </div>
    
</div>--%>

        <!-- footer -->
        <footer>
            <div class="row" style="background-color: #059669; color: white; margin-top: 30px;">

                <%--<div class="col">
        <p style="color: white; font-size: 25px; font-weight: bolder;">Quick Links </p>
        <ul class="nav nav-item">
            <li class="nav-item"><a href="#" class="nav-link" style="color: white;">About us </a></li>
            <li class="nav-item"><a href="#" class="nav-link" style="color: white;">Contact us </a></li>
            <li class="nav-item"><a href="#" class="nav-link" style="color: white;">Privacy Policy </a></li>
            <li class="nav-item"><a href="#" class="nav-link" style="color: white;">Terms & Condition</a></li>
        </ul>
    </div>--%>
                <div class="col" style="margin-left: 100px;">
                    <p style="color: white; font-size: 25px; font-weight: bolder;">Quick Links </p>

                    <ul class="nav nav-item flex-column">
                        <li class="nav-item col"><a class="nav-link" href="../About_us.aspx" style="color: white;">About us</a></li>
                        <li class="nav-item col"><a class="nav-link" href="../Privacy_policy.aspx" style="color: white;">privacy policy</a></li>
                        <li class="nav-item col"><a class="nav-link" href="../Terms_condition.aspx" style="color: white;">Terms & Condition</a></li>

                    </ul>
                </div>

                <div class="col">
                    <p style="color: white; margin-left: 30px; font-size: 25px; font-weight: bolder;">Contact Us </p>
                    <p><i class="bi bi-geo-alt-fill" style="margin-right: 10px;"></i>123 Street, New York, USA</p>
                    <p><i class="bi bi-telephone-fill" style="margin-right: 10px;"></i>+012 345 67890</p>
                    <p><i class="bi bi-envelope-fill" style="margin-right: 10px;"></i>info@example.com</p>

                </div>
                <hr />
                <p style="text-align: center;">© Your Site Name, All Rights Reserved. Designed by <a href="#" style="color: white;">HTML Codex</a></p>
            </div>
        </footer>


    </form>
</body>
</html>
