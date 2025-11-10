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

        /* 🔹 Registration Table Container */
table.auto-style1 {
    background-color: #FFFFFF !important;
    border-radius: 12px !important;
    box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1) !important;
    margin: 40px auto !important;
    padding: 0;
    width: 90% !important;
    max-width: 650px;
    border-collapse: collapse !important;
    border: 1px solid #e0e0e0 !important;
    overflow: hidden;
}

/* 🔹 Header Styling */
.auto-style1 tr:first-child td {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif !important;
    font-size: 28px !important;
    font-weight: 700 !important;
    background: linear-gradient(135deg, #059669 0%, #047857 100%) !important;
    color: white !important;
    padding: 30px 20px !important;
    text-align: center;
    letter-spacing: 0.5px;
}

/* 🔹 Table Rows and Cells */
.auto-style1 tr {
    border-bottom: 1px solid #f0f0f0;
    transition: background-color 0.3s ease;
}

.auto-style1 tr:hover {
    background-color: #fafafa;
}

.auto-style1 td {
    padding: 20px 25px !important;
    vertical-align: top !important;
}

.auto-style3, .auto-style4 {
    padding: 20px 25px !important;
    width: 50% !important;
}

/* 🔹 Label Styling */
.auto-style1 label {
    font-weight: 600 !important;
    color: #2d3748 !important;
    font-size: 14px !important;
    display: block !important;
    margin-bottom: 8px !important;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    letter-spacing: 0.3px;
}

/* 🔹 Textbox Styling */
.TextBox {
    width: 100% !important;
    padding: 14px 16px !important;
    border: 2px solid #e2e8f0 !important;
    border-radius: 8px !important;
    font-size: 15px !important;
    transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1) !important;
    margin: 4px 0 !important;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #ffffff;
    box-sizing: border-box;
}

.TextBox:focus {
    border-color: #059669 !important;
    box-shadow: 0 0 0 3px rgba(5, 150, 105, 0.1) !important;
    outline: none !important;
    transform: translateY(-1px);
}

.TextBox::placeholder {
    color: #a0aec0 !important;
    font-weight: 400;
}

/* 🔹 Dropdown Styling */
select.TextBox {
    background-color: white !important;
    cursor: pointer !important;
    appearance: none;
    background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 24 24' stroke='%23595959'%3E%3Cpath stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M19 9l-7 7-7-7'%3E%3C/path%3E%3C/svg%3E");
    background-repeat: no-repeat;
    background-position: right 16px center;
    background-size: 16px;
    padding-right: 40px !important;
}

/* 🔹 Radio Button List Styling */
#rblGender {
    margin: 8px 0 !important;
    padding: 0;
    background: transparent !important;
}

#rblGender tr {
    border: none !important;
    background: transparent !important;
}

#rblGender td {
    padding: 4px 0 !important;
    border: none !important;
    background: transparent !important;
}

#rblGender label {
    display: flex !important;
    align-items: center !important;
    margin-right: 25px !important;
    font-weight: 500 !important;
    cursor: pointer !important;
    color: #4a5568;
    transition: color 0.3s ease;
    background: transparent !important;
}

#rblGender label:hover {
    color: #059669;
}

#rblGender input[type="radio"] {
    margin-right: 10px !important;
    cursor: pointer !important;
    transform: scale(1.2);
    accent-color: #059669;
    background: transparent !important;
}

/* Remove any green background from the table row containing gender */
.auto-style1 tr:nth-child(4) {
    background: transparent !important;
}

.auto-style1 tr:nth-child(4):hover {
    background-color: #fafafa !important;
}

/* 🔹 File Upload Styling */
input[type="file"] {
    padding: 12px 16px !important;
    border: 2px dashed #e2e8f0 !important;
    border-radius: 8px !important;
    background-color: #f8fafc !important;
    width: 100% !important;
    margin: 4px 0 !important;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-size: 14px;
    transition: all 0.3s ease;
    cursor: pointer;
}

input[type="file"]:hover {
    border-color: #059669 !important;
    background-color: #f0fff4 !important;
}

input[type="file"]:focus {
    border-color: #059669 !important;
    outline: none !important;
    box-shadow: 0 0 0 3px rgba(5, 150, 105, 0.1) !important;
}

/* 🔹 Button Styling */
#btnRegister {
    background: linear-gradient(135deg, #059669 0%, #047857 100%) !important;
    color: white !important;
    border: none !important;
    padding: 16px 40px !important;
    border-radius: 10px !important;
    font-size: 16px !important;
    font-weight: 600 !important;
    cursor: pointer !important;
    transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1) !important;
    display: block !important;
    margin: 30px auto 20px !important;
    width: 220px !important;
    height: 52px !important;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    letter-spacing: 0.5px;
    text-transform: uppercase;
    box-shadow: 0 4px 15px rgba(5, 150, 105, 0.3);
}

#btnRegister:hover {
    transform: translateY(-3px) !important;
    box-shadow: 0 8px 25px rgba(5, 150, 105, 0.4) !important;
    background: linear-gradient(135deg, #047857 0%, #035c3f 100%) !important;
}

#btnRegister:active {
    transform: translateY(-1px) !important;
}

/* 🔹 Validation Error Styling */
.RequiredFieldValidator,
.RegularExpressionValidator,
.CompareValidator {
    display: block !important;
    margin-top: 6px !important;
    font-size: 12px !important;
    color: #e53e3e !important;
    font-weight: 500;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

/* 🔹 Date Input Styling */
input[type="date"] {
    cursor: pointer !important;
}

/* 🔹 Number Input Styling */
input[type="number"] {
    -moz-appearance: textfield !important;
}

input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none !important;
    margin: 0 !important;
}

