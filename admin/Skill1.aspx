<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Skill1.aspx.cs" Inherits="job_portal.admin.Skill1" %>

<!DOCTYPE html>
<html>
<head runat="server">
        <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="../Images/Static/white_logo.png" />
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Skill Management List</title>
    <style>
        /* General Page Styling */
        body {
            font-family: Arial, sans-serif;
            /*            margin: 15px;*/
        }

        h2 {
            margin-top: 30px;
            margin-left: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Centered Container */
        .container {
            width: 500px;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
        }

        /* Heading */
        h2 {
            text-align: center;
            color: #059669;
            margin-bottom: 20px;
        }

        /* Input Field Styling */
        .input-container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .text-box {
            padding: 8px;
            width: 250px;
            margin-left: 20px;
        }


        padding: 10px;
        width: 70%;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 14px;
        }

        /* Buttons Styling */
        .btn {
            padding: 10px 15px;
            background-color: #059669;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-size: 14px;
            transition: all 0.3s ease-in-out;
        }

            .btn:hover {
                background-color: #059669;
            }

            .btn:hover {
                background-color: #047857;
            }

        /* GridView Table Styling */
        .table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            margin-top: 10px;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
        }

            .table th, .table td {
                padding: 12px;
                border: 1px solid #ddd;
                text-align: center;
            }

            .table th {
                background-color: #059669;
                color: white;
            }

        /* Delete Button Styling */
        .delete-btn {
            background-color: red;
            padding: 8px 12px;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-size: 14px;
            transition: all 0.3s ease-in-out;
        }

            .delete-btn:hover {
                background-color: darkred;
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
            .delete-btn:hover

        {
            background-color: darkred;
        }

        }

        .auto-style1 {
            padding: 8px;
            margin-left: 20px;
        }
    </style>
</head>
<body>
    <form id="Skillslist" runat="server">
         <ul class="nav nav-item nav-tabs " style=" font-weight:bold;background-color: #FFFFFF;">
     <li>
        <img src="../Images/JOB FiNDER logo.png" alt="Logo" class="auto-style1" style="width: 100px; height: 100px" />
     </li>
      <div style="display: flex; margin-left: auto; align-items: center; gap: 30px">
         <li class="nav-item"><a class="nav-link" href="/admin_mainpage.aspx" style="color: #059669;">Home</a></li>

     <li class="nav-item"><a class="nav-link" href="#" style="color: #059669;">Jobs</a></li>
     <li class="nav-item"><a class="nav-link" href="/company/Company.aspx" style="color: #059669;">Employers</a></li>
     <li class="nav-item"><a class="nav-link" href="/job_seeker/Job_seeker.aspx" style="color: #059669;">Job Seekers</a></li>

          <li class="profile-dropdown">
    <img src="../Images/log_out-removebg-preview.png" alt="Profile" class="profile-icon" />
    <ul class="dropdown-menu">
        <li><a href="/admin_profile.aspx">Profile</a></li>
        <li><a href="/auth/logout.aspx">Logout</a></li>
    </ul>
</li>

 </div>
             </ul>
        <div>

        <div class="container">

            <h2>Skill Management List</h2>
            
            <div class="input-container">
                <asp:TextBox ID="txtSkillName" runat="server" CssClass="auto-style1" Placeholder="Enter Skill Name" Width="400px"></asp:TextBox>
                <asp:Button ID="btnAddSkill" runat="server" CssClass="btn" Text="Add Skill" OnClick="btnAddSkill_Click" Style="background-color: #059669" />
            </div>

          <asp:GridView ID="gvSkills" runat="server" AutoGenerateColumns="False" CssClass="table" 
    OnRowDeleting="gvSkills_RowDeleting" DataKeyNames="SkillID">
    <Columns>
        <asp:BoundField DataField="skillname" HeaderText="Skill Name" />
        <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <asp:Button ID="btnDelete" runat="server" Text="Delete" 
                    CommandName="Delete" CommandArgument='<%# Eval("SkillID") %>'
                    Style="background-color: red; color: white; padding: 6px 12px; border: none; 
                           cursor: pointer; border-radius: 5px; font-size: 14px;" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

        </div>
        </form>

            <div class="footer">
  <div class="" style="margin-top:300px;margin-bottom:0px; padding:15px; background-color:#059669;color:white; text-align: center; height: 100%" >
      
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
             <a href="#">Home</a> 
             <a href="#">Cookies</a> 
             <a href="#">Help</a> 
             <a href="#">FAQs</a>

         </div>
    </div>
     
</div>

    
</body>
</html>


