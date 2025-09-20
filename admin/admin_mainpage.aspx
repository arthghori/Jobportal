<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_mainpage.aspx.cs" Inherits="job_portal.admin.admin_mainpage" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

        <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
     <link rel="icon" type="../image/x-icon" href="Images/Static/white_logo.png" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>logo</title>
   
<style>
            
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

         .card {
            border: none;
            border-radius: 10px;
            transition: transform 0.2s ease-in-out;
            background:linear-gradient(135deg,#059669,#08f7ab);
             color:white;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .card-title {
            font-size: 18px;
            font-weight: bold;
        }
        .nav-link{
             color:#059669;
         }
        .card-title{
            color:azure;
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


      
    </style>
</head>
<body>


     <form id="admin_main" runat="server">

        <ul class="nav nav-item nav-tabs " style=" font-weight:bold;background-color: #FFFFFF;">
            <li>
               <img src="../Images/JOB FiNDER logo.png" alt="Logo" class="auto-style1" style="width: 100px; height: 100px" />
            </li>
             <div style="display: flex; margin-left: auto; align-items: center; gap: 30px">
                  <li class="nav-item"><a class="nav-link" href="/admin_mainpage.aspx" style="color: #059669;">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="/company/jobs.aspx" style="color: #059669;">Jobs</a></li>
            <li class="nav-item"><a class="nav-link" href="/company/Company.aspx" style="color: #059669;">Employers</a></li>
            <li class="nav-item"><a class="nav-link" href="/job_seeker/Job_seeker.aspx" style="color: #059669;">Job Seekers</a></li>

          
            <li class="profile-dropdown">
                <img src="../Images/log_out-removebg-preview.png" alt="Profile" class="profile-icon" />
                <ul class="dropdown-menu">
                    <li><a href="/admin_profile.aspx">Profile</a></li>
                    <li><a href="/auth/logout.aspx">Logout</a></li>
                </ul>
            </li>
        </div>



          <!--  <li class="nav-item col" style="margin-left: 850px; margin-top: 38px;margin-bottom: 30px; text-align:center;"><a class="nav-link" href="#"> Jobs </a></li>
            <li class="nav-item col" style="margin-top: 38px;margin-bottom: 30px; text-align:center;"><a class="nav-link" href="Company.aspx">Employers </a></li>
            <li class="nav-item col" style="margin-top: 38px;margin-bottom: 30px; text-align:center;"><a class="nav-link"href="Job_seeker.aspx">job Seekers </a></li>
         <!--   <li><a class="navbar-brand" href="#"><img src="../Images/log_out-removebg-preview.png" alt="profile" style="width:100px;height:100px;margin-top: 15px;margin-bottom:15px""/></a></li>
          <li class="nav-item dropdown" style="margin-top: 5px;">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <img alt="Profile" src="../Images/log_out-removebg-preview.png" style="width: 100px; height: 100px; margin-top:0px;margin-bottom:0px" />
        </a>
        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="admin_profile.aspx">Profile</a></li>
            <li><a class="dropdown-item" href="#">Logout</a></li>
        </ul>
    </li>-->
</ul>
        <div class="container mt-4"></div>
                      <h3 style="margin-left:120px">Hello <asp:Label ID="lblUsername" runat="server" Text="User"></asp:Label>,</h3>

        <div style="margin-left:90px;margin-top:50px"> <h3 >Hello Admin</h3>
        </div>

          <div class="row" style="margin-top: 30px; margin-left: 90px;margin-right:90px">
       <div class="col"  style="display: inline-block; width: 150px; height: 200px;">
          <div class="card"  style="background-color:#059669">
              <div class="card-body" style="width:150px;height:150px">
                   <img src="../Images/Skills-removebg-preview.png" atl="image" style="width:30px;height:30px;"/>
                  <div class="card-title"><a class="nav-link"href="Skill1.aspx"></a>Skills</div>
              </div>
          </div>
        </div>
            <div class="col" style="display: inline-block; width: 150px; height: 200px;">
     <div class="card" style="background-color:#059669">
        <!-- <div class="gradient" style="background:linear-gradient(0deg,#059669,white)"></div>-->
         <div class="card-body"  style="width:150px;height:150px" >
              <img src="../Images/Categories-removebg-preview.png" atl="image" style="width:40px;height:40px;"/>
             <div class="card-title"><a class="nav-link"href="category.aspx"></a>Categories</div>
         </div>
     </div>
   </div>

                <div class="col" style="display: inline-block; width: 150px; height: 200px;">         
     <div class="card" style="background-color:#059669">
         <div class="card-body" style="width:150px;height:150px">
              <img src="../Images/add_admin1-removebg-preview.png" atl="image" style="width:40px;height:40px;"/>
             <div class="card-title"><a class="nav-link"href="admin_register.aspx"></a>Add Admin</div>

         </div>
     </div>
   </div>
</div>
                      <div class="row" style="margin-top: 1px; margin-left: 90px;margin-right:90px">
       <div class="col" style="display: inline-block; width: 150px; height: 200px;">
          <div class="card" style="background-color:#059669">
              <div class="card-body" style="width:150px;height:150px">
                   <img src="../Images/Jobseeker1-removebg-preview.png" atl="image" style="width:30px;height:30px;"/>
                  <div class="card-title"><a class="nav-link"href="/job_seeker/Job_seeker.aspx"></a>Job Seekers</div>
       
              </div>
          </div>
        </div>
                         <div class="col" style="display: inline-block; width: 150px; height: 200px;">
     <div class="card" style="background-color:#059669">
         <div class="card-body"  style="width:150px;height:150px" >
              <img src="../Images/Company-removebg-preview.png" atl="image" style="width:30px;height:30px;"/>
             <div class="card-title"><a class="nav-link"href="/company/Company.aspx"></a>Company</div>
       
         </div>
     </div>
   </div>
               <div class="col" style="display: inline-block; width: 150px; height: 200px;">
     <div class="card" style="background-color:#059669">
         <div class="card-body" style="width:150px;height:150px">
             <div> <img src="../Images/Message-removebg-preview.png" atl="image" style="width:30px;height:30px;"/>
             <div class="card-title"><a class="nav-link"href="/common/Message.aspx"></a>Messages</div></div>
         </div>
     </div>
   </div>
</div>
                    </form>


           <div class="footer">
         <div class="row  container-fluid" style="margin-top:300px;margin-bottom:0px; margin-left: 2px; background-color:#059669;color:white; text-align: center; height: 100%" >
             
         

             <div class="col-md-6">
                        <h5 style="margin-top:11px">Quick Links</h5>
                        <ul class="nav flex-column">
                            <li class="nav-item" ><a href="/common/About_us.aspx" >About Us</a></li>
                            <li class="nav-item"><a href="/common/Contact_us.aspx" >Contact Us</a></li>
                            <%--<li class="nav-item"><a href="#" >Our Services</a></li>--%>
                            <li class="nav-item"><a href="/common/Privacy_policy.aspx" >Privacy Policy</a></li>
                            <li class="nav-item"><a href="/common/Terms_condition.aspx" >Terms & Conditions</a></li>
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
             <br />

              
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