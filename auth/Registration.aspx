<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="job_portal.auth.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
         <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
       <style type="text/css">
        .auto-style1 {
            width: 596px;
            height: 973px;
        }
        .auto-style3 {
            width: 224px;
           
        }
        .auto-style4 {
            width: 289px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            text-align: left;
        }
        .TextBox{
             border-radius:8px;
        }
        #btnRegister:hover{
            color:antiquewhite;
            cursor:pointer;
            background-color:aqua;

        }
        #btnRegister{
             border-radius:20px;
        }
    </style>
</head>
<body>
    <form id="registration" runat="server">
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

        <div class="container mt-5">
        <div class="row p-3 mb-5 bg-white rounded">
               <div class="col-md-4 bg-light text-center py-4 " style="width: 300px; height: 400px; margin-top:50px;" >
                <img src="../Images/Static/white-boy.a0d2814a.png"  alt="image" style="width: 210px; height: 210px" />
                <ul>
                <li>
                    On registering, you can
                    Build your profile and let recruiters find you
                </li>
                <li> Get job postings delivered right to your email</li>

                <li>  Find a job and grow your career</li>
                </ul>
                <center><a href="/job_seeker/Employer_Registration.aspx" style="color:#059669">Register as a Company</a></center>
            </div> 
                   <table style="box-shadow : 5px 5px 15px grey ;margin-left:auto;background-color:#F3F3F3;margin-right:auto;margin-top:50px;margin-bottom:50px" class="auto-style1">
            <tr>
                <td  style="font-family:Verdana,Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold;" colspan="2">Registration<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                   
                    &nbsp;&nbsp;
                    <asp:Label ID="lblFname" runat="server" Text="First name"></asp:Label>
                    <br />
&nbsp;&nbsp;
                    <asp:TextBox ID="txtFname" runat="server" Height="22px" Width="252px" placeholder="First  name" CssClass="TextBox"></asp:TextBox>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtFname" ErrorMessage="First name is required"  ForeColor="Red" Height="20px"></asp:RequiredFieldValidator>
                    <br />
                </td>
                <td class="auto-style3">
                    <asp:Label ID="lblLname" runat="server" Text="Last name"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtLname" runat="server" Height="22px" Width="252px" placeholder="Last name" CssClass="TextBox"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLname" ErrorMessage="Last Name is required."  ForeColor="Red" Height="20px" />
                    
                </td>
            </tr>
  <tr>
     <td colspan="2">
         &nbsp;&nbsp;
         <asp:Label ID="lblUname" runat="server" Text="Username"></asp:Label>
         <br />
         &nbsp;&nbsp;
         <asp:TextBox ID="txtUname" runat="server" Height="22px" Width="555px" CssClass="TextBox" placeholder="Username"  ></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;
              <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUname" ErrorMessage="Username is required."  ForeColor="Red" Height="20px" />
     </td>
 </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;&nbsp; <asp:Label ID="lblDob" runat="server" Text="Date of birth"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;
                    <asp:TextBox ID="txtDob" runat="server" Height="22px" Width="252px" TextMode="Date" CssClass="TextBox"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="rfvDateOfBirth" runat="server" ControlToValidate="txtDob" ErrorMessage="Date of Birth is required." ForeColor="Red" Height="20px" /></td>
                <td class="auto-style3">&nbsp;<asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                    <asp:RadioButtonList ID="rblGender" runat="server"  RepeatDirection="Horizontal" Height="22px" Width="260px" >
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:RadioButtonList>
                         <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="rblGender" InitialValue="" ErrorMessage="Gender is required."  ForeColor="Red" Height="20px" />
                </td>
            </tr>
              <tr>
                <td colspan="2">
                    &nbsp;&nbsp; <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                   <br />
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtEmail" runat="server" Height="22px" Width="555px" placeholder="Email Address" CssClass="TextBox"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required."  ForeColor="Red" Height="20px" /><asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email format." CssClass="error"
                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ForeColor="Red" Height="20px" />

          <br />
      </td>
  </tr>
            <tr>
                <td colspan="2" class="auto-style7">
                    &nbsp;&nbsp; <asp:Label ID="lblPhone" runat="server" Text="Phone number" ></asp:Label>
                    <br />
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtPhone" runat="server" Height="22px" Width="555px" TextMode="Number"  placeholder="Phone number" CssClass="TextBox" MaxLength="10"></asp:TextBox>
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone Number is required."   ForeColor="Red" Height="20px" />
                </td>
            </tr>
          
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp; <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                    <br />
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtAddress" runat="server" Height="22px" Width="555px" placeholder="Address" CssClass="TextBox"></asp:TextBox>
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" InitialValue="" ErrorMessage="Address is required."   ForeColor="Red" Height="20px" />
















                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;&nbsp;
                    <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                    &nbsp;<br />
