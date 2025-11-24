<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main_page.aspx.cs" Inherits="job_portal.common.Main_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="../Images/JOB FiNDER logo.png" />
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
            width: 145px;
            height: 163px;
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

        /* 🔹 Global Styles */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #ffffff;
    color: #333333;
}

/* 🔹 Navigation Bar */
.nav.nav-tabs {
    background-color: white !important;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    padding: 0 20px;
    position: sticky;
    top: 0;
    z-index: 1000;
}

.nav-link {
    color: #059669 !important;
    font-weight: 500;
    font-size: 15px;
    transition: all 0.3s ease;
    padding: 15px 20px !important;
}

.nav-link:hover {
    color: #047857 !important;
    background-color: #f0fff4;
    border-radius: 6px;
}

.auto-style1 {
    width: 100px;
    height: 100px;
    transition: transform 0.3s ease;
}

.auto-style1:hover {
    transform: scale(1.05);
}

/* 🔹 Hero Section */
div[style*="background-image:linear-gradient"] {
    background: linear-gradient(135deg, #9DD6C4 0%, #ffffff 100%) !important;
    padding: 60px 20px;
    text-align: center;
}

/* 🔹 Main Heading */
div[style*="font-size: 50px"] {
    font-size: 3.5rem !important;
    font-weight: 800;
    line-height: 1.2;
    margin-bottom: 20px;
    background: linear-gradient(135deg, #059669 0%, #047857 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}

/* 🔹 Search Section */
.auto-style2 {
    background: white !important;
    border-radius: 15px !important;
    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.12) !important;
    padding: 25px !important;
    margin: 30px auto !important;
    max-width: 800px;
    display: flex;
    align-items: center;
    gap: 15px;
    flex-wrap: wrap;
}

.auto-style2 .col {
    flex: 1;
    min-width: 200px;
}

.auto-style2 input[type="text"] {
    width: 100%;
    padding: 12px 15px;
    border: 2px solid #e2e8f0;
    border-radius: 8px;
    font-size: 14px;
    transition: all 0.3s ease;
    background: #f8fafc;
}

.auto-style2 input[type="text"]:focus {
    outline: none;
    border-color: #059669;
    background: white;
    box-shadow: 0 0 0 3px rgba(5, 150, 105, 0.1);
}

#btnSub {
    background: linear-gradient(135deg, #059669 0%, #047857 100%);
    color: white;
    border: none;
    padding: 12px 30px;
    border-radius: 8px;
    font-weight: 600;
    font-size: 16px;
    cursor: pointer;
    transition: all 0.3s ease;
    width: 100%;
}

#btnSub:hover {
    transform: translateY(-2px);
    box-shadow: 0 6px 20px rgba(5, 150, 105, 0.3);
}

/* 🔹 How It Works Section */
.auto-style3, .auto-style7 {
    background: white;
    border-radius: 12px;
    padding: 30px 20px;
    margin: 0 15px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
    border: 1px solid #e2e8f0;
    transition: all 0.3s ease;
    width: 250px !important;
    text-align: center;
}

.auto-style3:hover, .auto-style7:hover {
    transform: translateY(-5px);
    box-shadow: 0 12px 30px rgba(0, 0, 0, 0.15);
    border-color: #059669;
}

.auto-style3 p, .auto-style7 p {
    margin: 10px 0;
    color: #4a5568;
    font-size: 14px;
}

.auto-style3 p:first-child, .auto-style7 p:first-child {
    color: #059669;
    font-weight: 700;
    font-size: 16px;
}

/* 🔹 Job Categories Section */
.img {
    background: white;
    border-radius: 12px;
    padding: 25px 15px;
    margin: 10px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
    border: 1px solid #e2e8f0;
    transition: all 0.3s ease;
    text-align: center;
    cursor: pointer;
}

.img:hover {
    background: linear-gradient(135deg, #059669 0%, #047857 100%);
    transform: translateY(-5px);
    box-shadow: 0 12px 30px rgba(5, 150, 105, 0.3);
    color: white !important;
}

.img:hover div {
    color: white !important;
}

.img div {
    color: #4a5568;
    font-weight: 600;
    font-size: 14px;
    margin-top: 10px;
    transition: color 0.3s ease;
}

.img img {
    width: 70px;
    height: 70px;
    transition: transform 0.3s ease;
}

.img:hover img {
    transform: scale(1.1);
    filter: brightness(0) invert(1);
}

/* 🔹 Contact Section */
div[style*="margin-top: 100px;"]:nth-of-type(2) {
    background: #f8fafc;
    padding: 60px 20px;
    border-radius: 20px;
    margin: 80px 40px;
}

div[style*="margin-top: 100px;"]:nth-of-type(2) p:first-child {
    color: #059669;
    font-size: 2rem;
    font-weight: 700;
    margin-bottom: 20px;
}

div[style*="margin-top: 100px;"]:nth-of-type(2) p:nth-of-type(2) {
    color: #64748b;
    font-size: 16px;
    line-height: 1.6;
    margin-bottom: 25px;
}

div[style*="margin-top: 100px;"]:nth-of-type(2) div div {
    display: flex;
    align-items: center;
    margin: 10px 0;
    color: #64748b;
    font-size: 14px;
}

div[style*="margin-top: 100px;"]:nth-of-type(2) button {
    background: linear-gradient(135deg, #059669 0%, #047857 100%);
    color: white;
    border: none;
    padding: 12px 30px;
    border-radius: 8px;
    font-weight: 600;
    font-size: 16px;
    cursor: pointer;
    transition: all 0.3s ease;
}

div[style*="margin-top: 100px;"]:nth-of-type(2) button:hover {
    transform: translateY(-2px);
    box-shadow: 0 6px 20px rgba(5, 150, 105, 0.3);
}

/* 🔹 Features Section */
#option1, #option2, #option3, #option4 {
    background: white;
    border-radius: 12px;
    padding: 30px 20px;
    margin: 0 10px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
    border: 1px solid #e2e8f0;
    transition: all 0.3s ease;
    width: 220px !important;
    text-align: center;
}

#option1:hover, #option2:hover, #option3:hover, #option4:hover {
    transform: translateY(-5px);
    box-shadow: 0 12px 30px rgba(0, 0, 0, 0.15);
    border-color: #059669;
    background: #f0fff4;
}

/* 🔹 Footer */
.row.container-fluid {
    background: linear-gradient(135deg, #059669 0%, #047857 100%) !important;
    color: white;
    padding: 50px 20px 20px 20px !important;
    margin-top: 80px !important;
}

.footer .col {
    padding: 0 25px;
    margin-bottom: 30px;
}

.footer h5 {
    color: white;
    font-weight: 700;
    font-size: 1.3rem;
    margin-bottom: 20px;
}

.footer .nav-link {
    color: rgba(255, 255, 255, 0.9) !important;
    padding: 6px 0 !important;
    font-size: 14px;
    transition: all 0.3s ease;
}

.footer .nav-link:hover {
    color: white !important;
    text-decoration: underline;
    background: transparent !important;
}

.footer p {
    color: rgba(255, 255, 255, 0.9);
    margin-bottom: 12px;
    font-size: 14px;
}

.footer .bi {
    color: white;
    font-size: 18px;
    margin-right: 10px;
}

/* 🔹 Footer Form */
.footer input[type="text"],
.footer input[type="email"] {
    width: 100%;
    max-width: 280px;
    padding: 10px 12px;
    border: 1px solid rgba(255, 255, 255, 0.3);
    border-radius: 6px;
    background: rgba(255, 255, 255, 0.1);
    color: white;
    margin-bottom: 10px;
    font-size: 14px;
}

.footer input[type="text"]::placeholder,
.footer input[type="email"]::placeholder {
    color: rgba(255, 255, 255, 0.7);
}

.footer input[type="button"] {
    background: white;
    color: #059669;
    border: none;
    padding: 10px 25px;
    border-radius: 6px;
    font-weight: 600;
    cursor: pointer;
    transition: all 0.3s ease;
    margin-top: 5px;
}

.footer input[type="button"]:hover {
    background: #f8fafc;
    transform: translateY(-1px);
}

/* 🔹 Social Icons */
.footer .nav.justify-content-center .bi {
    font-size: 24px;
    color: white;
    transition: all 0.3s ease;
    cursor: pointer;
    margin: 0 15px;
}

.footer .nav.justify-content-center .bi:hover {
    color: #e2e8f0;
    transform: translateY(-2px);
}

/* 🔹 Section Headers */
div[style*="font-weight: bolder; font-size: 30px"] {
    color: #2d3748;
    font-weight: 700;
    font-size: 2.2rem !important;
    margin-bottom: 15px;
}

div[style*="color: #666666; width: 100%"] {
    color: #64748b !important;
    font-size: 16px;
    line-height: 1.6;
    max-width: 600px;
    margin: 0 auto;
}

/* 🔹 Responsive Design */
@media (max-width: 768px) {
    .nav.nav-tabs {
        flex-direction: column;
        padding: 10px;
    }
    
    .auto-style2 {
        flex-direction: column;
        padding: 20px !important;
    }
    
    .auto-style2 .col {
        width: 100%;
    }
    
    .img {
        width: 45%;
        margin: 10px 2.5%;
    }
    
    div[style*="display: flex"] {
        flex-direction: column;
        align-items: center;
    }
    
    .auto-style3, .auto-style7, #option1, #option2, #option3, #option4 {
        width: 80% !important;
        margin: 10px 0;
    }
}

/* 🔹 Smooth Scrolling */
html {
    scroll-behavior: smooth;
}

/* 🔹 Focus States */
button:focus,
input:focus {
    outline: none;
    box-shadow: 0 0 0 3px rgba(5, 150, 105, 0.3);
}

    </style>


</head>
<body>
    <form id="Main_page" runat="server">

        <ul class="nav nav-item nav-tabs " style="font-weight: bold; font-size: 15px;background-color:white;">
            <li>
                <img src="../Images/JOB FiNDER logo.png" alt="logo" class="auto-style1" style="width: 100px; height: 100px" />
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
                        <img src="../Images/location.png" style="width: 30px; height: 30px;" /><input type="text" placeholder="Location" />
                    </div>
                </div>

                <div class="col" style="margin-top: 10px; margin-bottom: 10px;">
                    <div>
                        <img src="../Images/location.png" style="width: 30px; height: 30px;" />
                        <input type="text" placeholder="job type" />
                    </div>
                </div>

                <div class="col" style="margin-top: 10px; margin-bottom: 10px;">
                    <div>
                        <img src="../Images/location.png" style="width: 30px; height: 30px;" /><input type="text" placeholder="job" />
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

                    <img src="../Images/create_icon.png" style="width: 50px; height: 50px;" />
                    <p>Create Account</p>

                </div>
                <div class="auto-style7" id="worksection2" style="padding-left: 3px; margin-left: 20px; margin-left: 40px;width:15%;height:30%;">
                    <p style="font-weight: bolder; font-size: 15px;">Step 2 </p>
                    <img src="../Images/watch_icon.png" style="width: 50px; height: 50px;" />
                    <p>Complete Your Profile</p>

                </div>
                <div class="auto-style7" id="worksection3" style="margin-left:30px;padding-left: 3px;width:15%;height:30%;">
                    <p style="font-weight: bolder; font-size: 15px;">Step 3 </p>
                    <img src="../Images/camera_icon.png" style="width: 50px; height: 50px;" />
                    <p>Apply Job or Hire</p>

                </div>
            </div>
        </div>
</div>


        <!-- job contact us -->
        <div  style="margin-top: 100px;">
            <div style="float: left; margin-left: 300px;">
                <img src="../Images/Contact-Page.png" style="width: 400px; height: 400px;" />
            </div>
            <div>
                <br /><br />
                <p style="font-size:20px;font-weight:bolder;color:#059669;">Millions of jobs.Find the one that's right for you.</p><br />
                <p style="color:#666666">Search all the open positions on the web. Get your own personalized salary estimate. <br />
                    Read reviews on over 30000+ companies worldwide.</p>
                <div><img src="../Images/tick_mark-removebg-preview.png" style="width:20px;height:20px;"/><span style="margin-left:10px;color:#666666">Digital Marketing Solutions for Tomorrow</span></div>
                <div><img src="../Images/tick_mark-removebg-preview.png" style="width:20px;height:20px;"/><span style="margin-left:10px;color:#666666">Our Talented & Experienced Marketing Agency</span></div>
                <div><img src="../Images/tick_mark-removebg-preview.png" style="width:20px;height:20px;"/><span style="margin-left:10px;color:#666666">Create your own skin to match your brand</span></div>

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
                    <img src="../Images/1-removebg-preview.png" id="imgDev" style="width: 75px; height: 75px;" />
                    <div>Web Development </div>
                </div>
            </div>

            <div class="col">
                <div class="img">
                    <img src="../Images/2-removebg-preview.png" id="imgApp" style="width: 75px; height: 75px;" />
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

                        <img src="../Images/phone_icon-removebg-preview.png" style="width: 50px; height: 50px;" />
                        <p>24/7 Support</p>
                    </div>

                    <div class="auto-style7" id="option2" style="padding-left: 3px; margin-left: 20px; margin-left: 40px; width: 15%; height: 30%;">
                        <p style="font-weight: bolder; font-size: 15px;">Step 2 </p>
                        <img src="../Images/startup_icon-removebg-preview.png" style="width: 50px; height: 50px;" />
                        <p>Tech & Startup Jobs</p>
                    </div>

                    <div class="auto-style7" id="option3" style="padding-left: 3px; width: 15%; height: 30%;">
                        <p style="font-weight: bolder; font-size: 15px;">Step 3 </p>
                        <img src="../Images/quick_icon-removebg-preview.png" style="width: 50px; height: 50px;" />
                        <p>Quick & Easy</p>

                    </div>

                    <div class="auto-style7" id="option4" style="padding-left: 3px; width: 15%; height: 30%;">
                        <p style="font-weight: bolder; font-size: 15px;">Step 3 </p>
                        <img src="../Images/timer_icon-removebg-preview.png" style="width: 50px; height: 50px;" />
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