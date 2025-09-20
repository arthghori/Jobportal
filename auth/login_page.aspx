<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_page.aspx.cs" Inherits="job_portal.auth.login_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="../Images/JOB FiNDER logo.png" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <title>Log In Page </title>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        #btnLogin {
            border-radius: 15px;
        }

            #btnLogin:hover {
                cursor: pointer;
            }

        #hlForgot:hover {
            color: palevioletred;
        }

        #hlSign:hover {
            color: palevioletred;
        }

        #txtEmail {
            border-radius: 10px;
        }

        #txtPass {
            border-radius: 10px;
        }

        .auto-style2 {
            margin-top: 0px;
        }
    </style>
    <!--
       <script>
           $(document).ready(function(){
               var unm,pwd;
               const data={"uname":"Admin@gmail.com","password":"admin@123"}
               $("#btnLogin").click(function(){
                   unm=data.uname;
                   pwd=data.password;
                   if ($("#txtEmail").val() == unm && $("#txtPass").val()==pwd)
               {
                   location.href='Main_page.aspx';
               }
               else
               {
                   alert("Inavalid password and username");
               }
               })
           })
       </script>   -->

</head>

<body>

    <form id="Login_page" runat="server">

        <!--header-->
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

        <div style="float: left; margin-left: 300px; margin-top: 50px">
            <img src="../Images/Static/eventsSwiperLeft-ot.png" alt="Login" style="width: 300px; height: 350px" />
        </div>
        <div style="margin-left: 600px; margin-right: 600px; margin-top: 80px;margin-bottom:100px; box-shadow: 5px 5px 15px grey; width: 400px; height: 400px;">


            <table class="auto-style1">
                <tr>
                    <td style="text-align: center; color: #000000; font-weight: bolder; font-size: x-large; font-family: display">LOG IN<br />
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bolder; text-align: center;">
                        <br />
                        Email ID / Username</td>
                </tr>
                <tr>
                    <td style="text-align: center;">
                        <asp:TextBox name="uname" ID="txtEmail" runat="server" TextMode="SingleLine" placeholder="Enter Your Email ID / Username" Width="289px" Height="30px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bolder; text-align: center;">
                        <br />
                        Password</td>
                </tr>
                <tr>
                    <td style="text-align: center;">
                        <asp:TextBox name="password" ID="txtPass" runat="server" TextMode="Password" placeholder="Enter Your Password" Width="289px" Height="30px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <br />
                        <asp:HyperLink ID="hlForgot" runat="server" NavigateUrl="~/auth/forgot_pass.aspx" Font-Bold="True" ForeColor="#059669">Forgot Password?</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="btnLogin" runat="server" Text="Log In" BackColor="#059669" BorderWidth="3px" Font-Bold="True" ForeColor="White" Height="35px" Width="70%" CssClass="auto-style2" OnClick="btnLogin_Click" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <br />
                        Not a member?<asp:HyperLink ID="hlSign" runat="server" NavigateUrl="https://github.com/Fenilsheta/Job-Portal" Font-Bold="True" ForeColor="#059669">Sign Up Now</asp:HyperLink>
                    </td>
                </tr>
            </table>

        </div>

        <!-- footer-->
        <div class="row container-fluid" style="background-color: #059669; color:white; text-align: center; height: 100%;width:100%;margin:0px;padding:0px; ">
            <div class="col" style="font-size:20px; padding-top: 15px; padding-bottom: 15px; padding-left: 15px; width: 100%;">

                <p style="font-weight:bolder;font-size:25px;">LEARN ABOUT US </p>
               
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

