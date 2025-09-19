<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main_page.aspx.cs" Inherits="job_portal.common.Main_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="Images/JOB FiNDER logo.png" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Job Finder</title>

    <style>

        #txtSearch {
            border-radius: 10px;
        }

        #btnSearch {
            border-radius: 10px;
        }

        .auto-style1 {
            width: 100px;
            height: 100px;   
        }

        .img {
            width: 120px;
            height: 120px;
            text-align: center;
            font-size: 10px;
        }

            .img:hover {
                background-color: #0596690D;
                color: #059669;
                font-weight: bolder;
                box-shadow: 5px 5px 15px grey;
                border-radius: 5px;
            }

        #worksection1:hover {
            background-color: #0596690D;
            color: #059669;
            box-shadow: 5px 5px 15px grey;
            border-radius: 5px;
            cursor: pointer;
        }

        #worksection2:hover {
            background-color: #0596690D;
            color: #059669;
            box-shadow: 5px 5px 15px grey;
            border-radius: 5px;
            cursor: pointer;
        }

        #worksection3:hover {
            background-color: #0596690D;
            color: #059669;
            box-shadow: 5px 5px 15px grey;
            border-radius: 5px;
            cursor: pointer;
        }


        .auto-style2 {
            display: flex;
            flex-wrap: wrap;
            padding-left: 0;
            margin-bottom: 0;
            list-style: none;
            width: 100%;
            height: 100%;
            margin-top: 30px;
        }

        .auto-style3 {
            flex: 0 0 auto;
            width: 30%;
            height: 121px;
        }

        .auto-style4 {
            width: 1818px;
        }

        /*.auto-style5 {
            flex: 1 0 0%;
            width: 100%;
            height: 116px;
        }

        .auto-style6 {
            width: 100%;
            height: 30px;
        }*/

        .auto-style7 {
            flex: 0 0 auto;
            width: 30%
        }

        /*.auto-style8 {
            flex: 1 0 0%;
            width: 99%;
        }*/


        #option1:hover {
            background-color: #0596690D;
            color: #059669;
            box-shadow: 5px 5px 15px grey;
            border-radius: 5px;
            cursor: pointer;
        }

        #option2:hover {
            background-color: #0596690D;
            color: #059669;
            box-shadow: 5px 5px 15px grey;
            border-radius: 5px;
            cursor: pointer;
        }

        #option3:hover {
            background-color: #0596690D;
            color: #059669;
            box-shadow: 5px 5px 15px grey;
            border-radius: 5px;
            cursor: pointer;
        }

        #option4:hover {
            background-color: #0596690D;
            color: #059669;
            box-shadow: 5px 5px 15px grey;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>