/* 🔹 Responsive Design */
@media (max-width: 768px) {
    table.auto-style1 {
        width: 95% !important;
        margin: 20px auto !important;
        border-radius: 10px !important;
    }
    
    .auto-style3, .auto-style4 {
        width: 100% !important;
        display: block !important;
        padding: 15px 20px !important;
    }
    
    .TextBox, input[type="file"] {
        width: 100% !important;
    }
    
    .auto-style1 tr:first-child td {
        font-size: 24px !important;
        padding: 25px 20px !important;
    }
    
    .auto-style1 td {
        padding: 15px 20px !important;
    }
    
    #rblGender label {
        display: block !important;
        margin-bottom: 12px !important;
        margin-right: 0 !important;
    }
    
    #btnRegister {
        width: 90% !important;
        margin: 25px auto 15px !important;
    }
}

@media (max-width: 480px) {
    table.auto-style1 {
        margin: 15px auto !important;
        border-radius: 8px !important;
    }
    
    .auto-style1 td {
        padding: 12px 15px !important;
    }
    
    .TextBox {
        padding: 12px 14px !important;
        font-size: 16px !important;
    }
    
    .auto-style1 tr:first-child td {
        font-size: 22px !important;
        padding: 20px 15px !important;
    }
    
    #btnRegister {
        width: 100% !important;
        margin: 20px auto 10px !important;
    }
}

/* 🔹 Animation */
@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

.auto-style1 {
    animation: fadeInUp 0.6s ease-out;
}

.auto-style1 tr {
    animation: fadeInUp 0.4s ease-out;
}

/* 🔹 Focus States for Accessibility */
.TextBox:focus,
select:focus,
input[type="file"]:focus,
#rblGender input:focus,
#btnRegister:focus {
    outline: none !important;
    box-shadow: 0 0 0 3px rgba(5, 150, 105, 0.2) !important;
}

/* 🔹 Form Section Spacing */
.auto-style1 tr:last-child {
    border-bottom: none;
}

/* 🔹 Two Column Layout Styling */
.auto-style4 {
    border-right: 1px solid #f0f0f0;
}

/* 🔹 Full Width Elements */
td[colspan="2"] {
    position: relative;
}

/* 🔹 Experience Dropdown Specific */
#ddlExperience {
    margin: 8px 0 4px 0 !important;
}

/* 🔹 Professional Spacing Adjustments */
.auto-style1 br {
    display: none;
}

.auto-style1 td:first-child {
    padding-left: 25px !important;
}




/* 🔹 Job Seeker Registration Card */
.container.mt-5 .row .col-md-4.bg-light {
    background: #f8fafc !important;
    border-radius: 12px !important;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1) !important;
    border: 1px solid #e2e8f0 !important;
    width: 320px !important;
    height: 485px !important;
    margin: 50px auto !important;
    padding: 30px !important;
    transition: all 0.3s ease !important;
}


/* 🔹 Image Styling */
.container.mt-5 .row .col-md-4.bg-light img {
    width: 160px !important;
    height: 160px !important;
    border-radius: 50% !important;
    object-fit: cover !important;
    border: 3px solid #059669 !important;
    margin-bottom: 25px !important;
}

/* 🔹 List Styling */
.container.mt-5 .row .col-md-4.bg-light ul {
    list-style: none !important;
    padding: 0 !important;
    margin: 0 0 25px 0 !important;
    text-align: left !important;
}

.container.mt-5 .row .col-md-4.bg-light li {
    position: relative !important;
    padding: 10px 0 10px 30px !important;
    margin-bottom: 8px !important;
    font-size: 14px !important;
    line-height: 1.4 !important;
    color: #475569 !important;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif !important;
}

.container.mt-5 .row .col-md-4.bg-light li:before {
  
    position: absolute !important;
    left: 0 !important;
    color: #059669 !important;
    font-weight: bold !important;
    font-size: 14px !important;
}

/* 🔹 Link Styling */
.container.mt-5 .row .col-md-4.bg-light a {
    display: inline-block !important;
    color: #059669 !important;
    text-decoration: none !important;
    font-weight: 600 !important;
    font-size: 15px !important;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif !important;
    padding: 12px 25px !important;
    border: 2px solid #059669 !important;
    border-radius: 6px !important;
    transition: all 0.3s ease !important;
}



/* 🔹 Center Alignment */
.container.mt-5 .row .col-md-4.bg-light center {
    display: block ;
    text-align: center ;
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
    <td colspan="2">
        &nbsp;&nbsp;
        <asp:Label ID="lblExperience" runat="server" Text="Experience"></asp:Label>
        <br />
        &nbsp;&nbsp;
        <asp:DropDownList ID="ddlExperience" runat="server" Height="26px" Width="555px" CssClass="TextBox">
            <asp:ListItem>Select Experience</asp:ListItem>
            <asp:ListItem Value="Fresher">Fresher</asp:ListItem>
            <asp:ListItem Value="1-3 Years">1-3 Years</asp:ListItem>
            <asp:ListItem Value="3-5 Years">3-5 Years</asp:ListItem>
            <asp:ListItem Value="More than 5 Years">More than 5 Years</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvExperience" runat="server" ControlToValidate="ddlExperience" InitialValue="Select Experience" ErrorMessage="Experience is required." ForeColor="Red" Height="20px"/>
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




