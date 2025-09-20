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
    <li class="nav-item"><a class="nav-link" href="/company/Company.aspx" style="color: #059669;">Employers</a></li>
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
