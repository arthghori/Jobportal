<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jobs.aspx.cs" Inherits="job_portal.company.jobs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="../Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<script src="../Bootstrap/js/bootstrap.bundle.min.js"></script>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="icon" type="image/x-icon" href="../Images/Static/white_logo.png" />
    <title> jobs </title>

    <style>
        html, body {
            overflow-x: hidden;
            margin: 0;
            padding: 0;
            width: 100%;
        }

        #applyfilter {
            box-shadow: 2px 2px 2px grey;
        }

        .nav-link {
            color: #059669;
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

/*
        code body css main*/


/* General Page Styling */
body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    margin: 0;
    padding: 0;
}

.container {
    width: 90%;
    max-width: 1100px;
    margin: 20px auto;
    padding: 20px;
    background: white;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
}

/* Header */
h2 {
    text-align: center;
    color: #333;
    margin-bottom: 20px;
}

.container {
    width: 90%;
    margin: auto;
    padding: 20px;
}

/* Main Content */
.main-content {
    display: flex;
    gap: 20px;
}

/* Filter Sidebar */
.filter-box {
    width: 250px;
    background-color: white;
    padding: 15px;
    border-radius: 5px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
}

.filter-options {
    margin-bottom: 15px;
}

.btn-filter {
    background-color: #008000;
    color: white;
    border: none;
    padding: 10px;
    cursor: pointer;
    width: 100%;
}

/* Job Listings */
.job-listings {
    flex: 1;
    display: flex;
    flex-direction: column;
    gap: 15px;
}

/* Job Card */
.job-card {
    background-color: white;
    display: flex;
    padding: 15px;
    border-radius: 5px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
    align-items: center;
}

.company-logo {
    width: 50px;
    height: 50px;
    margin-right: 15px;
}

.job-details {
    flex: 1;
}

.job-actions {
    display: flex;
    gap: 10px;
}

.btn-details, .btn-apply {
    padding: 8px 15px;
    border: none;
    cursor: pointer;
    border-radius: 5px;
}

.btn-details {
    background-color: white;
    color: #008000;
    border: 1px solid #008000;
}

.btn-apply {
    background-color: #008000;
    color: white;
}


    </style>
</head>

    
<body>
    <form id="jobs_page" runat="server">

        <ul class="nav nav-item nav-tabs " style="font-weight: bold; background-color: #FFFFFF;">
            <li>
                <img src="../Images/JOB FiNDER logo.png" alt="Logo" class="auto-style1" style="width: 100px; height: 100px" />
            </li>
            <div style="display: flex; margin-left: auto; align-items: center; gap: 30px">

                <li class="nav-item"><a class="nav-link" href="/job_seeker/jobseeker_main.aspx" style="color: #059669;">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="/job_seeker/jobs.aspx" style="color: #059669;">Jobs</a></li>
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

       <%-- miain code --%>

        <div class="container">
                <h2>Find Your Dream Job</h2>

                <div class="main-content">

                    <!-- 🔹 Filter Sidebar -->
                    <div class="filter-box">
