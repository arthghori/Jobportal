<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_registration.aspx.cs" Inherits="job_portal.admin.Admin_registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style type="text/css">
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
        .auto-style3 {
            width: 400px;
            height: 300px;
            margin-left: 0px;
        }
        </style>
</head>
<body>
   
    <form id="admin_register" runat="server">
<!-- <div class="col-mt-5">
     <div class="row shadow p-2 mb-4 bg-white rounded">-->
        <div class="row" style="margin-left:200px;margin-top:100px;margin-bottom:100px">
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
                <td><asp:Button ID="btnRegister" runat="server" Text="Register" BackColor="#059669" ForeColor="White" Height="37px" Width="180px" />
                </td>
            </tr>
    
      </table>
 </div>
        <div class="col" style="margin-left:0px; margin-top:100px;text-align:center;">
            <img src="Images/Static/homePageJp.png"  alt="register" class="auto-style3"/>
        </div>
             </div>
      
    </form>
  

</body>
</html>
