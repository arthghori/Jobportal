<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot_pass.aspx.cs" Inherits="job_portal.auth.forgot_pass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="../Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="icon" type="image/x-icon" href="../Images/JOB FiNDER logo.png" />
    <title> Forgot Password </title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 29px;
        }

        #txtEmailid2
        {
            border-radius:10px;
        }

        #txtNewpass
        {
            border-radius:10px;
        }

        #txtConfirmpass
        {
            border-radius:10px;
        }

        #btnChangepass
        {
            border-radius:10px;
        }
        .auto-style3 {
            height: 444px;
            width: 454px;
        }
        .auto-style4 {
            float: left;
            height: 404px;
            margin-top: 0px;
        }

        #btnChangepass:hover
        {
            font-size:25px;
            font-weight:bolder;
            cursor:pointer;
        }
    </style>
</head>
<body>
    <form id="forgot_pass" runat="server">
        <!-- header-->
        <ul class="nav nav-item nav-tabs " style="font-weight: bold; font-size: 15px; background-color: white;">
            <li>
                <img src="../Images/JOB FiNDER logo.png" alt="logo" class="auto-style1" style="width: 100px; height: 100px" />
            </li>

            <li class="nav-item col" style="margin-left: 745px; margin-top: 30px; text-align: center;"><a class="nav-link" href="/common/Main_page.aspx" style="color: #059669;">Home </a></li>
            <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="/job_seeker/Finds_job.aspx" style="color: #059669;">Finds Job </a></li>
            <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="/common/About_us.aspx" style="color: #059669;">About Us </a></li>
            <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="/common/Contact_us.aspx" style="color: #059669;">Contact Us </a></li>
            <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="/auth/login_page.aspx" style="color: #059669;">Log in </a></li>
            <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="/job_seeker/Employer_Registration.aspx" style="color: #059669;">Register </a></li>



        </ul>

        <div style="margin-left:145px;" class="auto-style4">
            <img src="../Images/Static/1.png" alt="girl_img" class="auto-style3" />
        </div>
<%--        i add code for forgot design--%>
      <div style="width: 350px; min-height: 350px; box-shadow: 5px 5px 15px grey; border: 1px solid black; border-radius: 10px; margin: 100px auto; padding: 20px; background-color: white;">
    <h2 style="text-align: center; color: #059669;">Reset Password</h2>
    <table align="center" style="width: 100%;">
        <tr>
            <td style="text-align: center;">Registered Email:</td>
        </tr>
        <tr>
            <td style="text-align: center;">
                <asp:TextBox ID="txtEmail" runat="server" style="width: 100%; margin-top: 5px;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: center;">New Password:</td>
        </tr>
        <tr>
            <td style="text-align: center;">
                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" style="width: 100%; margin-top: 5px;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: center;">Confirm Password:</td>
        </tr>
        <tr>
            <td style="text-align: center;">
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" style="width: 100%; margin-top: 5px;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: center; padding-top: 10px;">
                <asp:Button ID="btnSubmit" runat="server" Text="Update Password" 
                    style="background-color: #059669; color: white; font-size: 16px; font-weight: bold; padding: 8px 15px; border: none; border-radius: 5px; cursor: pointer; transition: 0.3s;" 
                    OnClick="btnSubmit_Click" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center; padding-top: 10px;">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
</div>



        
        <!-- footer-->
        <div class="row container-fluid" style="background-color: #059669; color:white; text-align: center; height: 100%;width:100%;margin:0px;padding:0px; ">
            <div class="col" style="font-size:20px; padding-top: 15px; padding-bottom: 15px; padding-left: 15px; width: 100%;">

                <p style="font-weight:bolder;font-size:25px;">LEARN ABOUT US  </p>
                
                    <ul class="nav flex-column">
                        <li class="nav-item"><a class="nav-link" href="/common/About_us.aspx" style="color: white;">About Us </a></li>
                        <li class="nav-item"><a class="nav-link" href="/common/Contact_us.aspx" style="color: white;">Contact Us </a></li>
                        <li class="nav-item"><a class="nav-link" href="/common/Privacy_policy.aspx" style="color: white;">Privacy Policy </a></li>
                        <li class="nav-item"><a class="nav-link" href="/common/Terms_condition.aspx" style="color: white;">Terms & Condition </a></li>
                    </ul>
                

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

            <div style="text-align: center;cursor:pointer;" class="w-100">
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