<h3>Apply Filter</h3>

    <!-- Category Dropdown -->
    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="filter-options"></asp:DropDownList>

    <!-- Experience Filter -->
    <asp:RadioButtonList ID="rblExperience" runat="server" CssClass="filter-options">
        <asp:ListItem Value="">All</asp:ListItem>
        <asp:ListItem Value="Fresher">Fresher</asp:ListItem>
        <asp:ListItem Value="1-3 Years">1-3 Years</asp:ListItem>
        <asp:ListItem Value="3-5 Years">3-5 Years</asp:ListItem>
        <asp:ListItem Value="More than 5 Years">More than 5 Years</asp:ListItem>
    </asp:RadioButtonList>

    <!-- Job Type Filter -->
    <asp:RadioButtonList ID="rblJobType" runat="server" CssClass="filter-options">
        <asp:ListItem Value="">All</asp:ListItem>
        <asp:ListItem Value="Part Time">Part Time</asp:ListItem>
        <asp:ListItem Value="Full Time">Full Time</asp:ListItem>
        <asp:ListItem Value="Contract">Contract</asp:ListItem>
        <asp:ListItem Value="Internship">Internship</asp:ListItem>
    </asp:RadioButtonList>

    <!-- Apply Filter Button -->
    <asp:Button ID="btnFilter" runat="server" CssClass="btn-filter" Text="Apply Filter" OnClick="btnFilter_Click" />
                    </div>

                    <!-- 🔹 Job Listings -->
                    <div class="job-listings">
                        <asp:Repeater ID="rptJobListings" runat="server" EnableViewState="true"  OnItemDataBound="rptJobListings_ItemDataBound" OnItemCommand="rptJobListings_ItemCommand">
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
                                        <asp:Button ID="btnDetails" runat="server" CssClass="btn-details" Text="View Details"
                                            CommandArgument='<%# Eval("jobpostid") %>' OnClick="btnDetails_Click" />
                                    
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>

                </div>
            </div>











        <%--     code of div--%>

      <%--  <p style="font-size:25px;text-align:center;margin-top:30px;color: #059669;font-weight:bolder;"> Top Companies </p>
        
        
        <div id="applyfilter" style="padding-left:10px;border-radius:5px;width:180px;height:100%;border:1px solid black;float:left;margin-left:150px;">
    <div style="font-weight: bolder; font-size: 20px; text-align: center; color: #059669;">Apply filter </div>
    <br />
    <div>
        <div style="color: #059669; font-weight: bold;">Jobs by experience<br />
            <asp:RadioButtonList ID="rblJobexper" runat="server" ForeColor="Black">
                <asp:ListItem>Fresher</asp:ListItem>
                <asp:ListItem>1-3 Year</asp:ListItem>
                <asp:ListItem>3-5 Year</asp:ListItem>
                <asp:ListItem>More than 5 year</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            Job type<br />
            <asp:RadioButtonList ID="rblJobtype" runat="server" ForeColor="Black">
                <asp:ListItem>Part time</asp:ListItem>
                <asp:ListItem>Fulltime</asp:ListItem>
                <asp:ListItem>Contract</asp:ListItem>
                <asp:ListItem>Internship</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            Education<br />
            <asp:RadioButtonList ID="rblJobedu" runat="server" ForeColor="Black">
                <asp:ListItem>10th pass</asp:ListItem>
                <asp:ListItem>12th pass</asp:ListItem>
                <asp:ListItem>Bachelor</asp:ListItem>
                <asp:ListItem>Master</asp:ListItem>
                <asp:ListItem>phD</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        
    </div>
</div>

<div>
    
