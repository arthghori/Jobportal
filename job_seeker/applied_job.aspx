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
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f8f9fa;
    }

    .nav-link {
        color: #059669 !important;
        font-weight: 500;
        transition: all 0.3s ease;
        padding: 10px 15px !important;
        border-radius: 5px;
    }

    .nav-link:hover {
        background-color: #ecfdf5;
        transform: translateY(-2px);
        color: #047857 !important;
    }

    .dropdown-menu li {
        padding: 8px 0;
        text-align: left;
        transition: all 0.3s ease;
    }

    .profile-dropdown {
        position: relative;
        cursor: pointer;
    }

    .profile-icon {
        border-radius: 50%;
        width: 60px;
        height: 60px;
        transition: transform 0.3s ease;
        border: 2px solid transparent;
    }

    .profile-icon:hover {
        transform: scale(1.05);
        border-color: #059669;
    }

    .dropdown-menu {
        position: absolute;
        top: 70px;
        right: 0;
        background: linear-gradient(135deg, #ffffff 0%, #f8fafc 100%);
        border: 1px solid #e2e8f0;
        border-radius: 10px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        list-style: none;
        padding: 10px 0;
        min-width: 180px;
        display: none;
        z-index: 1000;
        animation: dropdownFade 0.3s ease;
    }

    @keyframes dropdownFade {
        from {
            opacity: 0;
            transform: translateY(-10px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .dropdown-menu li a {
        text-decoration: none;
        color: #374151 !important;
        display: block;
        padding: 10px 20px;
        font-weight: 500;
        transition: all 0.3s ease;
        border-left: 3px solid transparent;
    }

    .dropdown-menu li a:hover {
        background: linear-gradient(135deg, #ecfdf5 0%, #d1fae5 100%);
        color: #059669 !important;
        border-left: 3px solid #059669;
        transform: translateX(5px);
    }

    .profile-dropdown:hover .dropdown-menu {
        display: block;
    }

    /* Container and Main Content */
    .container {
        width: 90%;
        max-width: 1200px;
        margin: 40px auto;
        text-align: center;
        padding: 20px;
    }

    .container h2 {
        color: #059669;
        font-size: 2.5rem;
        font-weight: 700;
        margin-bottom: 30px;
        background: linear-gradient(135deg, #059669, #10b981);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        background-clip: text;
    }

    /* Job Cards */
    .job-card {
        display: inline-block;
        width: 320px;
        margin: 15px;
        padding: 25px;
        border: 2px solid #e2e8f0;
        border-radius: 15px;
        background: linear-gradient(135deg, #ffffff 0%, #f8fafc 100%);
        text-decoration: none;
        transition: all 0.4s ease;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
        position: relative;
        overflow: hidden;
    }

    .job-card::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        height: 4px;
        background: linear-gradient(90deg, #059669, #10b981, #34d399);
    }

    .job-card:hover {
        transform: translateY(-8px);
        box-shadow: 0 15px 35px rgba(5, 150, 105, 0.15);
        border-color: #059669;
    }

    .job-card h4 {
        margin: 0 0 15px 0;
        color: #059669;
        text-decoration: none;
        font-size: 1.4rem;
        font-weight: 600;
        transition: color 0.3s ease;
    }

    .job-card:hover h4 {
        color: #047857;
    }

    .job-card p {
        margin: 8px 0;
        color: #6b7280;
        font-size: 0.95rem;
        line-height: 1.5;
    }

    /* Status Styles */
    .approved {
        color: #10b981 !important;
        font-weight: 600;
        padding: 5px 12px;
        background: #ecfdf5;
        border-radius: 20px;
        display: inline-block;
        border: 1px solid #10b981;
    }

    .pending {
        color: #f59e0b !important;
        font-weight: 600;
        padding: 5px 12px;
        background: #fffbeb;
        border-radius: 20px;
        display: inline-block;
        border: 1px solid #f59e0b;
    }

    /* Button Styles */
    .btn {
        padding: 12px 30px;
        background: linear-gradient(135deg, #059669 0%, #10b981 100%);
        color: white;
        border: none;
        border-radius: 10px;
        cursor: pointer;
        font-weight: 600;
        font-size: 1rem;
        transition: all 0.4s ease;
        box-shadow: 0 4px 15px rgba(5, 150, 105, 0.3);
        position: relative;
        overflow: hidden;
    }

    .btn:hover {
        transform: translateY(-3px);
        box-shadow: 0 8px 25px rgba(5, 150, 105, 0.4);
        background: linear-gradient(135deg, #047857 0%, #059669 100%);
    }

    .btn:active {
        transform: translateY(-1px);
    }

    /* Header Images */
    div img[src*="mp6swi3s.png"] {
        border-radius: 10px;
        margin: 10px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease;
    }

    div img[src*="mp6swi3s.png"]:hover {
        transform: scale(1.02);
    }

    /* Footer Styles */
    footer {
        margin-top: 60px;
    }

    .row[style*="background-color: #059669"] {
        background: linear-gradient(135deg, #059669, #047857) !important;
        color: white;
        padding: 50px 20px 20px 20px;
        margin-top: 60px !important;
    }

    footer .col p[style*="font-size: 25px"] {
        font-size: 1.4rem !important;
        font-weight: 700;
        margin-bottom: 20px;
        position: relative;
        padding-bottom: 10px;
    }

    footer .col p[style*="font-size: 25px"]::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        width: 50px;
        height: 2px;
        background-color: white;
    }

    footer .nav-link {
        color: #d1fae5 !important;
        padding: 5px 0 !important;
        transition: all 0.3s ease;
        text-align: left;
    }

    footer .nav-link:hover {
        color: white !important;
        transform: translateX(8px);
        background: none !important;
    }

    footer .col p {
        color: #d1fae5;
        margin-bottom: 10px;
        display: flex;
        align-items: center;
        transition: color 0.3s ease;
    }

    footer .col p:hover {
        color: white;
    }

    footer hr {
        border-color: rgba(255, 255, 255, 0.3);
        margin: 30px 0 20px 0;
    }

    footer p[style*="text-align: center"] {
        color: #d1fae5;
        font-size: 0.9rem;
    }

    footer p[style*="text-align: center"] a {
        color: white !important;
        text-decoration: none;
        font-weight: 600;
        transition: color 0.3s ease;
    }

    footer p[style*="text-align: center"] a:hover {
        color: #d1fae5 !important;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .container {
            width: 95%;
            margin: 20px auto;
        }

        .job-card {
            width: 100%;
            max-width: 350px;
            margin: 10px 0;
        }

        .container h2 {
            font-size: 2rem;
        }

        .btn {
            width: 100%;
            max-width: 300px;
        }

        div img[src*="mp6swi3s.png"] {
            width: 100% !important;
            height: auto !important;
            margin: 5px 0;
        }
    }

    @media (max-width: 480px) {
        .container h2 {
            font-size: 1.8rem;
        }

        .job-card {
            padding: 20px 15px;
        }

        .profile-icon {
            width: 50px;
            height: 50px;
        }

        .dropdown-menu {
            min-width: 160px;
            right: -20px;
        }
    }

    /* Animation for job cards */
    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(30px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .job-card {
        animation: fadeInUp 0.6s ease forwards;
    }

    .job-card:nth-child(1) { animation-delay: 0.1s; }
    .job-card:nth-child(2) { animation-delay: 0.2s; }
    .job-card:nth-child(3) { animation-delay: 0.3s; }
    .job-card:nth-child(4) { animation-delay: 0.4s; }
    .job-card:nth-child(5) { animation-delay: 0.5s; }

    </style>
</head>
<body>
    <form id="applied_job" runat="server">

        <ul class="nav nav-item nav-tabs " style="font-weight: bold; background-color: #FFFFFF;">
            <li>
                <img src="../Images/JOB FiNDER logo.png" alt="Logo" class="auto-style1" style="width: 100px; height: 100px" />
            </li>
            <div style="display: flex; margin-left: auto; align-items: center; gap: 30px">

                <li class="nav-item"><a class="nav-link" href="/job_seeker/jobseeker_main.aspx" style="color: #059669;">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="/company/jobs.aspx" style="color: #059669;">Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="/job_seeker/applied_job.aspx" style="color: #059669;">Applied Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="/common/Message.aspx" style="color: #059669;">Message</a></li>


                <li class="profile-dropdown">
                    <img src="../Images/log_out-removebg-preview.png" alt="Profile" class="profile-icon" />
                    <ul class="dropdown-menu">
                        <li><a href="/admin/admin_profile.aspx">Profile</a></li>
                        <li><a href="/auth/logout.aspx">Logout</a></li>
                    </ul>
                </li>
            </div>
        </ul>


        
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
                         <li class="nav-item"><a class="nav-link" href="/common/About_us.aspx" style="color:white;">About Us </a></li>
   <li class="nav-item"><a class="nav-link" href="/common/Contact_us.aspx" style="color:white;">Contact Us </a></li>
   <li class="nav-item"><a class="nav-link" href="/common/Privacy_policy.aspx" style="color:white;">Privacy Policy </a></li>
   <li class="nav-item"><a class="nav-link" href="/common/Terms_condition.aspx" style="color:white;">Terms & Condition </a></li>

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
