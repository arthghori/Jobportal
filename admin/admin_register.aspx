<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_register.aspx.cs" Inherits="job_portal.admin.admin_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">         
    <title>Registration</title>
       <meta name="viewport" content="width=device-width, initial-scale=1" />
      <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"/>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
      <link rel="icon" type="../image/x-icon" href="../Images/JOB FiNDER logo.png" />
    
    <style type="text/css">

         .dropdown-menu li {
     padding: 10px;
     text-align: left;
 }
 .profile-dropdown {
     position: relative;
     cursor: pointer;
 }

 .profile-icon {
     border-radius: 50%;
     width: 90px;
     height: 90px;
 }

 .dropdown-menu {
     position: absolute;
     top: 70px; 
     right: 0;
     background-color: white;
     border: 1px solid #ddd;
     border-radius: 5px;
     box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
     list-style: none;
     padding: 10px 0;
     min-width: 150px;
     display: none; 
     z-index: 1000;
 }

.dropdown-menu li a {
     text-decoration: none;
     color: #333;
     display: block;
     padding: 10px 15px;
}

.dropdown-menu li a:hover {
     background-color: #059669;
     color: white;
}

.profile-dropdown:hover .dropdown-menu {
     display: block;
}
        .TextBox {
            border-radius: 8px;
        }

        #btnRegister:hover {
            color: antiquewhite;
            cursor: pointer;
            background-color: aqua;
        }

        #btnRegister {
            border-radius: 20px;
        }

        .auto-style3 {
            width: 400px;
            height: 300px;
            margin-left: 0px;
        }

        .bottom-bar {
            margin-top: 25px;
            padding-top: 10px;
            border-top: 1px solid rgba(255, 255, 255, 0.2);
            text-align: center;
        }

            .bottom-bar a {
                text-decoration: none;
                color: white;
            }

        .footer a {
            text-decoration: none;
            color: white;
        }

        footer {
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
   
    <form id="admin_register" runat="server">
          <ul class="nav nav-item nav-tabs " style=" font-weight:bold;background-color: #FFFFFF;">
      <li>
         <img src="../Images/JOB FiNDER logo.png" alt="Logo" class="auto-style1" style="width: 100px; height: 100px" />
      </li>
       <div style="display: flex; margin-left: auto; align-items: center; gap: 30px">
           <li class="nav-item"><a class="nav-link" href="/admin/admin_mainpage.aspx" style="color: #059669;">Home</a></li>
      <li class="nav-item"><a class="nav-link" href="#" style="color: #059669;">Jobs</a></li>
      <li class="nav-item"><a class="nav-link" href="/company/Company.aspx" style="color: #059669;">Employers</a></li>
      <li class="nav-item"><a class="nav-link" href="/job_seeker/Job_seeker.aspx" style="color: #059669;">Job Seekers</a></li>

           <li class="profile-dropdown">
    <img src="../Images/log_out-removebg-preview.png" alt="Profile" class="profile-icon" />
    <ul class="dropdown-menu">
        <li><a href="/admin/admin_profile.aspx">Profile</a></li>
        <li><a href="/auth/logout.aspx">Logout</a></li>
    </ul>
</li>

  </div>
              </ul>

<!-- <div class="col-mt-5">
     <div class="row shadow p-2 mb-4 bg-white rounded">-->
        <div  style="display:flex; margin-left:200px;margin-top:100px;margin-bottom:100px">
                    <div class="col" style="width:545px;height:550px;box-shadow : 5px 5px 15px grey; border : 1px solid black; border-radius:10px;">

       
        <table style="width:540px;height:500px">
            <tr>
                <td  style="font-family:Verdana,Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold;">Admin registration</td>
            </tr>
            <tr>
                <td> &nbsp;<asp:Label ID="lblUname" runat="server" Text="Username"></asp:Label><br />
                    &nbsp;<asp:TextBox ID="txtUname" runat="server" Height="25px" Width="554px" CssClass="TextBox" placeholder="Username"></asp:TextBox>  <br />
                     <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUname" ErrorMessage="Username is required."  ForeColor="Red" Height="20px" />
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label><br />
                    <asp:TextBox ID="txtPassword" runat="server" Height="25px" Width="554px" placeholder="Password" CssClass="TextBox"></asp:TextBox>  <br />
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required."  ForeColor="Red" Height="20px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;<asp:Label ID="lblCpassword" runat="server" Text="Confirm password"></asp:Label>
                    &nbsp; <asp:TextBox ID="txtCpassword" runat="server" Height="25px" Width="554px" placeholder="Confirm password" CssClass="TextBox"></asp:TextBox>  <br />
                      <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtCpassword" ErrorMessage="ConfirmPassword is required."  ForeColor="Red" Height="20px" />&nbsp; <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtCpassword" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match." CssClass="error" ForeColor="Red" Height="20px" />
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label><br />
                    <asp:TextBox ID="txtEmail" runat="server" Height="25px" Width="554px"   placeholder="Email" CssClass="TextBox"></asp:TextBox>  <br />
                      <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required."  ForeColor="Red" Height="20px" /><asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email format." CssClass="error"
   ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ForeColor="Red" Height="20px" />
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblContactnumber" runat="server" Text="Contact number"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="txtContactnumber" runat="server" Height="25px" Width="554px" placeholder="Contact number" CssClass="TextBox"></asp:TextBox>  <br />
                    <asp:RequiredFieldValidator ID="rfvContactNumber" runat="server"  ControlToValidate="txtContactnumber" ErrorMessage="Contact Number is required." ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td><asp:Button ID="btnRegister" runat="server" Text="Register" BackColor="#059669" ForeColor="White" Height="37px" Width="180px" OnClick="btnRegister_Click" />
                </td>
            </tr>
    
      </table>
 </div>
        <div class="col" style="margin-left:0px; margin-top:100px;text-align:center;">
            <img src="../Images/Static/homePageJp.png"  alt="register" class="auto-style3"/>
        </div>
             </div>
      
      <%--  <asp:GridView ID="gvadmin" runat="server">
        </asp:GridView>--%>
      
           </form>
                <!-- footer-->
                       <div class="footer">
  <div style="margin-top:300px;margin-bottom:0px; padding:15px; background-color:#059669;color:white; text-align: center;" >
      
  <div style="display:flex">

      <div class="col-md-6">
                 <h5 style="margin-top:11px">Quick Links</h5>
                 <ul class="nav flex-column">
                   <li class="nav-item" ><a href="/common/About_us.aspx" >About Us</a></li>
<li class="nav-item"><a href="/common/Contact_us.aspx" >Contact Us</a></li>
                     <li class="nav-item"><a href="#" >Our Services</a></li>
<li class="nav-item"><a href="/common/Privacy_policy.aspx" >Privacy Policy</a></li>
<li class="nav-item"><a href="/common/Terms_condition.aspx" >Terms & Conditions</a></li>
                 </ul>
             </div>

        
             <div class="col-md-6">
                 <h5 style="margin-top:11px">Contact</h5>
                <p> <i class="bi bi-geo-alt-fill"></i> 123 Street, New York, USA</p>
                 <p><i class="bi bi-telephone-fill"></i> +012 345 67890</p>
                 <p><i class="bi bi-envelope-fill"></i> info@example.com</p> 
          <!--  <ul  class=" nav">
             <li class="nav-item">&nbsp; <img src="Images/white-Facebook-icon-removebg-preview.png" style="width: 50px; height: 50px" class="auto-style2" /></li>
             <li class="nav-item"> &nbsp;&nbsp; <img src="Images/white_twitter_icon-removebg-preview.png" class="auto-style3" style="width: 65px; height:68px" /></li>
             <li class="nav-item"> &nbsp; <img src="Images/white_youtube_icon-removebg-preview.png" style="width: 72px; height: 71px" /></li>
             <li class="nav-item"> <img src="Images/white_linkedin_icon-removebg-preview.png" style="width: 65px; height: 68px" /></li>
         </ul>-->
                 </div>
      </div>
       
         <div class="bottom-bar" >
             <p">© Your Site Name, All Rights Reserved. Designed by <a href="#">HTML Codex</a></p>
             <a href="#">Home</a> | 
             <a href="#">Cookies</a> | 
             <a href="#">Help</a> | 
             <a href="#">FAQs</a>

         </div>
    </div>
     
</div>
 
  

</body>
</html>

