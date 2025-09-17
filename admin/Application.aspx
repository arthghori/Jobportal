<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Application.aspx.cs" Inherits="job_portal.admin.Application" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
          <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
      <link rel="icon" type="image/x-icon" href="Images/Static/white_logo.png" />
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"/>
      <script src="Bootstrap/js/bootstrap.bundle.min.js"></script>
    <title></title>
    <style>
        .nav-link {
            color: #059669;
        }

        .bottom-bar {
            margin-top: 25px;
            padding-top: 10px;
            border-top: 1px solid rgba(255, 255, 255, 0.2);
            text-align: center;
        }

            .bottom-bar a {
                text-decoration: none;
                color: white;
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
            margin-left: auto; /* Pushes it to the right */
            gap: 30px; /* Space between items */
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


        /* Table Styles */
        /*.table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background: #fff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

            .table th, .table td {
                padding: 12px 15px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            .table th {
                background: #059669;
                color: white;
                text-transform: uppercase;
            }

            .table tr:hover {
                background: #f5f5f5;
            }*/

        /* Buttons */
        .btn {
            display: inline-block;
            padding: 8px 12px;
            font-size: 14px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            transition: background 0.3s ease-in-out;
        }

        /* View Profile Button */
        .btn-primary {
            background: #059669;
            color: white;
        }

            .btn-primary:hover {
                background: #0056b3;
            }

        /* Approve Button */
        .btn-success {
            background: #28a745;
            color: white;
        }

            .btn-success:hover {
                background: #218838;
            }

        /* Reject Button */
        .btn-danger {
            background: #dc3545;
            color: white;
        }

            .btn-danger:hover {
                background: #c82333;
            }

        /* Search Input */
        /*input[type="text"] {
            padding: 8px;
            width: 250px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-right: 10px;
        }

        *//* Status Dropdown */
        /*select {
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
    background: white;
    cursor: pointer;
        }*/
    </style>
</head>
<body>
    <form id="Application_list" runat="server">
               <header>
    <ul class="nav nav-tabs" style="font-weight: bold; background-color: #FFFFFF; display: flex; align-items: center; padding: 10px;">
        <li>
            <img src="../Images/JOB FiNDER logo.png" alt="Logo" class="auto-style1" style="width: 100px; height: 100px;" />
        </li>

        <!-- RIGHT SIDE NAV ITEMS -->
                <div class="nav-right">
                        <li class="nav-item">
    <a class="nav-link" href="/company_main.aspx" style="color: #059669;">Home</a>
</li>
        <div class="nav-right">
            <li class="nav-item dropdown">
                <a class="nav-link" href="#" id="jobsDropdown">Jobs</a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="job_post.aspx">Add job</a></li>
                    <li><a class="dropdown-item" href="#">Posted jobs</a></li>
                </ul>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="#" style="color: #059669;">Messages</a>
            </li>

            <li class="profile-dropdown">
                <img src="../Images/log_out-removebg-preview.png" alt="Profile" class="profile-icon" />
                <ul class="dropdown-menu">
                    <li><a href="Company_profile.aspx">Profile</a></li>
                    <li><a href="logout.aspx">Logout</a></li>
                </ul>
            </li>
        </div>
    </ul>
</header>



 <div class="container">
            <h2>Applicant List</h2>
<asp:GridView ID="gvApplications" runat="server" AutoGenerateColumns="False" CssClass="table table-striped"
    OnRowCommand="gvApplications_RowCommand">
    <Columns>
        <asp:BoundField DataField="applicationid" HeaderText="Application ID" />
        <asp:BoundField DataField="applicantname" HeaderText="Applicant Name" />
        <asp:BoundField DataField="applicationdate" HeaderText="Date Applied" DataFormatString="{0:MM/dd/yyyy}" />
        <asp:BoundField DataField="status" HeaderText="Status" />

        <asp:TemplateField HeaderText="Actions">
            <ItemTemplate>
  <asp:Button ID="btnViewProfile" runat="server" Text="View Profile" CssClass="btn btn-primary"
                    OnClick="btnViewProfile_Click" CommandArgument='<%# Eval("seekerid") %>' />
                <asp:Button ID="btnApprove" runat="server" Text="Approve" CommandName="Approve"
                    CommandArgument='<%# Eval("applicationid") %>' CssClass="btn btn-success btn-sm" />
                <asp:Button ID="btnReject" runat="server" Text="Reject" CommandName="Reject"
                    CommandArgument='<%# Eval("applicationid") %>' CssClass="btn btn-danger btn-sm" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
</div>







    </form>
                        <div class="footer">
  <div  style="margin-top:300px;margin-bottom:0px; padding:15px; background-color:#059669;color:white; text-align: center; height: 100%" >
      
  <div style="display:flex">

      <div class="col-md-4">
                 <h5 style="margin-top:11px">Quick Links</h5>
                 <ul class="nav flex-column">
                     <li class="nav-item" ><a href="About_us.aspx" >About Us</a></li>
                     <li class="nav-item"><a href="Contact_us.aspx" >Contact Us</a></li>
                     <li class="nav-item"><a href="#" >Our Services</a></li>
                     <li class="nav-item"><a href="Privacy_policy.aspx" >Privacy Policy</a></li>
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


<!--Gridview-->

