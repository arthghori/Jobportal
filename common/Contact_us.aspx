<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact_us.aspx.cs" Inherits="job_portal.common.Contact_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1" />
 <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
 <link rel="icon" type="image/x-icon" href="../Images/JOB FiNDER logo.png" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Contact Us Form</title>
    <style type="text/css">
        .auto-style1 {
            width: 57%;
            height: 509px;
        }
        .auto-style2 {
            text-align: center;
        }
        #btnSubmit:hover{
            cursor:pointer;
        }
        #btnSubmitttttt{
            border-radius:10px;
        }
        .Textbox{
             border-radius:10px;
        }
            /* Form Container */
    .auto-style1[style*="background-color:#F3F3F3"] {
        background: linear-gradient(135deg, #ffffff 0%, #f8fafc 100%) !important;
        border-radius: 20px !important;
        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1) !important;
        border: 1px solid #e2e8f0 !important;
        padding: 30px 25px !important;
        margin-left: 150px !important;
        margin-top: 40px !important;
        margin-bottom: 80px !important;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        width: 600px !important;
        height: auto !important;
    }

    .auto-style1[style*="background-color:#F3F3F3"]:hover {
        transform: translateY(-5px);
        box-shadow: 0 20px 45px rgba(0, 0, 0, 0.15) !important;
    }

    /* Form Title */
    td[style*="font-family:Verdana"] {
        font-size: 28px !important;
        font-weight: 700 !important;
        background: linear-gradient(135deg, #059669, #10b981);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        background-clip: text;
        text-align: center !important;
        padding-bottom: 20px !important;
        display: block;
        margin-bottom: 10px;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif !important;
    }

    /* Table Rows */
    tr {
        opacity: 0;
        transform: translateY(20px);
        animation: fadeInUp 0.6s ease forwards;
        border-bottom: 1px solid transparent;
    }

    tr:nth-child(1) { animation-delay: 0.1s; }
    tr:nth-child(2) { animation-delay: 0.2s; }
    tr:nth-child(3) { animation-delay: 0.3s; }
    tr:nth-child(4) { animation-delay: 0.4s; }
    tr:nth-child(5) { animation-delay: 0.5s; }
    tr:nth-child(6) { animation-delay: 0.6s; }
    tr:nth-child(7) { animation-delay: 0.7s; }

    @keyframes fadeInUp {
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Form Labels */
    #lblFname, #lblLname, #lblPhoneno, #lblEmail, #lblMessage {
        color: #374151 !important;
        font-weight: 600 !important;
        font-size: 14px !important;
        margin-bottom: 8px !important;
        display: block;
        padding-left: 5px;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif !important;
        transition: color 0.3s ease;
    }

    /* Textbox Styles */
    .Textbox {
        border-radius: 12px !important;
        border: 2px solid #e2e8f0 !important;
        padding: 12px 20px !important;
        font-size: 15px !important;
        transition: all 0.3s ease !important;
        background-color: #ffffff !important;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.02) !important;
        width: 100% !important;
        box-sizing: border-box !important;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif !important;
        margin-bottom: 5px !important;
    }

    .Textbox:hover {
        border-color: #cbd5e1 !important;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05) !important;
        transform: translateY(-1px);
    }

    .Textbox:focus {
        outline: none !important;
        border-color: #059669 !important;
        box-shadow: 0 0 0 4px rgba(5, 150, 105, 0.1) !important;
        background-color: #ffffff !important;
        transform: translateY(-2px);
    }

    /* Textarea Specific Styles */
    #txtMessage {
        resize: vertical !important;
        min-height: 100px !important;
        line-height: 1.5 !important;
        transition: all 0.3s ease !important;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif !important;
    }

    #txtMessage:focus {
        min-height: 110px !important;
    }

    /* Submit Button */
    #btnSubmitttttt {
        border-radius: 12px !important;
        background: linear-gradient(135deg, #059669 0%, #10b981 100%) !important;
        color: white !important;
        border: none !important;
        height: 50px !important;
        width: 200px !important;
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

    #btnSubmitttttt:hover {
        transform: translateY(-3px) !important;
        box-shadow: 0 8px 25px rgba(5, 150, 105, 0.4) !important;
        background: linear-gradient(135deg, #047857 0%, #059669 100%) !important;
    }

    #btnSubmitttttt:active {
        transform: translateY(-1px) !important;
        box-shadow: 0 4px 15px rgba(5, 150, 105, 0.3) !important;
    }

    /* Button Ripple Effect */
    #btnSubmitttttt::after {
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

    #btnSubmitttttt:focus:not(:active)::after {
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

    /* Validation Styles */
    .validation-error, .error {
        color: #dc2626 !important;
        font-size: 12px !important;
        font-weight: 500 !important;
        margin-top: 5px !important;
        display: block;
        padding-left: 8px;
        transition: all 0.3s ease;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif !important;
        min-height: 20px !important;
    }

    /* Table Cells */
    td {
        padding: 15px 10px !important;
        border-bottom: 1px solid #f1f5f9;
        transition: background-color 0.3s ease;
    }

    td:hover {
        background-color: #f8fafc;
        border-radius: 8px;
    }

    /* Auto-style2 for button cell */
    .auto-style2 {
        text-align: center !important;
        padding-top: 20px !important;
        border-bottom: none !important;
    }

    /* Placeholder Styling */
    .Textbox::placeholder {
        color: #9ca3af !important;
        font-weight: 400 !important;
        transition: color 0.3s ease;
    }

    .Textbox:focus::placeholder {
        color: #cbd5e1 !important;
    }

    /* Responsive Design for Form */
    @media (max-width: 768px) {
        .auto-style1[style*="background-color:#F3F3F3"] {
            width: 90% !important;
            margin-left: 5% !important;
            margin-right: 5% !important;
            padding: 20px 15px !important;
        }
        
        .Textbox {
            width: 100% !important;
            padding: 10px 15px !important;
        }
        
        #btnSubmitttttt {
            width: 100% !important;
            max-width: 300px;
        }
        
        td[style*="font-family:Verdana"] {
            font-size: 24px !important;
        }
    }

    /* Success State for Inputs */
    .Textbox.valid {
        border-color: #10b981 !important;
        background: linear-gradient(90deg, #ffffff, #f0fdf4) !important;
    }

    .Textbox.invalid {
        border-color: #ef4444 !important;
        background: linear-gradient(90deg, #ffffff, #fef2f2) !important;
    }

    /* Focused Label */
    .Textbox:focus ~ #lblFname,
    .Textbox:focus ~ #lblLname,
    .Textbox:focus ~ #lblPhoneno,
    .Textbox:focus ~ #lblEmail,
    .Textbox:focus ~ #lblMessage {
        color: #059669 !important;
    }

    </style>
</head>
<body>
    <form id="Contact_us" runat="server">
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
        <div>

            <div style="width:500px;height:500px;float:left;margin-left:100px;">
                <img src="../Images/contactus_form_img.svg" />
            </div>

            <table style="background-color:#F3F3F3 ;margin-left:200px;padding-left:10px;padding-right:15px;margin-bottom:60px;margin-top:60px" class="auto-style1"  >
                <tr>
                    <td style="font-family:Verdana,Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; color: #059669;">&nbsp;&nbsp;Contact us</td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblFname" runat="server" Text="First name" ></asp:Label>
                        &nbsp;<asp:TextBox ID="txtFname" runat="server" Height="24px" Width="554px" placeholder="First name" CssClass="Textbox"></asp:TextBox> <br />
                         <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtFname" ErrorMessage="First name is required" CssClass="validation-error" ForeColor="Red" Height="20px"></asp:RequiredFieldValidator>
                   
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblLname" runat="server" Text="Last name"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtLname" runat="server" Height="24px" Width="555px"  placeholder="Last name" CssClass="Textbox"></asp:TextBox> <br />
                         <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLname" ErrorMessage="Last Name is required." CssClass="error" ForeColor="Red" Height="20px" />
                      </td>         
                </tr>
                <tr>
                    <td><asp:Label ID="lblPhoneno" runat="server" Text="Phone number"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtPhoneno" runat="server" Height="24px" Width="555px"  placeholder="Phone number" CssClass="Textbox" MaxLength="10"></asp:TextBox> <br />
                        <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" ControlToValidate="txtPhoneno" ErrorMessage="Phone Number is required." CssClass="error"  ForeColor="Red" Height="20px" />
</td>
    
                </tr>
                <tr>
                    <td><asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtEmail" runat="server" Height="24px" Width="555px"  placeholder="Email" CssClass="Textbox"></asp:TextBox> <br />
                         <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." ForeColor="Red" Height="20px" />
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email format." CssClass="error" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ForeColor="Red" Height="20px" />

                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblMessage" runat="server" Text="Message"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Width="553px" Rows="4"  placeholder="Message" CssClass="Textbox"></asp:TextBox> <br />
                           <asp:RequiredFieldValidator ID="rvfMessage" runat="server" ControlToValidate="txtMessage" ErrorMessage="Message is required." CssClass="error" ForeColor="Red" Height="20px" />
</td>         
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnSubmitttttt" runat="server" Text="Submit" BackColor="#059669"  ForeColor="White" Height="38px" Width="180px" OnClick="btnSubmit_Click" />

                    </td>
                </tr>
            </table>
        </div>

                <div class="row container-fluid" style="background-color: #059669; color:white; text-align: center; height: 100%;width:100%;margin:0px;padding:0px; ">
            <div class="col" style="font-size:20px; padding-top: 15px; padding-bottom: 15px; padding-left: 15px; width: 100%;">

                <p style="font-weight:bolder;font-size:25px;">LEARN ABOUT US </p>
                <div>
                    <ul class="nav flex-column">
                        <li class="nav-item"><a class="nav-link" href="/common/About_us.aspx" style="color: white;">About Us </a></li>
                        <li class="nav-item"><a class="nav-link" href="/common/Contact_us.aspx" style="color: white;">Contact Us </a></li>
                        <li class="nav-item"><a class="nav-link" href="/common/Privacy_policy.aspx" style="color: white;">Privacy Policy </a></li>
                        <li class="nav-item"><a class="nav-link" href="/common/Terms_condition.aspx" style="color:white;">Terms & Condition </a></li>
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


