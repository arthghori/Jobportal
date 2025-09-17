<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About_us.aspx.cs" Inherits="job_portal.common.About_us" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="../Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
    <script src="../Bootstrap/js/bootstrap.bundle.min.js"></script>
    <link rel="icon" type="image/x-icon" href="Images/JOB FiNDER logo.png" />
    <title>About Us</title>

    <style>
        html, body {
            overflow-x: hidden;
            margin: 0;
            padding: 0;
            width: 100%;
        }
    </style>

</head>
<body>
    <form id="About_us" runat="server" style="color:#059669;font-size:18px;background-color:#0596690D;width:100%;height:100%">

        <ul class="nav nav-item nav-tabs " style="font-weight: bold; font-size: 15px; background-color: white;">
            <li>
                <img src="Images/JOB FiNDER logo.png" alt="logo" class="auto-style1" style="width: 100px; height: 100px" />
            </li>

            <li class="nav-item col" style="margin-left: 745px; margin-top: 30px; text-align: center;"><a class="nav-link" href="Main_page.aspx" style="color: #059669;">Home </a></li>
            <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="Finds_job.aspx" style="color: #059669;">Finds Job </a></li>
            <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="About_us.aspx" style="color: #059669;">About Us </a></li>
            <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="Contact_us.aspx" style="color: #059669;">Contact Us </a></li>
            <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="login_page.aspx" style="color: #059669;">Log in </a></li>
            <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="Employer_Registration.aspx" style="color: #059669;">Register </a></li>

        </ul>

        <h1 style="font-weight: bolder;font-family:Arial, Helvetica, sans-serif;margin-left:30px;margin-top:50px"> About Us </h1>

        <div style="margin:50px;">

        <div>
            JobFinder.com is the most innovative and second largest online job portal in India. JobFinder.com has become a prominent name in the recruitment industry. 
            The popularity of the portal is evident from the fact that it has crossed the 3.4 crore candidate landmark and has more than 3 lakh latest job vacancies from leading companies on the site.

        </div> <br />
        
        <div>
            JobFinder.com connects jobseekers and recruiters by accurately matching candidate profiles to the relevant job openings through an advanced 2-way matching technology. While most job portals only focus on getting candidates the next job, Job Finder focuses on the entire career growth of candidates. To this end, Job Finder has launched Job Finder Learning- India’s largest career skills site for working professionals with over 500+ courses & certifications..com connects jobseekers and recruiters by accurately matching candidate profiles to the relevant job openings through an advanced 2-way matching technology.While most job portals only focus on getting candidates the next job, Job Finder focuses on the entire career growth of candidates. To this end, Shine has launched Job Finder Learning- India’s largest career skills site for working professionals with over 500+ courses & certifications.

        </div><br />

        <div>
            As the industry shifts towards mobile, JobFinder.com is leading the transition and is the fastest growing job portal on mobile devices, witnessing a 100% YOY growth in mobile traffic and also offers on-the-go jobs through the Job Finder Job Search App.
        </div><br />

        <div>
            Job Finder works closely to bridge the gap between talent & opportunities and offers end-to-end recruitment solutions. 
            Job Finder Job Fair brings candidates and top employers under one roof.
            While Job Finder HR Conclave brings top HR leaders to share insights on latest trends, innovations & best practices in the HR industry. 
            job Finder also has a large reach through its print product, 
            JobFinder Jobs – the Tuesday Job supplement of Hindustan Times– making it the only job portal with an integrated print and online offering.
        </div>

        </div>

        
        <!-- footer-->
        <div class="row container-fluid" style="margin-top: 200px; margin-left: 2px; background-color: #059669; color:white ; text-align: center; height: 100%;">
            <div class="col" style="font-size:20px;padding:15px;">

                <p style="font-weight:bolder;font-size:25px;">LEARN ABOUT US </p>
                <div>
                    <ul class="nav flex-column" >
                        <li class="nav-item"><a class="nav-link" href="About_us.aspx" style="color:white;">About Us </a></li>
                        <li class="nav-item"><a class="nav-link" href="Contact_us.aspx" style="color:white;">Contact Us </a></li>
                        <li class="nav-item"><a class="nav-link" href="Privacy_policy.aspx" style="color:white;">Privacy Policy </a></li>
                        <li class="nav-item"><a class="nav-link" href="Terms_condition.aspx" style="color:white;">Terms & Condition </a></li>
                    </ul>
                </div>

            </div>


            <div class="col" style="font-size:20px;padding:15px;text-align:left;">
                <p style="font-weight:bolder;font-size:25px;"> CONTACT</p>
                <div><i class="bi bi-telephone-fill" style="margin-right:10px;"></i>Phone : +8880 44338</div>
                <div><i class="bi bi-envelope-fill" style="margin-right:10px;"></i>Email : info@gmail.com</div>

            </div>

            <div class="col" style="text-align:left;padding:15px;" >
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

            <p>FOLLOW US ON</p>

            <div style="text-align: center; cursor: pointer;" class="w-100">
                <ul class="nav" style="justify-content: center; align-items: center; margin: auto;">

                    <li class="nav-justified"><i class="bi bi-instagram" style="margin: 20px;"></i></li>
                    <li class="nav-item"><i class="bi bi-facebook" style="margin: 20px;"></i></li>
                    <li class="nav-item"><i class="bi bi-github" style="margin: 20px;"></i></li>
                    <li class="nav-item"><i class="bi bi-telegram" style="margin: 20px;"></i></li>
                    <li class="nav-item"><i class="bi bi-whatsapp" style="margin: 20px;"></i></li>
                    <li class="nav-item"><i class="bi bi-twitter" style="margin: 20px;"></i></li>
                </ul>

            </div>
</div>
    </form>
</body>
</html>

