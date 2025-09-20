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
            width: 40%;
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

    </style>
</head>
<body>
    <form id="Contact_us" runat="server">
          <ul class="nav nav-item nav-tabs " style="font-weight: bold; font-size: 15px;background-color:white;">
      <li>
          <img src="../Images/JOB FiNDER logo.png" alt="logo" class="auto-style1" style="width: 100px; height: 100px" />
      </li>            
      
      <li class="nav-item col" style="margin-left: 745px; margin-top: 30px; text-align: center;"><a class="nav-link" href="/common/Main_page.aspx" style="color: #059669;"> Home </a></li>
      <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="/job_seeker/Finds_job.aspx" style="color: #059669;">Finds Job </a></li>            
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
                    <td>&nbsp;&nbsp;<asp:Label ID="lblFname" runat="server" Text="First name" ></asp:Label>
                        <br />
&nbsp;
                        <asp:TextBox ID="txtFname" runat="server" Height="24px" Width="554px" placeholder="First name" CssClass="Textbox"></asp:TextBox> <br />
                         <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtFname" ErrorMessage="First name is required" CssClass="validation-error" ForeColor="Red" Height="20px"></asp:RequiredFieldValidator>
                   
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;<asp:Label ID="lblLname" runat="server" Text="Last name"></asp:Label>
                        <br />
&nbsp;
                        <asp:TextBox ID="txtLname" runat="server" Height="24px" Width="555px"  placeholder="Last name" CssClass="Textbox"></asp:TextBox> <br />
                         <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLname" ErrorMessage="Last Name is required." CssClass="error" ForeColor="Red" Height="20px" />
                      </td>         
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;<asp:Label ID="lblPhoneno" runat="server" Text="Phone number"></asp:Label>
                        <br />
&nbsp;
                        <asp:TextBox ID="txtPhoneno" runat="server" Height="24px" Width="555px"  placeholder="Phone number" CssClass="Textbox" MaxLength="10"></asp:TextBox> <br />
                        <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" ControlToValidate="txtPhoneno" ErrorMessage="Phone Number is required." CssClass="error"  ForeColor="Red" Height="20px" />
</td>
    
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;<asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                        <br />
&nbsp;
                        <asp:TextBox ID="txtEmail" runat="server" Height="24px" Width="555px"  placeholder="Email" CssClass="Textbox"></asp:TextBox> <br />
                         <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." ForeColor="Red" Height="20px" />
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email format." CssClass="error" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ForeColor="Red" Height="20px" />

                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;<asp:Label ID="lblMessage" runat="server" Text="Message"></asp:Label>
                        <br />
&nbsp;
                        <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Width="553px" Rows="4"  placeholder="Message" CssClass="Textbox"></asp:TextBox> <br />
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