</head>
<body>
    <form id="Main_page" runat="server">

        <ul class="nav nav-item nav-tabs " style="font-weight: bold; font-size: 15px;background-color:white;">
            <li>
                <img src="C:\Users\admin\Documents\project\job_portal\Images\JOB FiNDER logo.png" alt="logo" class="auto-style1" style="width: 100px; height: 100px" />
            </li>            
            
            <li class="nav-item col" style="margin-left: 745px; margin-top: 30px; text-align: center;"><a class="nav-link" href="/common/Main_page.aspx" style="color: #059669;"> Home </a></li>
            <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="/company/jobs.aspx" style="color: #059669;">Finds Job </a></li>            
            <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="/common/About_us.aspx" style="color: #059669;">About Us </a></li>
            <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="/common/Contact_us.aspx" style="color: #059669;">Contact Us </a></li>
            <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="/auth/login_page.aspx" style="color: #059669;">Log in </a></li>
            <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="/job_seeker/Employer_Registration.aspx" style="color: #059669;">Register </a></li>



        </ul>
        <!-- section -->
        <div  style="background-image:linear-gradient(#9DD6C4,white);">        
            <div style="/*background-color: #0596690D;*/ text-align: center;">
            <br />
            <div style="font-size: 50px; font-weight: bolder;">
                Join us & <span style="color: #059669">Explore </span>
                <br />
                <span style="color: #059669">Thousands </span>of jobs
            </div>

            <div style="margin-top: 20px;">
                <span style="color: #666666; font-size: 20px;">Find Jobs, Employment & Career Opportunities. </span>
                <br />
                <span style="color: #666666; font-size: 20px;">Some of the companies we've helped recruit excellent applicants over the years.</span>
            </div>


            <div class="auto-style2" style="background-color: white; box-shadow: 5px 5px 15px grey;justify-content:center;align-items:center;margin:auto;width:70%;margin-top:20px;">

                <div class="col" style="margin-top: 10px; margin-bottom: 10px;">
                    <div>
                        <img src="Images/location.png" style="width: 30px; height: 30px;" /><input type="text" placeholder="Location" />
                    </div>
                </div>

                <div class="col" style="margin-top: 10px; margin-bottom: 10px;">
                    <div>
                        <img src="Images/location.png" style="width: 30px; height: 30px;" />
                        <input type="text" placeholder="job type" />
                    </div>
                </div>

                <div class="col" style="margin-top: 10px; margin-bottom: 10px;">
                    <div>
                        <img src="Images/location.png" style="width: 30px; height: 30px;" /><input type="text" placeholder="job" />
                    </div>
                </div>

                <div class="col-2" style="margin-top: 10px; margin-bottom: 10px;">
                    <div>
                        <button id="btnSub" style="color: white; width: 80%; height: 50%; font-weight: bolder; background-color: #059669; border-radius: 5px;">Search</button>
                    </div>
                </div>
            </div>
            <br />
            <br />
        </div>


        <!--
        <div style="float: left; margin-left: 430px;">
            &nbsp;</div>

        <div style="margin-top: 150px; margin-left: 500px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        </div>-->


        <!-- How it works -->
        <div>
            <div style="margin-top: 30px; text-align: center;">
                <div style="font-weight: bolder; font-size: 30px;">How it's Work?</div>
                <br />
                <div style="color: #666666; width: 100%;" class="auto-style4">
                    Search all the open positions on the web. 
                Get your own personalized salary<br />
                    estimate. 
                Read reviews on over 30000+ companies worldwide.
                </div>
            </div>

            <div style="margin-top: 50px; display:flex;text-align: center; justify-content:center;align-items:center;margin:auto;margin-top:20px;">
                <div class="auto-style3" id="worksection1" style="padding-left: 3px; margin-left: 40px;width:15%;height:30%;">
                    <p style="font-weight: bolder; font-size: 15px;">Step 1 </p>

                    <img src="Images/create_icon.png" style="width: 50px; height: 50px;" />
                    <p>Create Account</p>

                </div>
                <div class="auto-style7" id="worksection2" style="padding-left: 3px; margin-left: 20px; margin-left: 40px;width:15%;height:30%;">
                    <p style="font-weight: bolder; font-size: 15px;">Step 2 </p>
                    <img src="Images/watch_icon.png" style="width: 50px; height: 50px;" />
                    <p>Complete Your Profile</p>

                </div>
                <div class="auto-style7" id="worksection3" style="margin-left:30px;padding-left: 3px;width:15%;height:30%;">
                    <p style="font-weight: bolder; font-size: 15px;">Step 3 </p>
                    <img src="Images/camera_icon.png" style="width: 50px; height: 50px;" />
                    <p>Apply Job or Hire</p>

                </div>
            </div>
        </div>
