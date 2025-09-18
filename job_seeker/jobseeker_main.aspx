<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jobseeker_main.aspx.cs" Inherits="job_portal.job_seeker.jobseeker_main" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link href="../Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"/>     
        <script src="../Bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="icon" type="image/x-icon" href="../Images/JOB FiNDER logo.png" />
        <title>Job seeker dashboard</title>

        <style>

            html, body {
                overflow-x: hidden;
                margin: 0;
                padding: 0;
                width: 100%;
            }


            .bg-container {
                width: 100%;
                height: 600px; /* Adjust height as needed */
                background-image: url('../Images/Background_img.jpg');
                background-size: cover;
                background-position: top;
                position: relative;
                display: flex; /* Center content */
                align-items: center;
                justify-content: center;
            }

                .bg-container::before {
                    content: "";
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    background-color: rgba(5, 93, 54, 0.7); /* Green overlay */
                    z-index: 0;
                }

            .content {
                position: relative;
                z-index: 1;
                text-align: center;
                width: 40%;
            }

                .content p {
                    font-family: 'Century Schoolbook';
                    font-weight: bolder;
                    font-size: 80px;
                    color: white;
                    text-align: center;
                }
     /* .profile-dropdown {
        position: relative;
        cursor: pointer;
    }

    .profile-icon {
        border-radius: 50%;
        width: 40px;
        height: 40px;
    }

     Dropdown menu styling 
    .dropdown-menu {
        position: absolute;
        top: 50px; 
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

     Ensure dropdown is above everything 
    header {
        position: relative;
        z-index: 10;
    }

    .dropdown-menu li {
        padding: 10px;
        text-align: left;
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

     Show dropdown on hover 
    .profile-dropdown:hover .dropdown-menu {
        display: block;
    }
    */


 
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
        padding: 20px;
    }

    h2 {
        text-align: center;
        color: #333;
    }

    .job-listings {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: center;
    }

    .job-card {
        background: #fff;
        padding: 15px;
        width: 300px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 5px;
        text-align: center;
    }

    .company-logo {
        width: 80px;
        height: 80px;
        object-fit: contain;
        margin-bottom: 10px;
    }

    .job-details p {
        margin: 5px 0;
        font-size: 14px;
        color: #555;
    }

    .btn-apply {
        background-color: #28a745;
        color: white;
        padding: 8px 15px;
        border: none;
        cursor: pointer;
        border-radius: 5px;
        font-size: 14px;
    }

    .btn-apply:hover {
        background-color: #218838;
    }

            .auto-style1 {
                width: 1245px;
                height: 60px;
            }
            .auto-style2 {
                width: 1243px;
                height: 51px;
            }

        </style>
    </head>


    <body>
    <%--     <header>
              <ul class="nav nav-item nav-tabs" style="position: sticky; align-content: center; justify-items: center; background-color: white;">
         <li>
             <img src="../Images/Static/white_logo.png" alt="logo" class="auto-style1" style="width: 100px; height: 100px" />
         </li>

         <li class="nav-item col" style="margin-left: 745px; margin-top: 30px; text-align: center;"><a class="nav-link" href="jobseeker_main.aspx" style="color: #059669;">Home </a></li>
         <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="jobs.aspx" style="color: #059669;">Jobs </a></li>
         <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="applied_job.aspx" style="color: #059669;">Applied Jobs </a></li>
         <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="../Contact_us.aspx" style="color: #059669;">Message </a></li>

         <li class="profile-dropdown">
         <img src="../Images/profile_icon.png" alt="Profile" class="profile-icon" />
         <ul class="dropdown-menu">
             <li><a href="profile.aspx">Profile</a></li>
             <li><a href="settings.aspx">Settings</a></li>
             <li><a href="lockscreen.aspx">Lock Screen</a></li>
             <li><a href="logout.aspx">Logout</a></li>
         </ul>
     </li>

     </ul>
      </header>--%>

        <header>
        <%--<ul class="nav nav-item nav-tabs" style="position: sticky; align-items: center; background-color: white; padding: 10px;">
            <!-- Logo on the left -->
            <li>
                <img src="../Images/JOB FiNDER logo.png" alt="logo" style="width: 100px; height: 100px;" />
            </li>

            <!-- Navigation Links -->
            <div style="display: flex; margin-left: auto; align-items: center; gap: 30px;">
                
                  <li class="nav-item"><a class="nav-link" href="jobseeker_main.aspx" style="color: #059669;">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="jobs.aspx" style="color: #059669;">Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="applied_job.aspx" style="color: #059669;">Applied Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="#" style="color: #059669;">Message</a></li>

                <!-- Profile Dropdown -->
                <li class="profile-dropdown">
                    <img src="../Images/profile_icon.png" alt="Profile" class="profile-icon" />
                    <ul class="dropdown-menu">
                        <li><a href="/Employee/Employee_profile.aspx">Profile</a></li>
                        <li><a href="settings.aspx">Settings</a></li>
                        <li><a href="lockscreen.aspx">Lock Screen</a></li>
                        <li><a href="/logout.aspx">Logout</a></li>
                    </ul>
                </li>
        

            </div>
        </ul>--%>



                    <ul class="nav nav-item nav-tabs " style=" font-weight:bold;background-color: #FFFFFF;">
                <li>
                   <img src="../Images/JOB FiNDER logo.png" alt="Logo" class="auto-style1" style="width: 100px; height: 100px" />
                </li>
                 <div style="display: flex; margin-left: auto; align-items: center; gap: 30px">
                   
                  <li class="nav-item"><a class="nav-link" href="/Job seeker dashboard/jobseeker_main.aspx" style="color: #059669;">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="/Job seeker dashboard/jobs.aspx" style="color: #059669;">Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="/Job seeker dashboard/applied_job.aspx" style="color: #059669;">Applied Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="../Message.aspx" style="color: #059669;">Message</a></li>

          
                <li class="profile-dropdown">
                    <img src="../Images/log_out-removebg-preview.png" alt="Profile" class="profile-icon" />
                    <ul class="dropdown-menu">
                        <li><a href="/Employee/Employee_profile.aspx">Profile</a></li>
                        <li><a href="/logout.aspx">Logout</a></li>
                    </ul>
                </li>
            </div>
    </ul>

    </header>


        <main>
             <h3 style="margin-left:120px" class="auto-style2">Hello <asp:Label ID="lblUsername" runat="server" Text="User"></asp:Label>,</h3>
            <div class="bg-container">
                <div class="content">
                    <p>Recently Added Jobs</p>
                </div>
            </div>

             <form id="form1" runat="server">
             <div class="container">
                <h2>Latest Job Listings</h2>
                <div class="job-listings">
                    <asp:Repeater ID="rptLatestJobs" runat="server" OnItemCommand="rptLatestJobs_ItemCommand">
                        <ItemTemplate>
                            <div class="job-card">
            <asp:Image ID="imgcompanylogo" runat="server" CssClass="company-logo" />
                                <div class="job-details">
                                    <h3><%# Eval("jobtitle") %></h3>
                                    <p><strong>Company:</strong> <%# Eval("companyname") %></p>
                                    <p><strong>Location:</strong> <%# Eval("location") %></p>
                                    <p><strong>Salary:</strong> <%# Eval("salary") %></p>
                                    <p><strong>Job Type:</strong> <%# Eval("jobtype") %></p>
                                    <p><strong>Posted on:</strong> <%# Eval("postdate", "{0:dd MMM yyyy}") %></p>
                                    <p><strong>Deadline:</strong> <%# Eval("applicationdeadline", "{0:dd MMM yyyy}") %></p>
                                </div>
                                <div class="job-actions">
                                    <asp:Button ID="btnApply" runat="server" CssClass="btn-apply" Text="View Details"
                                        CommandArgument='<%# Eval("jobpostid") %>' OnCommand="btnApply_Command" />
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
      </form>




        </main>
            <!-- footer -->
           <footer>
                <div class="row" style="background-color: #059669; color: white; margin-top: 30px;">

         <div class="col" style="margin-left: 100px;">
             <p style="color: white; font-size: 25px; font-weight: bolder;">Quick Links </p>

             <ul class="nav nav-item flex-column">
                 <li class="nav-item col"><a class="nav-link" href="../About_us.aspx" style="color: white;">About us</a></li>
                 <li class="nav-item col"><a class="nav-link" href="../Privacy_policy.aspx" style="color: white;">privacy policy</a></li>
                 <li class="nav-item col"><a class="nav-link" href="../Terms_condition.aspx" style="color: white;">Terms & Condition</a></li>

             </ul>
         </div>

         <div class="col">
             <p style="color: white;margin-left:30px;font-size: 25px; font-weight: bolder;">Contact Us </p>
             <p><i class="bi bi-geo-alt-fill" style="margin-right:10px;"></i>123 Street, New York, USA</p>
             <p><i class="bi bi-telephone-fill" style="margin-right:10px;"></i>+012 345 67890</p>
             <p><i class="bi bi-envelope-fill" style="margin-right:10px;"></i>info@example.com</p>

         </div>
         <hr />
                 <p style="text-align:center;">© Your Site Name, All Rights Reserved. Designed by <a href="#" style="color:white;">HTML Codex</a></p>
     </div>
           </footer>

    
    </body>
    </html>
