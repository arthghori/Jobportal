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

          /* Login Container */
    div[style*="box-shadow: 5px 5px 15px grey"] {
        background: linear-gradient(135deg, #ffffff 0%, #f8fafc 100%) !important;
        border-radius: 20px !important;
        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1) !important;
        border: 1px solid #e2e8f0 !important;
        padding: 30px 20px !important;
        margin-left: 600px !important;
        margin-right: 600px !important;
        margin-top: 80px !important;
        margin-bottom: 100px !important;
        width: 400px !important;
        height: auto !important;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    div[style*="box-shadow: 5px 5px 15px grey"]:hover {
        transform: translateY(-5px);
        box-shadow: 0 20px 45px rgba(0, 0, 0, 0.15) !important;
    }

    /* Login Title */
    td[style*="text-align: center; color: #000000; font-weight: bolder; font-size: x-large"] {
        font-size: 32px !important;
        font-weight: 700 !important;
        background: linear-gradient(135deg, #059669, #10b981);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        background-clip: text;
        padding-bottom: 20px !important;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif !important;
    }

    /* Form Labels */
    td[style*="font-weight: bolder; text-align: center"] {
        color: #374151 !important;
        font-weight: 600 !important;
        font-size: 14px !important;
        padding: 10px 0 !important;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif !important;
    }

    /* Input Fields */
    #txtEmail, #txtPass {
        border-radius: 12px !important;
        border: 2px solid #e2e8f0 !important;
        padding: 12px 15px !important;
        font-size: 14px !important;
        transition: all 0.3s ease !important;
        background-color: #ffffff !important;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.02) !important;
        width: 289px !important;
        height: 40px !important;
        box-sizing: border-box !important;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif !important;
    }

    #txtEmail:hover, #txtPass:hover {
        border-color: #cbd5e1 !important;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05) !important;
        transform: translateY(-1px);
    }

    #txtEmail:focus, #txtPass:focus {
        outline: none !important;
        border-color: #059669 !important;
        box-shadow: 0 0 0 4px rgba(5, 150, 105, 0.1) !important;
        background-color: #ffffff !important;
        transform: translateY(-2px);
    }

    /* Placeholder Styling */
    #txtEmail::placeholder, #txtPass::placeholder {
        color: #9ca3af !important;
        font-weight: 400 !important;
        transition: color 0.3s ease;
    }

    #txtEmail:focus::placeholder, #txtPass:focus::placeholder {
        color: #cbd5e1 !important;
    }

    /* Login Button */
    #btnLogin {
        border-radius: 12px !important;
        background: linear-gradient(135deg, #059669 0%, #10b981 100%) !important;
        color: white !important;
        border: none !important;
        height: 45px !important;
        width: 70% !important;
        font-weight: 600 !important;
        font-size: 16px !important;
        transition: all 0.4s ease !important;
        box-shadow: 0 4px 15px rgba(5, 150, 105, 0.3) !important;
        position: relative;
        overflow: hidden;
        cursor: pointer !important;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif !important;
        margin-top: 10px !important;
    }

    #btnLogin:hover {
        transform: translateY(-3px) !important;
        box-shadow: 0 8px 25px rgba(5, 150, 105, 0.4) !important;
        background: linear-gradient(135deg, #047857 0%, #059669 100%) !important;
    }

    #btnLogin:active {
        transform: translateY(-1px) !important;
        box-shadow: 0 4px 15px rgba(5, 150, 105, 0.3) !important;
    }

    /* Button Ripple Effect */
    #btnLogin::after {
        content: '';
        position: absolute;
        top: 50%;
        left: 50%;
        width: 5px;
        height: 5px;
        background: rgba(255, 255, 255, 0.5);
        opacity: 0;
        border-radius: 100%;
        transform: scale(1, 1) translate(-50%);
        transform-origin: 50% 50%;
    }

    #btnLogin:focus:not(:active)::after {
        animation: ripple 1s ease-out;
    }

    @keyframes ripple {
        0% {
            transform: scale(0, 0);
            opacity: 0.5;
        }
        100% {
            transform: scale(20, 20);
            opacity: 0;
        }
    }

    /* Links Styling */
    #hlForgot, #hlSign {
        color: #059669 !important;
        font-weight: 600 !important;
        text-decoration: none !important;
        transition: all 0.3s ease !important;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif !important;
    }

    #hlForgot:hover, #hlSign:hover {
        color: #047857 !important;
        transform: translateY(-1px);
    }

    /* Table Rows Animation */
    tr {
        opacity: 0;
        transform: translateY(20px);
        animation: fadeInUp 0.6s ease forwards;
    }

    tr:nth-child(1) { animation-delay: 0.1s; }
    tr:nth-child(2) { animation-delay: 0.2s; }
    tr:nth-child(3) { animation-delay: 0.3s; }
    tr:nth-child(4) { animation-delay: 0.4s; }
    tr:nth-child(5) { animation-delay: 0.5s; }
    tr:nth-child(6) { animation-delay: 0.6s; }
    tr:nth-child(7) { animation-delay: 0.7s; }
    tr:nth-child(8) { animation-delay: 0.8s; }
    tr:nth-child(9) { animation-delay: 0.9s; }

    @keyframes fadeInUp {
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Table Cells */
    td {
        padding: 8px 5px !important;
        transition: background-color 0.3s ease;
    }

    /* Forgot Password Link Container */
    td[style*="text-align: right"] {
        padding-right: 45px !important;
    }

    /* Sign Up Text */
    td[style="text-align: center"]:last-child {
        color: #6b7280 !important;
        font-size: 14px !important;
        padding-top: 15px !important;
    }

    /* Responsive Design */
    @media (max-width: 1200px) {
        div[style*="box-shadow: 5px 5px 15px grey"] {
            margin-left: auto !important;
            margin-right: auto !important;
            width: 90% !important;
            max-width: 400px;
        }
    }

    @media (max-width: 768px) {
        div[style*="box-shadow: 5px 5px 15px grey"] {
            margin: 40px auto !important;
            padding: 25px 15px !important;
            width: 85% !important;
        }
        
        #txtEmail, #txtPass {
            width: 100% !important;
            max-width: 289px;
        }
        
        #btnLogin {
            width: 80% !important;
        }
        
        td[style*="text-align: center; color: #000000; font-weight: bolder; font-size: x-large"] {
            font-size: 28px !important;
        }
    }

    /* Success/Focus States */
    #txtEmail.valid, #txtPass.valid {
        border-color: #10b981 !important;
        background: linear-gradient(90deg, #ffffff, #f0fdf4) !important;
    }

    #txtEmail.invalid, #txtPass.invalid {
        border-color: #ef4444 !important;
        background: linear-gradient(90deg, #ffffff, #fef2f2) !important;
    }

    /* Auto-style2 for button */
    .auto-style2 {
        margin-top: 0px !important;
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
            <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="/company/jobs.aspx" style="color: #059669;">Finds Job </a></li>
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
                        Email ID / Username</td>
                </tr>
                <tr>
                    <td style="text-align: center;">
                        <asp:TextBox name="uname" ID="txtEmail" runat="server" TextMode="SingleLine" placeholder="Enter Your Email ID / Username" Width="289px" Height="30px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bolder; text-align: center;">
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
                        <asp:HyperLink ID="hlForgot" runat="server" NavigateUrl="~/auth/forgot_pass.aspx" Font-Bold="True" ForeColor="#059669">Forgot Password?</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="btnLogin" runat="server" Text="Log In" BackColor="#059669" BorderWidth="3px" Font-Bold="True" ForeColor="White" Height="35px" Width="70%" CssClass="auto-style2" OnClick="btnLogin_Click" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        Not a member?<asp:HyperLink ID="hlSign" runat="server" NavigateUrl="~/auth/Registration.aspx" Font-Bold="True" ForeColor="#059669">Sign Up Now</asp:HyperLink>
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

