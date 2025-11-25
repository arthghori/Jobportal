<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Job_seeker.aspx.cs" Inherits="job_portal.job_seeker.Job_seeker" %>

<!DOCTYPE html>
<html>
<head runat="server">
      <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="icon" type="image/x-icon" href="../Images/Static/white_logo.png" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Job Seekers</title>
    <style>

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
        body {
            font-family: Arial, sans-serif;
           /* margin: 20px;*/
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
        h2 {
          margin-top: 30px;
          margin-left:20px;
}
        th {
            background-color: #059669;
        }
        .profile-img {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 5px;
        }
        .search-container {
            margin-bottom: 20px;
        }
        .search-box {
            padding: 8px;
            width: 250px;
            margin-left: 20px;
        }
        .search-btn {
            padding: 8px 15px;
            background-color: #059669;
            color: white;
            border: none;
            cursor: pointer;
        }
        .search-btn:hover {
            background-color: #0056b3;
        }
        .bottom-bar {
            margin-top: 25px;
            padding-top: 10px;
            border-top: 1px solid rgba(255, 255, 255, 0.2);
            text-align:center;
}
        .bottom-bar a {
            text-decoration: none;
            color: white;
            }
        .footer a {
            text-decoration: none;
            color: white;
}
         /* GridView Container */
    .table {
        width: 100%;
        border-collapse: separate;
        border-spacing: 0;
        margin: 20px 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: white;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
        border: 1px solid #e2e8f0;
    }

    /* Header Styling */
    .table th {
        background: linear-gradient(135deg, #059669, #047857);
        color: white;
        font-weight: 600;
        font-size: 14px;
        padding: 18px 12px;
        border: none;
        text-align: left;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        position: relative;
        transition: all 0.3s ease;
    }

    .table th:hover {
        background: linear-gradient(135deg, #047857, #059669);
    }

    /* Data Rows Styling */
    .table td {
        padding: 16px 12px;
        border-bottom: 1px solid #f1f5f9;
        vertical-align: middle;
        transition: all 0.3s ease;
        font-size: 14px;
        color: #374151;
    }

    /* Striped Rows */
    .table-striped tbody tr:nth-of-type(odd) {
        background-color: #f8fafc;
    }

    .table-striped tbody tr:nth-of-type(even) {
        background-color: #ffffff;
    }

    /* Hover Effect */
    .table-hover tbody tr:hover {
        background: linear-gradient(90deg, #f8fafc, #ecfdf5);
        transform: translateY(-1px);
        box-shadow: 0 4px 12px rgba(5, 150, 105, 0.1);
    }

    /* Profile Image Styling */
    .profile-img {
        width: 60px;
        height: 60px;
        border-radius: 50%;
        object-fit: cover;
        border: 3px solid #e2e8f0;
        transition: all 0.3s ease;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    }

    .profile-img:hover {
        transform: scale(1.1);
        border-color: #059669;
        box-shadow: 0 4px 15px rgba(5, 150, 105, 0.3);
    }

    /* Column Specific Styling */
    .table td:first-child { /* First Name */
        font-weight: 600;
        color: #059669;
    }

    .table td:nth-child(2) { /* Last Name */
        font-weight: 600;
        color: #1f2937;
    }

    .table td:nth-child(3) { /* Email */
        color: #2563eb;
        font-weight: 500;
    }

    .table td:nth-child(4) { /* Gender */
        text-transform: capitalize;
        font-weight: 500;
    }

    .table td:nth-child(5) { /* Birthdate */
        color: #6b7280;
        font-family: 'Courier New', monospace;
        font-size: 13px;
    }

    .table td:nth-child(6) { /* Phone Number */
        color: #374151;
        font-weight: 500;
        font-family: 'Courier New', monospace;
    }

    .table td:nth-child(7) { /* Experience */
        color: #059669;
        font-weight: 600;
        background: #ecfdf5;
        padding: 4px 8px;
        border-radius: 20px;
        display: inline-block;
        text-align: center;
        min-width: 60px;
    }

    .table td:nth-child(8) { /* City */
        color: #7c3aed;
        font-weight: 500;
    }

    .table td:nth-child(9) { /* Address */
        max-width: 150px;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        color: #6b7280;
    }

    .table td:nth-child(10) { /* State */
        color: #dc2626;
        font-weight: 500;
    }

    .table td:nth-child(11) { /* Username */
        color: #059669;
        font-weight: 600;
        font-family: 'Courier New', monospace;
        background: #f8fafc;
        padding: 4px 8px;
        border-radius: 6px;
        display: inline-block;
    }

    /* Gender Specific Colors */
    .table td:contains("male") {
        color: #2563eb;
        background: #dbeafe;
        padding: 4px 8px;
        border-radius: 20px;
        display: inline-block;
    }

    .table td:contains("female") {
        color: #dc2626;
        background: #fce7f3;
        padding: 4px 8px;
        border-radius: 20px;
        display: inline-block;
    }

    /* Experience Level Colors */
    .table td:contains("Fresher"),
    .table td:contains("0-1 years"),
    .table td:contains("1-2 years") {
        background: #fef3c7;
        color: #92400e;
    }

    .table td:contains("2-5 years"),
    .table td:contains("3-5 years") {
        background: #d1fae5;
        color: #065f46;
    }

    .table td:contains("5+ years"),
    .table td:contains("Senior") {
        background: #fce7f3;
        color: #be185d;
    }

    /* Responsive Design */
    @media (max-width: 1200px) {
        .table {
            font-size: 13px;
        }
        
        .table th,
        .table td {
            padding: 12px 8px;
        }
        
        .profile-img {
            width: 50px;
            height: 50px;
        }
    }

    @media (max-width: 768px) {
        .table-container {
            overflow-x: auto;
        }
        
        .table {
            min-width: 1200px;
            font-size: 12px;
        }
        
        .table th,
        .table td {
            padding: 10px 6px;
        }
        
        .profile-img {
            width: 40px;
            height: 40px;
        }
        
        .table td:nth-child(9) { /* Address */
            max-width: 120px;
        }
    }

    /* Animation */
    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .table tbody tr {
        animation: fadeInUp 0.5s ease forwards;
        opacity: 0;
    }

    /* Stagger animation for rows */
    .table tbody tr:nth-child(1) { animation-delay: 0.1s; }
    .table tbody tr:nth-child(2) { animation-delay: 0.2s; }
    .table tbody tr:nth-child(3) { animation-delay: 0.3s; }
    .table tbody tr:nth-child(4) { animation-delay: 0.4s; }
    .table tbody tr:nth-child(5) { animation-delay: 0.5s; }

    /* Empty state styling */
    .table td[colspan] {
        text-align: center;
        padding: 60px 20px;
        background: linear-gradient(135deg, #f8fafc, #f1f5f9);
        color: #6b7280;
        font-size: 16px;
        font-weight: 500;
    }

    /* Focus states for accessibility */
    .table tbody tr:focus-within {
        background: #ecfdf5;
        outline: 2px solid #059669;
        outline-offset: -2px;
    }
    </style>
</head>
<body>
    <form id="jobseekerlist" runat="server">
                        <ul class="nav nav-item nav-tabs " style=" font-weight:bold;background-color: #FFFFFF;">
    <li>
       <img src="../Images/JOB FiNDER logo.png" alt="Logo" class="auto-style1" style="width: 100px; height: 100px" />
    </li>
     <div style="display: flex; margin-left: auto; align-items: center; gap: 30px">
         <li class="nav-item"><a class="nav-link" href="/admin/admin_mainpage.aspx" style="color: #059669;">Home</a></li>
    <li class="nav-item"><a class="nav-link" href="#" style="color: #059669;">Jobs</a></li>
    <li class="nav-item"><a class="nav-link" href="/company/Company.aspx" style="color: #059669;">Company</a></li>
    <li class="nav-item"><a class="nav-link" href="/job_seeker/Job_seeker.aspx" style="color: #059669;">Job Seekers</a></li>

         <li class="profile-dropdown">
    <img src="../Images/log_out-removebg-preview.png" alt="Profile" class="profile-icon" />
    <ul class="dropdown-menu">
        <li><a href="/admin/admin_profile.aspx">Profile</a></li>
        <li><a href="/auth/logout.aspx">Logout</a></li>
    </ul>
</li>

</div>
            </ul>
    
        <div>
            <h2>Job Seekers</h2>
            <div class="search-container">
                <asp:TextBox ID="txtSearch" runat="server" CssClass="search-box" Placeholder="Search..."></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" CssClass="search-btn" Text="Search"  />
            </div>

            <asp:GridView ID="gvJobSeekers" runat="server" AutoGenerateColumns="False" OnRowDataBound="gvJobSeekers_RowDataBound" CssClass="table">
                <Columns>
                    <asp:BoundField DataField="firstname" HeaderText="First Name" />
                    <asp:BoundField DataField="lastname" HeaderText="Last Name" />
                    <asp:BoundField DataField="email" HeaderText="Email" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" />
                    <asp:BoundField DataField="birthday" HeaderText="Birthdate" DataFormatString="{0:yyyy/MM/dd}" />
                    <asp:BoundField DataField="phonenumber" HeaderText="Phone Number" />
                    <asp:BoundField DataField="experience" HeaderText="Experience" />
                    <asp:BoundField DataField="city" HeaderText="City" />
                    <asp:BoundField DataField="addreess" HeaderText="Address" />
                    <asp:BoundField DataField="state" HeaderText="State" />
                    <asp:BoundField DataField="username" HeaderText="Username" />
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="imgProfile" runat="server" CssClass="profile-img" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
                    <div class="footer">
  <div class="" style="margin-top:300px;margin-bottom:0px; padding:15px; background-color:#059669;color:white; text-align: center; height: 100%" >
      
  <div style="display:flex">

      <div class="col-md-6">
                 <h5 style="margin-top:11px">Quick Links</h5>
                 <ul class="nav flex-column">
      <li class="nav-item" ><a href="/common/About_us.aspx" >About Us</a></li>
      <li class="nav-item"><a href="/common/Contact_us.aspx" >Contact Us</a></li>
      <li class="nav-item"><a href="#" >Our Services</a></li>
      <li class="nav-item"><a href="/common/Privacy_policy.aspx" >Privacy Policy</a></li>
      <li class="nav-item"><a href="#" >Terms & Conditions</a></li>
                 </ul>
             </div>

        
             <div class="col-md-6">
                 <h5 style="margin-top:11px">Contact</h5>
                <p> <i class="bi bi-geo-alt-fill"></i> 123 Street, New York, USA</p>
                 <p><i class="bi bi-telephone-fill"></i> +012 345 67890</p>
                 <p><i class="bi bi-envelope-fill"></i> info@example.com</p> 
          <!--  <ul  class=" nav">
             <li class="nav-item">&nbsp; <img src="Images/white-Facebook-icon-removebg-preview.png" style="width: 50px; height: 50px" class="auto-style2" /></li>
             <li class="nav-item"> &nbsp;&nbsp; <img src="Images/white_twitter_icon-removebg-preview.png" class="auto-style3" style="width: 65px; height:68px" /></li>
             <li class="nav-item"> &nbsp; <img src="Images/white_youtube_icon-removebg-preview.png" style="width: 72px; height: 71px" /></li>
             <li class="nav-item"> <img src="Images/white_linkedin_icon-removebg-preview.png" style="width: 65px; height: 68px" /></li>
         </ul>-->
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