</div>


        <!-- job contact us -->
        <div  style="margin-top: 100px;">
            <div style="float: left; margin-left: 300px;">
                <img src="Images/Contact-Page.png" style="width: 400px; height: 400px;" />
            </div>
            <div>
                <br /><br />
                <p style="font-size:20px;font-weight:bolder;color:#059669;">Millions of jobs.Find the one that's right for you.</p><br />
                <p style="color:#666666">Search all the open positions on the web. Get your own personalized salary estimate. <br />
                    Read reviews on over 30000+ companies worldwide.</p>
                <div><img src="Images/tick_mark-removebg-preview.png" style="width:20px;height:20px;"/><span style="margin-left:10px;color:#666666">Digital Marketing Solutions for Tomorrow</span></div>
                <div><img src="Images/tick_mark-removebg-preview.png" style="width:20px;height:20px;"/><span style="margin-left:10px;color:#666666">Our Talented & Experienced Marketing Agency</span></div>
                <div><img src="Images/tick_mark-removebg-preview.png" style="width:20px;height:20px;"/><span style="margin-left:10px;color:#666666">Create your own skin to match your brand</span></div>

                <div><button style="background-color:#059669;color:white;padding:10px;margin-top:40px;">Contact Us</button></div>
            </div>

        </div>


        <!-- job section -->
        <div style="margin-top: 100px; text-align: center;">
            <p style="font-weight: bolder; font-size: 30px;">Popular Categories</p>
            Search all the open positions on the web. Get your own personalized salary estimate.
            <br />
            Read reviews on over 30000+ companies worldwide.
        </div>

        <div  style="float: right; margin-right: 10px;"><a href="/job_seeker/Finds_job.aspx" style="color: #059669;">All Categories<img src="Images/Static/right_icon.png" style="width: 20px; height: 20px;" /></a></div>
       
        <div class="row" style="margin-top: 100px; margin-left: 200px; margin-right: 100px;">
            <div class="col">
                <div class="img">
                    <img src="Images/1-removebg-preview.png" id="imgDev" style="width: 75px; height: 75px;" />
                    <div>Web Development </div>
                </div>
            </div>

            <div class="col">
                <div class="img">
                    <img src="Images/2-removebg-preview.png" id="imgApp" style="width: 75px; height: 75px;" />
                    <div>Mobile Application </div>
                </div>
            </div>

            <div class="col">
                <div class="img">
                    <img src="../Images/6-removebg-preview.png" id="imgSoftware" style="width: 75px; height: 75px;" />
                    <div>Software Development</div>
                </div>
            </div>
            <div class="col ">
                <div class="img">
                    <img src="../Images/4-removebg-preview.png" id="imgContent" style="width: 75px; height: 75px;" />
                    <div>Content creator</div>
                </div>

            </div>
            <div class="col">
                <div class="img">
                    <img src="../Images/5-removebg-preview.png" id="imgWriter" style="width: 75px; height: 75px;" />
                    <div>Writer </div>
                </div>
            </div>

            <div class="col">
                <div class="img">
                    <img src="../Images/3-removebg-preview.png" img="Marketing" style="width: 75px; height: 75px;" />
                    <div>Sales & Marketing </div>
                </div>
            </div>

        </div>

        <!-- options -->
        <div style="margin-top: 30px; text-align: center;margin-bottom:100px;">
            <p style="font-weight: bolder; font-size: 30px;">Here's why you'll love it Job Finder</p>
            <p style="color: #666666; width: 100%;">Search all the open positions on the web. 
                <br/>
                Get your own personalized salary estimate. Read reviews on over 30000+ companies worldwide.</p>

                <div style="margin-top: 50px; display: flex; text-align: center; justify-content: center; align-items: center; margin: auto; margin-top: 20px;">
                    <div id="option1" style="padding-left: 3px; margin-left: 40px; width: 15%; height: 30%;">
                        <p style="font-weight: bolder; font-size: 15px;">Step 1 </p>

                        <img src="Images/phone_icon-removebg-preview.png" style="width: 50px; height: 50px;" />
                        <p>24/7 Support</p>
                    </div>

                    <div class="auto-style7" id="option2" style="padding-left: 3px; margin-left: 20px; margin-left: 40px; width: 15%; height: 30%;">
                        <p style="font-weight: bolder; font-size: 15px;">Step 2 </p>
                        <img src="Images/startup_icon-removebg-preview.png" style="width: 50px; height: 50px;" />
                        <p>Tech & Startup Jobs</p>
                    </div>

                    <div class="auto-style7" id="option3" style="padding-left: 3px; width: 15%; height: 30%;">
                        <p style="font-weight: bolder; font-size: 15px;">Step 3 </p>
                        <img src="Images/quick_icon-removebg-preview.png" style="width: 50px; height: 50px;" />
                        <p>Quick & Easy</p>

                    </div>

                    <div class="auto-style7" id="option4" style="padding-left: 3px; width: 15%; height: 30%;">
                        <p style="font-weight: bolder; font-size: 15px;">Step 3 </p>
                        <img src="Images/timer_icon-removebg-preview.png" style="width: 50px; height: 50px;" />
                        <p>Save Time</p>

                    </div>
                </div>


        </div>
        


        <!-- footer-->
        <div class="row container-fluid" style="background-color: #059669; color:white; text-align: center; height: 100%;width:100%;margin:0px;padding:0px; ">
            <div class="col" style="font-size:20px; padding-top: 15px; padding-bottom: 15px; padding-left: 15px; width: 100%;">

                <p style="font-weight:bolder;font-size:25px;">LEARN ABOUT US </p>
                <div>
                    <ul class="nav flex-column">
                           <li class="nav-item"><a class="nav-link" href="/common/About_us.aspx" style="color: white;">About Us </a></li>
                        <li class="nav-item"><a class="nav-link" href="/common/Contact_us.aspx" style="color: white;">Contact Us </a></li>
                        <li class="nav-item"><a class="nav-link" href="/common/Privacy_policy.aspx" style="color: white;">Privacy Policy </a></li>
                        <li class="nav-item"><a class="nav-link" href="/common/Terms_condition.aspx" style="color: white;">Terms & Condition </a></li>
                    </ul>
                </div>

            </div>


            <div class="col" style="font-size:20px;text-align:left; padding-top: 15px; padding-bottom: 15px; padding-left: 15px;">
                <p style="font-weight:bolder;font-size:25px;"> CONTACT</p>
                <div><i class="bi bi-telephone-fill" style="margin-right:10px;"></i>Phone : +8880 44338</div>
                <div><i class="bi bi-envelope-fill" style="margin-right:10px;"></i>Email : info@gmail.com</div>

            </div>

            <div class="col" style="text-align:left; padding-top: 15px; padding-bottom: 15px; padding-left: 15px;" >
                <p style="font-size:20px;font-weight:bolder;font-size:25px;">GET IN TOUCH</p>
                <div >
                    <input type="text" placeholder="Name" /> <br />
                    <input type="email" placeholder="Email address" />
                    <div>
                        <input type="text" placeholder="Message"/>
                        <input type="button" value="Send" style="background-color:white;color:#059669;border:0px;height:30px;"/>
                    </div>
                </div>
            </div>

            <hr />

            <p class="">FOLLOW US ON</p>

            <div style="text-align: center;cursor:pointer; " class="w-100">
                <ul class="nav" style="justify-content:center;align-items:center;margin:auto;">
                
                    <li class="nav-justified"><i class="bi bi-instagram"style="margin:20px;"></i></li>
                    <li class="nav-item"><i class="bi bi-facebook"style="margin:20px;"></i></li>
                    <li class="nav-item"><i class="bi bi-github"style="margin:20px;"></i></li>
                    <li class="nav-item"><i class="bi bi-telegram" style="margin:20px;"></i></li>
                    <li class="nav-item"><i class="bi bi-whatsapp" style="margin:20px;"></i></li>
                    <li class="nav-item"><i class="bi bi-twitter"style="margin:20px;"></i></li>
                </ul>

            </div>
</div>

    </form>
</body>
</html>