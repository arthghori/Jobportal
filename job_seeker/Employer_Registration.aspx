<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employer_Registration.aspx.cs" Inherits="job_portal.job_seeker.Employer_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style type="text/css">
        .auto-style2 {
            width: 600px;
            height: 847px;
            padding-left:15px;
            
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
    <form id="Emp_Registration" runat="server" >
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
          <div class="container mt-5">
  <div class="row p-3 mb-5 bg-white rounded">
         <div class="col-md-4 bg-light text-center py-4 " style="width: 300px; height: 400px; margin-top:50px;" >
          <img src="Images/Static/white-boy.a0d2814a.png"  alt="image" style="width: 200px; height: 200px" />
          <ul>
          <li>
              On registering, you can
              Build your profile and let recruiters find you
          </li>
          <li> Get job postings delivered right to your email</li>

          <li>  Find a job and grow your career</li>
          </ul>
          <center><a href="Registration.aspx" style="color:#059669">Register as a job seeker</a></center>
      </div> 

            <table  style="box-shadow : 5px 5px 15px grey;background-color:#F3F3F3 ;margin-left:auto;margin-right:auto;margin-top:50px;margin-bottom:50px" class="auto-style2"  >
                <tr>
                    <td  style="font-family:Verdana,Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold;">&nbsp;Company registration<br />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp; <asp:Label ID="lblCname" runat="server" Text="Company name" Height="22px"></asp:Label> 
                        &nbsp; 
                        <br />
&nbsp;&nbsp; <asp:TextBox ID="txtCname" runat="server" Height="26px" Width="560px" placeholder="company name" CssClass="TextBox"></asp:TextBox> <br />
                          <asp:RequiredFieldValidator ID="rfvCompanyName" runat="server"  ControlToValidate="txtCname" ErrorMessage="Company Name is required." ForeColor="Red" />
                    </td>
                </tr>
                   <tr>
                        <td>
                         &nbsp;&nbsp; <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
                        &nbsp;<br />
&nbsp;&nbsp; <asp:TextBox ID="txtUname" runat="server" Height="26px" Width="560px" placeholder="Username" CssClass="TextBox"></asp:TextBox> <br />
                         <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUname" ErrorMessage="Username is required." ForeColor="Red" />
                        </td>
                  </tr>
                                <tr>
                   <td>

                       &nbsp;&nbsp; <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                     &nbsp;  <br />
&nbsp;&nbsp; <asp:TextBox ID="txtEmail" runat="server" Height="26px" Width="560px" placeholder="Email" CssClass="TextBox"></asp:TextBox> <br />


                     <asp:RequiredFieldValidator ID="rfvEmail" runat="server"  ControlToValidate="txtEmail" ErrorMessage="Email is required." ForeColor="Red" />
                  <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  ErrorMessage="Enter a valid email address." ForeColor="Red" />
                   </td>
               </tr>
                 <tr>
                    <td>&nbsp;&nbsp; <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                     &nbsp;<br />
&nbsp;&nbsp; <asp:TextBox ID="txtPassword" runat="server" Height="26px" Width="560px" placeholder="Password" CssClass="TextBox"></asp:TextBox> <br />
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." ForeColor="Red" />   
              </td>
          </tr>
                 <tr>
                     <td
                         >&nbsp;&nbsp; <asp:Label ID="lblCpassword" runat="server" Text="Confirm password"></asp:Label>
                     &nbsp;<br />
&nbsp;&nbsp; <asp:TextBox ID="txtCpassword" runat="server" Height="26px" Width="560px" placeholder="Confirm password" CssClass="TextBox"></asp:TextBox> <br />
                    <asp:CompareValidator ID="cvConfirmPassword" runat="server" ControlToValidate="txtCpassword" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match." ForeColor="Red" />
              </td>
         </tr>
                <tr>
                   <td>&nbsp;&nbsp; <asp:Label ID="lblContactno" runat="server" Text="Contact number"></asp:Label>
                       &nbsp;<br />
&nbsp;&nbsp; <asp:TextBox ID="txtContactno" runat="server" Height="26px" Width="560px" placeholder="Phone number" CssClass="TextBox" TextMode="Number" MaxLength="10"></asp:TextBox> <br />
                       <asp:RequiredFieldValidator ID="rfvContactNumber" runat="server"  ControlToValidate="txtContactno" ErrorMessage="Contact Number is required." ForeColor="Red" />
                   </td>
               </tr>  
                <tr>
                    <td>
                       &nbsp;&nbsp; <asp:Label ID="lblWebsite" runat="server" Text="Website"></asp:Label>
                       &nbsp;<br />
&nbsp;&nbsp; <asp:TextBox ID="txtWebsite" runat="server" Height="26px" Width="560px" placeholder="Website" CssClass="TextBox"></asp:TextBox> <br />
                      <asp:RequiredFieldValidator ID="rfvWebsite" runat="server"  ControlToValidate="txtWebsite" ErrorMessage="Website is required." ForeColor="Red" />
                 </td>
            </tr>
              
              
                <tr>
                    <td>
                        &nbsp;&nbsp; <asp:Label ID="lblIndustytype" runat="server" Text="Industry type"></asp:Label>
                        <br />
                        &nbsp;&nbsp;
                        <asp:DropDownList ID="ddlIndustryype" runat="server" Height="26px" Width="560px" placeholder="Industry Type" CssClass="TextBox">
                            <asp:ListItem>Select a Industry</asp:ListItem>
                            <asp:ListItem>Infromation technology</asp:ListItem>
                            <asp:ListItem>Banking and Insurance</asp:ListItem>
                            <asp:ListItem>Car</asp:ListItem>

                        </asp:DropDownList>  <br />
                        <asp:RequiredFieldValidator ID="rfvIndusrytype" runat="server"  ControlToValidate="ddlIndustryype" ErrorMessage="Industrytype is required." ForeColor="Red" />
                 </td>
            </tr>
                
                <tr>
                    <td>
                        &nbsp;&nbsp; <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                        &nbsp;<br />
&nbsp;&nbsp; <asp:TextBox ID="txtAddress" runat="server" Height="26px" Width="560px" placeholder="Address" CssClass="TextBox" TextMode="MultiLine"></asp:TextBox> <br />
                         <asp:RequiredFieldValidator ID="rfvAddress" runat="server"  ControlToValidate="txtAddress" ErrorMessage="Address is required." ForeColor="Red" />
                    </td>
                </tr>
                  
                <tr>

                    <td>&nbsp;&nbsp; <asp:Label ID="lblLocation" runat="server" Text="Location"></asp:Label>
                        &nbsp;<br />
&nbsp;&nbsp; <asp:TextBox ID="txtLocation" runat="server" Height="26px" Width="560px" placeholder="Location" CssClass="TextBox" TextMode="MultiLine"></asp:TextBox> <br />



                        <asp:RequiredFieldValidator ID="rfvLocation" runat="server"  ControlToValidate="txtLocation" ErrorMessage="Location is required." ForeColor="Red" />
                    </td>
                </tr>
                     <tr>
                        <td>

                        &nbsp;&nbsp; <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label>
                       &nbsp;<br />
&nbsp;&nbsp; <asp:TextBox ID="txtDescription" runat="server" Height="26px" Width="560px" placeholder="Description" CssClass="TextBox" TextMode="MultiLine"></asp:TextBox> <br />
 <br />

                       <asp:RequiredFieldValidator ID= "rfvDescriptionrunat" runat="server"  ControlToValidate="txtDescription" ErrorMessage="Location is required." ForeColor="Red" />
             
                    </td>
                </tr>

               
                <tr>
                    <td>
                        &nbsp;&nbsp; <asp:Label ID="lblCopanylogo" runat="server" Text="Company logo"></asp:Label>
                        <br />
                        &nbsp;&nbsp; <asp:FileUpload ID="fuFileupload" runat="server" Height="26px" Width="560px" /> <br />
                        <asp:RequiredFieldValidator ID="rfvFileupload" runat="server"  ControlToValidate="fuFileupload" ErrorMessage="File is required." ForeColor="Red" /></td>
                </tr>
                <tr>

                    <td>&nbsp;&nbsp;
                        <asp:Button ID="btnRegister" runat="server" Text="Register" BackColor="#059669" ForeColor="White" Height="37px" Width="180px" OnClick="btnRegister_Click" />
                        </td>
                </tr>
                </table>
      </div>
        </div>
          <asp:GridView ID="gvcompany" runat="server">
          </asp:GridView>

        
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