</div>

        
        
        <div style="margin-left:400px;margin-top:30px;">
            <!-- Google -->

            <div class="row" style=" box-shadow:2px 2px 2px grey;border:1px solid #666666;border-radius:5px;width:90%;height:70px;padding-top:8px;">
                <div class="col">   
                    <div style="color: #666666; font-weight: bolder; font-size: large;"><img src="../Images/google_icon.png" alt="google_icon" style="width:50px;height:50px;"/> Google </div>
                </div>

                <div class="col">
                    <div style="width:80px;height:25px;cursor:pointer; text-align:center;border-radius:5px;background-color: #059669; color: white; font-weight: bolder;">Full time</div>                 
                    <div style="color: #666666"> <img src="../Images/clock_icon.png" style="width:13px;height:13px;margin-right:5px;"/>21th Oct 2024</div>               
                </div>

                <div class="col">
                    <div style="color: #666666"><img src="../Images/location.png"/ style="width:20px;height:20px;margin-right:5px;"/> India </div>
                    <div style="color: #666666">₹15000-₹25000</div>
                </div>

                <div class="col" style="padding-top: 10px;">
                    <div>
                        <img src="../Images/save_icon.png" style="width: 30px; height: 30px; margin-right: 5px;cursor:pointer; " />
                        <button style="background-color: #0596690D; color: #059669; font-weight: bolder; border-radius: 5px;">Details</button>
                        <button style="background-color: #059669; color: white; font-weight: bolder; border-radius: 5px;">Apply Now</button>
                    </div>
                </div>

            </div>

            <!-- Facebook -->
            <div class="row" style=" box-shadow:2px 2px 2px grey;border: 1px solid #666666;border-radius:5px; width: 90%; height: 70px; padding-top: 8px;margin-top:30px;">
                <div class="col">
                    <div style="color: #666666; font-weight: bolder; font-size: large;">
                        <img src="../Images/facebook_icon.png" alt="facebook_icon" style="width: 50px; height: 50px;" />
                        Facebook </div>
                </div>

                <div class="col">
                    <div style="width: 80px; height: 25px;cursor:pointer; text-align: center; border-radius: 5px; background-color: #059669; color: white; font-weight: bolder;">Full time</div>
                    <div style="color: #666666">
                        <img src="../Images/clock_icon.png" style="width: 13px; height: 13px; margin-right: 5px;" />8th Jan 2025</div>
                </div>

                   <div class="col">
                            <div style="color: #666666"><img src="../Images/location.png"/ style="width:20px;height:20px;margin-right:5px;"/> Euro </div>
                            <div style="color: #666666"> €8000- €10000</div>
                </div>

                <div class="col" style="padding-top: 10px;">
                    <div>
                        <img src="../Images/save_icon.png" style="width: 30px; height: 30px; margin-right: 5px;cursor:pointer; " />
                        <button style="background-color: #0596690D; color: #059669; font-weight: bolder; border-radius: 5px;">Details</button>
                        <button style="background-color: #059669; color: white; font-weight: bolder; border-radius: 5px;">Apply Now</button>
                    </div>
                </div>
            </div>

            <!-- Android -->
            <div class="row" style=" box-shadow:2px 2px 2px grey;border: 1px solid #666666;border-radius:5px; width: 90%; height: 70px; padding-top: 8px;margin-top:30px;">
                <div class="col">
                    <div style="color: #666666; font-weight: bolder; font-size: large;">
                        <img src="../Images/anroid_icon.png" alt="android_icon" style="width: 50px; height: 50px;" />
                        Android </div>
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
                    <div>
                        <img src="../Images/save_icon.png" style="width: 30px; height: 30px; margin-right: 5px; cursor: pointer;" />
                        <button style="background-color: #0596690D; color: #059669; font-weight: bolder; border-radius: 5px;">Details</button>
                        <button style="background-color: #059669; color: white; font-weight: bolder; border-radius: 5px;">Apply Now</button>
                    </div>
                </div>
            </div>


            <!-- Lenovo -->
            <div class="row" style=" box-shadow:2px 2px 2px grey;border: 1px solid #666666; border-radius: 5px; width: 90%; height: 70px; padding-top: 8px; margin-top: 30px;">
                <div class="col">
                    <div style="color: #666666; font-weight: bolder; font-size: large;">
                        <img src="../Images/lenovo_icon.png" alt="lenovo_icon" style="width: 50px; height: 50px;" />
                        Lenovo
                    </div>
                </div>

               <div class="col">
                   <div style="width: 80px; height: 25px; cursor: pointer; text-align: center; border-radius: 5px; background-color: #059669; color: white; font-weight: bolder;">Part time</div>
                   <div style="color: #666666">
                       <img src="../Images/clock_icon.png" style="width: 13px; height: 13px; margin-right: 5px;" />8th Jan 2025
                   </div>
               </div>

                <div class="col">
                        <div style="color: #666666"><img src="../Images/location.png"/ style="width:20px;height:20px;margin-right:5px;"/> UK </div>
                        <div style="color: #666666">$38000-$45000</div>
                </div>

               <div class="col" style="padding-top: 10px;">
                   <div>
                       <img src="../Images/save_icon.png" style="width: 30px; height: 30px; margin-right: 5px; cursor: pointer;" />
                       <button style="background-color: #0596690D; color: #059669; font-weight: bolder; border-radius: 5px;">Details</button>
                       <button style="background-color: #059669; color: white; font-weight: bolder; border-radius: 5px;">Apply Now</button>
                   </div>
               </div>
           </div>

        </div>--%>







        <!-- footer -->
        <footer>
            <div class="row" style="background-color: #059669; color: white; margin-top: 200px;">

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
