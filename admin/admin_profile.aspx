<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_profile.aspx.cs" Inherits="job_portal.admin.admin_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
 <link rel="icon" type="../image/x-icon" href="Images/Static/white_logo.png" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 95%;
            height: 272px;
        }
        .auto-style2 {
            text-align: center;
        }
         .nav-link{
      color:#059669;
  }
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

/* Edit Profile Button */
.btn-edit-profile {
    background-color: #059669;
    color: white;
    font-size: 16px;
    font-weight: bold;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    transition: 0.3s ease-in-out;
    cursor: pointer;
}

.btn-edit-profile:hover {
    background-color: #047857;
    transform: scale(1.05);
}

/* Save Changes Button */
.btn-save-profile {
    background-color: #0f766e;
    color: white;
    font-size: 16px;
    font-weight: bold;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    transition: 0.3s ease-in-out;
    cursor: pointer;
}

.btn-save-profile:hover {
    background-color: #0c615a;
    transform: scale(1.05);
}

        .auto-style3 {
            cursor: pointer;
        }

    </style>
</head>
<body>
    <form id="admin_profile" runat="server">
          <ul class="nav nav-item nav-tabs " style=" font-weight:bold;background-color: #FFFFFF;">
      <li>
         <img src="../Images/JOB FiNDER logo.png" alt="Logo" class="auto-style1" style="width: 100px; height: 100px" />
      </li>
       <div style="display: flex; margin-left: auto; align-items: center; gap: 30px">
                <li class="nav-item"><a class="nav-link" href="/admin/admin_mainpage.aspx" style="color: #059669;">Home</a></li>

      <li class="nav-item"><a class="nav-link" href="#" style="color: #059669;">Jobs</a></li>
      <li class="nav-item"><a class="nav-link" href="/common/Company.aspx" style="color: #059669;">Employers</a></li>
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
        <div style="width: 320px; min-height: 400px;box-shadow:5px 5px 15px grey; border : 1px solid black; float:left;border-radius:10px;margin-left:650px;margin-top:150px">

            <table align="center" class="auto-style1">
                <tr>
                    <td style="font-weight: bolder; text-align: center; color: #059669; font-size: 25px;" class="auto-style2"> Details :
                        <br />
                           <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Username:</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                           <asp:Label ID="lblUsername" runat="server" Text="Label"></asp:Label><br />
                <asp:TextBox ID="txtUsername" runat="server" style="width: 100%; margin-top: 5px;" Visible="false"></asp:TextBox>   
                         <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email:</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                         <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label><br />
        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>   
                         <br />
                           
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Contact number:</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                          <asp:Label ID="lblContactno" runat="server" Text="Label"></asp:Label> <br />
        <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                        
                           <br />
                    </td>
                </tr>
                <tr>
    <td class="auto-style2">
        <asp:Button ID="btnEdit" runat="server" Text="Edit Profile" CssClass="btn-edit-profile" OnClick="btnEdit_Click" Height="48px" Width="185px"  />
        <asp:Button ID="btnSave" runat="server" Text="Save Changes" CssClass="btn-save-profile"  Visible="false" OnClick="btnSave_Click" Height="49px" Width="186px" />
    </td>
</tr>
                <tr>
                    <td class="auto-style2">
<asp:Button ID="btnForgotPassword" runat="server" Text="Forgot Password"   style="background-color: #059669; color: white; padding: 5px 10px; font-size: 12px; border-radius: 3px; cursor: pointer; width: auto; height: auto; " CssClass="auto-style3"   OnClick="btnForgotPassword_Click"   />                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
