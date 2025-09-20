<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_main.aspx.cs" Inherits="job_portal.admin.Admin_main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
     <link rel="icon" type="image/x-icon" href="../Images/Static/white_logo.png" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"/>
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
          .footer a{
               text-decoration:none;
               color:white;
          }
         .social-icon a{
             width:40px;
             height:40px;
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
      
    </style>
</head>
<body>
    <form id="Admin_main" runat="server">
        
        <ul class="nav nav-item nav-tabs " style=" background-color: #FFFFFF;">
            <li>
               <img src="../Images/Static/white_logo.png" alt="logo" class="auto-style1" style="width: 100px; height: 100px" />
            </li>

            <li class="nav-item col" style="margin-left: 850px; margin-top: 35px;margin-bottom: 30px; text-align:center;"><a class="nav-link" href="#"> Jobs </a></li>
            <li class="nav-item col" style="margin-top: 35px;margin-bottom: 30px; text-align:center;"><a class="nav-link" href="/job_seeker/Employer.aspx">Employers </a></li>
            <li class="nav-item col" style="margin-top: 35px;margin-bottom: 30px; text-align:center;"><a class="nav-link"href="/job_seeker/job_seeker.aspx">job Seekers </a></li>
            <li><a class="navbar-brand" href="#"><img src="../Images/log_out-removebg-preview.png" alt="profile" style="width:100px;height:100px;margin-top: 15px;margin-bottom:15px""/></a></li>
          </ul>
        <div class="container mt-4"></div>
        <div style="margin-left:75px;margin-top:50px"> <h3 >Hello Admin</h3>
        </div>

          <div class="row" style="margin-top: 30px; margin-left: 90px;margin-right:90px">
       <div class="col"  style="display: inline-block; width: 150px; height: 200px;">
          <div class="card"  style="background-color:#059669" >
              <div class="card-body" style="width:150px;height:150px">
                   <img src="../Images/1-removebg-preview.png" atl="image" style="width:30px;height:30px;"/>
                  <div class="card-title"><a class="nav-link"href="Skill.aspx"></a>Skills</div>
              </div>
          </div>
        </div>

               <div class="col" style="display: inline-block; width: 150px; height: 200px;">
     <div class="card" style="background-color:#059669">
        <!-- <div class="gradient" style="background:linear-gradient(0deg,#059669,white)"></div>-->
         <div class="card-body"  style="width:150px;height:150px" >
              <img src="../Images/Categories-removebg-preview.png" atl="image" style="width:40px;height:40px;"/>
             <div class="card-title"><a class="nav-link"href="Categories.aspx"></a>Categories</div>
         </div>
             
     </div>
   </div>
            <div class="col" style="display: inline-block; width: 150px; height: 200px;">         
     <div class="card" style="background-color:#059669">
         <div class="card-body" style="width:150px;height:150px">
              <img src="../Images/add_admin1-removebg-preview.png" atl="image" style="width:40px;height:40px;"/>
             <div class="card-title"><a class="nav-link"href="Admin_registration.aspx"></a>Add Admin</div>

         </div>
     </div>
   </div>
</div>
             <div class="row" style="margin-top: 1px; margin-left: 90px;margin-right:90px">
       <div class="col" style="display: inline-block; width: 150px; height: 200px;">
          <div class="card" style="background-color:#059669">
              <div class="card-body" style="width:150px;height:150px">
                   <img src="../Images/jobseeker1-removebg-preview.png" atl="image" style="width:30px;height:30px;"/>
                  <div class="card-title"><a class="nav-link"href="jobseeker.aspx"></a>Job Seekers</div>
       
              </div>
          </div>
        </div>

               <div class="col" style="display: inline-block; width: 150px; height: 200px;">
     <div class="card" style="background-color:#059669">
         <div class="card-body"  style="width:150px;height:150px" >
              <img src="../Images/company-removebg-preview.png" atl="image" style="width:30px;height:30px;"/>
             <div class="card-title"><a class="nav-link"href="Employer.aspx"></a>Company</div>
       
         </div>
     </div>
   </div>
            <div class="col" style="display: inline-block; width: 150px; height: 200px;">
     <div class="card" style="background-color:#059669">
         <div class="card-body" style="width:150px;height:150px">
             <div> <img src="../Images/message-removebg-preview.png" atl="image" style="width:30px;height:30px;"/>
             <div class="card-title"><a class="nav-link"href="#"></a>Messages</div></div>
         </div>
     </div>
   </div>
</div>
     
       <div class="footer">
         <div class="row  container-fluid" style="margin-top:300px;margin-bottom:0px; margin-left: 2px; background-color:#059669;color:white; text-align: center; height: 100%" >
             
             <div class="col-md-4">
                 <h5 style="margin-top:10px">Company</h5>
                 <ul class="nav flex-column">
                     <li class="nav-item"><a  href="#">About Us</a></li>
                     <li class="nav-item"><a  href="#">Contact Us</a></li>
                     <li class="nav-item"><a  href="#">Our Services</a></li>
                     <li class="nav-item"><a  href="#">Privacy Policy</a></li>
                     <li class="nav-item"><a href="#">Terms & Conditions</a></li>
                 </ul>
             </div>
              
                    <div class="col-md-4">
                        <h5 style="margin-top:10px">Quick Links</h5>
                        <ul class="nav flex-column">
                            <li class="nav-item" ><a href="#" >About Us</a></li>
                            <li class="nav-item"><a href="#" >Contact Us</a></li>
                            <li class="nav-item"><a href="#" >Our Services</a></li>
                            <li class="nav-item"><a href="#" >Privacy Policy</a></li>
                            <li class="nav-item"><a href="#" >Terms & Conditions</a></li>
                        </ul>
                    </div>
               
                   
                    <div class="col-md-4">
                        <h5 style="margin-top:10px">Contact</h5>
                       <p> <i class="bi bi-geo-alt-fill"></i> 123 Street, New York, USA</p>
                        <p><i class="bi bi-telephone-fill"></i> +012 345 67890</p>
                        <p><i class="bi bi-envelope-fill"></i> info@example.com</p> 
                 <!--   <ul  class=" nav">
                    <li class="nav-item">&nbsp; <img src="Images/white-Facebook-icon-removebg-preview.png" style="width: 50px; height: 50px" class="auto-style2" /></li>
                    <li class="nav-item"> &nbsp;&nbsp; <img src="Images/white_twitter_icon-removebg-preview.png" class="auto-style3" style="width: 65px; height:68px" /></li>
                    <li class="nav-item"> &nbsp; <img src="Images/white_youtube_icon-removebg-preview.png" style="width: 72px; height: 71px" /></li>
                    <li class="nav-item"> <img src="Images/white_linkedin_icon-removebg-preview.png" style="width: 65px; height: 68px" /></li>
                </ul>
                        </div>
             <br />-->
                   

              
                <div class="bottom-bar" >
                    <p">© Your Site Name, All Rights Reserved. Designed by <a href="#">HTML Codex</a></p>
                    <a href="#">Home</a> | 
                    <a href="#">Cookies</a> | 
                    <a href="#">Help</a> | 
                    <a href="#">FAQs</a>

                </div>
           </div>
            
       </div>
    </form>
   </body>
    </html>