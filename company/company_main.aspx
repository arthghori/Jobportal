<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="company_main.aspx.cs" Inherits="job_portal.company.company_main" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
      <link rel="icon" type="image/x-icon" href="Images/Static/white_logo.png" />
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Company dashboard</title>
    <style>
        .nav-link{
           color:#059669;
         }
          
      .bottom-bar {
          margin-top: 25px;
          padding-top: 10px;
          border-top: 1px solid rgba(255, 255, 255, 0.2);
          text-align:center;  
        }
      .bottom-bar a{
          text-decoration:none;
          color:white;
        }
        .footer a {
            text-decoration: none;
            color: white;
        }
        body {
        background-color: #f8f9fa;
    }
    .nav {
    display: flex;
    align-items: center;
    list-style: none;
    padding: 0;
    margin: 0;
}

/* Moves Jobs, Messages, and Profile to the Right */
.nav-right {
    display: flex;
    align-items: center;
    margin-left: auto;  /* Pushes it to the right */
    gap: 20px; /* Space between items */
}

.nav-item {
    margin: 0 15px;
}

.profile-dropdown {
    position: relative;
    cursor: pointer;
}

.profile-icon {
    border-radius: 50%;
    width: 90px;
    height: 90px;
    cursor: pointer;
}

.dropdown-menu {
    position: absolute;
    top: 100%;
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

/* Show dropdown on hover */
.nav-item.dropdown:hover .dropdown-menu,
.profile-dropdown:hover .dropdown-menu {
    display: block;
}


/* Container */
.containeri {
    max-width: 900px;
    margin: 20px auto;
    padding: 20px;
    background: white;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

/* Heading */
h2 {
    color: #333;
    text-align: center;
}

/* Job Card */
.job-card {
    background: #fff;
    border-radius: 8px;
    padding: 15px;
    margin-bottom: 15px;
    border-left: 5px solid #059669;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    transition: transform 0.2s;
}

.job-card:hover {
    transform: translateY(-3px);
}

/* Job Title */
.job-card h4 {
    margin: 0;
    color: #333;
}

/* Job Details */
.job-card p {
    font-size: 14px;
    color: #666;
    margin: 5px 0;
}

.job-card span {
    display: block;
    font-weight: bold;
}

/* Applications Button */
.btn {
    display: inline-block;
    padding: 8px 15px;
    background: #059669;
    color: white;
    border: none;
    border-radius: 5px;
    text-decoration: none;
    font-size: 14px;
    font-weight: bold;
    transition: background 0.3s;
}

.btn:hover {
    background: #047857;
}

.cards-container {
    display: flex;
    justify-content: space-between; /* Adjusts spacing between cards */
    align-items: center;
    flex-wrap: wrap; /* Ensures responsiveness */
    gap: 20px; /* Adds spacing between cards */
    padding: 20px;
}

.card {
    width: 48%; /* Adjusts width to fit two cards in a row */
    background: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    text-align: center;
}

.card img {
    width: 100%;
    height: auto;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
}

.p-3 {
    padding: 15px;
}


        .auto-style1 {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-clip: border-box;
            border-radius: 10px;
            width: 40%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            text-align: center;
            left: -6px;
            top: -19px;
            background: #fff;
        }
        .auto-style2 {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-clip: border-box;
            border-radius: 10px;
            width: 40%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            text-align: center;
            left: 4px;
            top: -40px;
            height: 348px;
            background: #fff;
            top:auto
        }


    </style>
</head>
<body>
    <form id="company_main" runat="server">

       <header>
    <ul class="nav nav-tabs" style="font-weight: bold; background-color: #FFFFFF; display: flex; align-items: center; padding: 10px;">
        <li>
            <img src="../Images/JOB FiNDER logo.png" alt="Logo" class="auto-style1" style="width: 100px; height: 100px;" />
        </li>

        <!-- RIGHT SIDE NAV ITEMS -->
        <div class="nav-right">
             <li class="nav-item">
     <a class="nav-link" href="/company/company_main.aspx" style="color: #059669;">Home</a>
 </li>
            <li class="nav-item dropdown">
                <a class="nav-link" href="/company/postedjob_list.aspx" id="jobsDropdown">Jobs</a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/company/job_post.aspx">Add job</a></li>
                    <li><a class="dropdown-item" href="/company/postedjob_list.aspx">Posted jobs</a></li>
                </ul>
            </li>

                       <li class="nav-item">
    <a class="nav-link" href="/common/Contact_us.aspx" style="color: #059669;">Contact us</a>
</li>

            <li class="profile-dropdown">
                <img src="../Images/log_out-removebg-preview.png" alt="Profile" class="profile-icon" />
                <ul class="dropdown-menu">
                    <li><a href="/company/Company_profile.aspx">Profile</a></li>
                    <li><a href="/auth/logout.aspx">Logout</a></li>
                </ul>
            </li>
        </div>
    </ul>
</header>

      
   
        <div class="container mt-4">
     <h3 style="margin-left:120px">Hello <asp:Label ID="lblUsername" runat="server" Text="User"></asp:Label>,</h3>

     <!-- Top Cards Section -->
    <div class="cards-container">
         <div class="card" style="width: 40%;">
         <a href="/company/job_post.aspx" style="text-decoration:none;"> <img src="../Images/Static/mp6swi3s.png" alt="Announce Job" /></a>
             <div class="p-3">
             <a href="/company/job_post.aspx" style="text-decoration:none; color:black;">    <h5>Announce a job vacancy</h5>   </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             </div>
         </div>
         <div class="auto-style2">
             <a href="/company/postedjob_list.aspx" style="text-decoration:none;"> <img src="../Images/Static/a1w0voch.png" alt="Vacancies" /> </a>
             <div class="p-3">
            <a href="/company/postedjob_list.aspx" style="text-decoration:none; color:black;"> <h5>Vacancies announced</h5></a>
 </div>
         </div>
     </div>

     </div>
        <br />
          <br /><br />
                 
   
        <div class="containeri">
            <h2>Recently Posted Jobs</h2>
            <asp:Repeater ID="rptCompanyJobs" runat="server">
                <ItemTemplate>
                    <div class="job-card">
                        <h4><%# Eval("JobTitle") %></h4>
                        <p>
                            <span>👥 Applicants: <%# Eval("ApplicantCount") %></span>
                        </p>
                        <asp:HyperLink ID="lnkApplications" runat="server" NavigateUrl='<%# "Application.aspx?jobpostid=" + Eval("jobpostid") %>' CssClass="btn btn-primary">Applications</asp:HyperLink>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        </form>
                            <div class="footer">
  <div  style="margin-top:300px;margin-bottom:0px; padding:15px; background-color:#059669;color:white; text-align: center; height: 100%" >
      
  <div style="display:flex">

      <div class="col-md-4">
                 <h5 style="margin-top:11px">Quick Links</h5>
                 <ul class="nav flex-column">
                     <li class="nav-item" ><a href="/common/About_us.aspx" >About Us</a></li>
                     <li class="nav-item"><a href="/common/Contact_us.aspx" >Contact Us</a></li>
                     <li class="nav-item"><a href="#" >Our Services</a></li>
                     <li class="nav-item"><a href="/common/Privacy_policy.aspx" >Privacy Policy</a></li>
                     <li class="nav-item"><a href="#" >Terms & Conditions</a></li>
                 </ul>
             </div>

        
             <div class="col-md-4">
                 <h5 style="margin-top:11px">Contact</h5>
                <p> <i class="bi bi-geo-alt-fill"></i> 123 Street, New York, USA</p>
                 <p><i class="bi bi-telephone-fill"></i> +012 345 67890</p>
                 <p><i class="bi bi-envelope-fill"></i> info@example.com</p> 
                 </div>
     
      <br />
                        <div class="col-md-4">
    <h5 style="margin-top:11px">Quick Links</h5>
 <div >
     <input type="text" placeholder="Name" /> <br />
     <input type="email" placeholder="Email address" /><br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <input type="text" placeholder="Message"/>&nbsp;
    <input type="button" value="Send" style="background-color:white;color:#059669;border:0px;height:30px;"/>
  
</div>
                </div>
       </div>
       
         <div class="bottom-bar" >
             <p">© Your Site Name, All Rights Reserved. Designed by <a href="#">HTML Codex</a></p>
             <a href="#">Home</a> | 
             <a href="#">Cookies</a> | 
             <a href="#">Help</a> | 
             <a href="#">FAQs</a>

         </div>
    </div>
     
</div>
</body>
 </html>