&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlState" runat="server" Height="26px" Width="260px" CssClass="TextBox" AutoPostBack="True" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                    </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="ddlState" ErrorMessage="State is required."  ForeColor="Red" Height="20px" />

                    &nbsp;&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                    <br />
                    <asp:DropDownList ID="ddlCity" runat="server" Height="26px" Width="260px" CssClass="TextBox" AutoPostBack="True">
                    </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="ddlCity" ErrorMessage="City is required." ForeColor="Red" Height="20px" />
                </td>
            </tr>
           
                       <tr>
               <td colspan="2" class="auto-style6">
                   <asp:DropDownList ID="ddlExperience" runat="server" Height="26px" Width="555px" CssClass="TextBox" >
                       <asp:ListItem>Experience</asp:ListItem>
      <asp:ListItem Value="Fresher">Fresher</asp:ListItem>
      <asp:ListItem Value="1-3 Years">1-3 Years</asp:ListItem>
      <asp:ListItem Value="3-5 Years">3-5 Years</asp:ListItem>
      <asp:ListItem Value="More than 5 Years">More than 5 Years</asp:ListItem>
                   </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvExperience" runat="server" ControlToValidate="ddlExperience" ErrorMessage="Experience is required."  ForeColor="Red" Height="20px"/>
               </td>
           </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                    <br />
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtPassword" runat="server" Height="22px" Width="555px" placeholder="Password" CssClass="TextBox"></asp:TextBox>
                         &nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required."  ForeColor="Red" Height="20px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblCpassword" runat="server" Text="Confirm password"></asp:Label>
                    <br />
                    &nbsp;&nbsp;              
                    <asp:TextBox ID="txtCpaasword" runat="server" Height="22px" Width="555px" placeholder="Confirm password" CssClass="TextBox"></asp:TextBox>
                      &nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtCpaasword" ErrorMessage="ConfirmPassword is required."  ForeColor="Red" Height="20px" />&nbsp; <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtCpaasword" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match." CssClass="error" ForeColor="Red" Height="20px" />

                </td>
            </tr>
             <tr>
              <td colspan="2">
              &nbsp;&nbsp;
              <asp:Label ID="lblResume" runat="server" Text="Resume"></asp:Label>
              <br />
              &nbsp;&nbsp;
               <asp:FileUpload ID="fuResume" runat="server" />
              <br />
     </td>
 </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;
                    <asp:Label ID="lblProfilepic" runat="server" Text="Profile picture"></asp:Label>
                    <br />
                    &nbsp;&nbsp;
                    <asp:FileUpload runat="server" ID="fuProfilepicture" />
                    <br />
                </td>
            </tr>
           
            <tr>
                <td colspan="2">
                    &nbsp;<br />
                    &nbsp;
                    <asp:Button ID="btnRegister" runat="server" Text="Register" BackColor="#059669" ForeColor="White" Height="37px" Width="180px" OnClick="btnRegister_Click1"   />
                    <br />
                    <br />
                    </td>
                
            </tr>
            </table>
        </div>
       </div>
         


                <div class="row container-fluid" style="margin-top: 200px; margin-left: 2px; background-color: #059669; color:white ; text-align: center; height: 100%;">
            <div class="col" style="font-size:20px;padding:15px;">

                <p style="font-weight:bolder;font-size:25px;">LEARN ABOUT US </p>
                <div>
                    <ul class="nav flex-column" >
                        <li class="nav-item"><a class="nav-link" href="/common/About_us.aspx" style="color:white;">About Us </a></li>
                        <li class="nav-item"><a class="nav-link" href="/common/Contact_us.aspx" style="color:white;">Contact Us </a></li>
                        <li class="nav-item"><a class="nav-link" href="/common/Privacy_policy.aspx" style="color:white;">Privacy Policy </a></li>
                        <li class="nav-item"><a class="nav-link" href="/common/Terms_condition.aspx" style="color:white;">Terms & Condition </a></li>
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




