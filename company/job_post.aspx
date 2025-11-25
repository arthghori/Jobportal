<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="job_post.aspx.cs" Inherits="job_portal.company.job_post" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="../Images/JOB FiNDER logo.png" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <title>job post</title>
    <style type="text/css">



        .auto-style1 {
            width: 100%;
            height: 570px;
        }
        #btnPost{
            border-radius:18px;
        }
        .Textbox{
            border-radius:8px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            height: 56px;
        }
               .nav-link{
           color:#059669;
         }
        
   .nav {
    display: flex;
    align-items: center;
    list-style: none;
    padding: 0;
    margin: 0;
}

/* Moves Jobs, Messages, and Profile to the Right */
.nav-right {
    display: flex;
    align-items: center;
    margin-left: auto;  /* Pushes it to the right */
    gap: 20px; /* Space between items */
}

.nav-item {
    margin: 0 15px;
}

.profile-dropdown {
    position: relative;
    cursor: pointer;
}

.profile-icon {
    border-radius: 50%;
    width: 90px;
    height: 90px;
    cursor: pointer;
}

.dropdown-menu {
    position: absolute;
    top: 100%;
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

/* Show dropdown on hover */
.nav-item.dropdown:hover .dropdown-menu,
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
    }
   #ddlcampany{
       border-radius:8px;
   }
   #ddlcategory{
       border-radius:8px;
   }

   /* 🔹 Job Post Container */
div[style*="border:1px solid black;border-radius:4px; width:550px;height:1050px;box-shadow:5px 5px 15px grey;"] {
    background: white;
    border: 1px solid black  ;
    border-radius: 10px  ;
    box-shadow: 5px 5px 15px grey  ;
    padding: 20px;
    margin: 20px auto;
    width: 550px  ;
    height: auto  ;
    min-height: 1050px;
}

/* 🔹 Table Styling */
.auto-style1 {
    width: 100%  ;
    border-collapse: collapse;
    background-color: #F3F3F3  ;
}

.auto-style1 tr {
    border-bottom: 1px solid #ddd;
}

.auto-style1 td {
    padding: 12px 8px;
    vertical-align: top;
}

.auto-style2, .auto-style3 {
    padding: 8px !important;
}

/* 🔹 Header Styling */
.auto-style1 tr:first-child td {
    font-family: Verdana, Geneva, Tahoma, sans-serif !important;
    font-size: 20px !important;
    font-weight: bold !important;
    color: #333;
    background-color: #059669 !important;
    color: white !important;
    padding: 15px !important;
    text-align: center;
    border-radius: 5px 5px 0 0;
}

/* 🔹 Label Styling */
.auto-style1 tr td:first-child {
    font-weight: bold;
    color: #333;
    font-size: 14px;
    padding-left: 15px !important;
    padding-top: 15px !important;
}

/* 🔹 Textbox Styling */
.Textbox {
    width: 95% !important;
    padding: 10px !important;
    border: 1px solid #ccc !important;
    border-radius: 5px !important;
    font-size: 14px !important;
    transition: all 0.3s ease !important;
    margin: 5px 0 !important;
}

.Textbox:focus {
    border-color: #059669 !important;
    box-shadow: 0 0 5px rgba(5, 150, 105, 0.5) !important;
    outline: none !important;
}

/* 🔹 Dropdown Styling */
select[id*="ddl"] {
    width: 95% !important;
    padding: 10px !important;
    border: 1px solid #ccc !important;
    border-radius: 5px !important;
    font-size: 14px !important;
    background-color: white !important;
    transition: all 0.3s ease !important;
    margin: 5px 0 !important;
}

select[id*="ddl"]:focus {
    border-color: #059669 !important;
    box-shadow: 0 0 5px rgba(5, 150, 105, 0.5) !important;
    outline: none !important;
}

/* 🔹 Skills Section Styling */
#ddlSkills {
    width: 200px !important;
    display: inline-block !important;
    margin-right: 10px !important;
}

#btnAddSkill, #btnRemoveSkill {
    background-color: #059669 !important;
    color: white !important;
    border: none !important;
    padding: 8px 15px !important;
    border-radius: 5px !important;
    font-size: 12px !important;
    cursor: pointer !important;
    transition: all 0.3s ease !important;
    margin: 5px !important;
    font-weight: bold !important;
}

#btnAddSkill:hover, #btnRemoveSkill:hover {
    background-color: #047857 !important;
    transform: translateY(-2px) !important;
    box-shadow: 0 4px 8px rgba(0,0,0,0.2) !important;
}

#lstSelectedSkills {
    width: 95% !important;
    border: 1px solid #ccc !important;
    border-radius: 5px !important;
    padding: 5px !important;
    background-color: white !important;
    font-size: 14px !important;
}

/* 🔹 TextArea Styling */
textarea.Textbox {
    min-height: 80px !important;
    resize: vertical !important;
    font-family: Arial, sans-serif !important;
    line-height: 1.5 !important;
}

/* 🔹 Button Styling */
#btnPost {
    background-color: #059669 !important;
    color: white !important;
    border: none !important;
    padding: 12px 30px !important;
    border-radius: 5px !important;
    font-size: 16px !important;
    font-weight: bold !important;
    cursor: pointer !important;
    transition: all 0.3s ease !important;
    display: block !important;
    margin: 20px auto !important;
    width: 200px !important;
    height: 45px !important;
}

#btnPost:hover {
    background-color: #047857 !important;
    transform: translateY(-2px) !important;
    box-shadow: 0 6px 12px rgba(0,0,0,0.2) !important;
}

/* 🔹 Required Field Validator Styling */
.RequiredFieldValidator {
    display: block !important;
    margin-top: 5px !important;
}

span[style*="color:Red"] {
    color: #dc3545 !important;
    font-size: 12px !important;
    display: block !important;
    margin-top: 5px !important;
    font-weight: normal !important;
}

/* 🔹 Compare Validator Styling */
#cvDate {
    display: block !important;
    margin-top: 5px !important;
}

/* 🔹 Experience Dropdown Specific */
#ddlExperience {
    width: 95% !important;
}

/* 🔹 Job Type Dropdown Specific */
#ddlJobpost {
    width: 95% !important;
}

/* 🔹 Date Input Styling */
input[type="date"] {
    cursor: pointer !important;
}

input[type="date"]:focus {
    border-color: #059669 !important;
    box-shadow: 0 0 5px rgba(5, 150, 105, 0.5) !important;
}

/* 🔹 Responsive Design */
@media (max-width: 600px) {
    div[style*="border:1px solid black;border-radius:4px; width:550px;height:1050px;box-shadow:5px 5px 15px grey;"] {
        width: 95% !important;
        height: auto !important;
        margin: 10px !important;
        padding: 15px !important;
    }
    
    .Textbox, select[id*="ddl"] {
        width: 100% !important;
    }
    
    #ddlSkills {
        width: 100% !important;
        margin-right: 0 !important;
        margin-bottom: 10px !important;
    }
    
    #btnAddSkill, #btnRemoveSkill {
        width: 48% !important;
        display: inline-block !important;
        margin: 1% !important;
    }
    
    .auto-style1 td {
        padding: 8px 5px !important;
    }
}

@media (max-width: 480px) {
    div[style*="border:1px solid black;border-radius:4px; width:550px;height:1050px;box-shadow:5px 5px 15px grey;"] {
        padding: 10px !important;
    }
    
    .auto-style1 tr:first-child td {
        font-size: 18px !important;
        padding: 12px !important;
    }
    
    #btnAddSkill, #btnRemoveSkill {
        width: 100% !important;
        margin: 5px 0 !important;
    }
}

/* 🔹 Animation */
@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(10px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

.auto-style1 tr {
    animation: fadeIn 0.3s ease-in-out;
}

/* 🔹 Focus States for Accessibility */
.Textbox:focus,
select[id*="ddl"]:focus,
input[type="date"]:focus,
#btnAddSkill:focus,
#btnRemoveSkill:focus,
#btnPost:focus {
    outline: 2px solid #059669 !important;
    outline-offset: 2px !important;
}

/* 🔹 Placeholder Styling */
.Textbox::placeholder {
    color: #999 !important;
    font-style: italic !important;
}

/* 🔹 ListBox Styling */
#lstSelectedSkills option {
    padding: 5px !important;
    border-bottom: 1px solid #eee !important;
}

#lstSelectedSkills option:hover {
    background-color: #f8f9fa !important;
}

/* 🔹 Specific Element Margins */
.auto-style1 tr td {
    padding-bottom: 10px !important;
}

.auto-style1 tr:last-child td {
    text-align: center !important;
    padding-top: 20px !important;
    border-bottom: none !important;
}


        </style>
</head>
<body>
    <form id="job_post" runat="server">
  
               <header>
    <ul class="nav nav-tabs" style="font-weight: bold; background-color: #FFFFFF; display: flex; align-items: center; padding: 10px;">
        <li>
            <img src="../Images/JOB FiNDER logo.png" alt="Logo" class="auto-style1" style="width: 100px; height: 100px;" />
        </li>

        <!-- RIGHT SIDE NAV ITEMS -->
        <div class="nav-right">
            <li class="nav-item">
    <a class="nav-link" href="/company/company_main.aspx" style="color: #059669;">Home</a>
</li>
            <li class="nav-item dropdown">
                <a class="nav-link" href="#" style="color: #059669;" id="jobsDropdown">Jobs</a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/company/job_post.aspx">Add job</a></li>
                    <li><a class="dropdown-item" href="/company/postedjob_list.aspx">Posted jobs</a></li>
                </ul>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="#" style="color: #059669;">Messages</a>
            </li>

            <li class="profile-dropdown">
                <img src="../Images/log_out-removebg-preview.png" alt="Profile" class="profile-icon" />
                <ul class="dropdown-menu">
                    <li><a href="/company/Company_profile.aspx">Profile</a></li>
                    <li><a href="/auth/logout.aspx">Logout</a></li>
                </ul>
            </li>
        </div>
    </ul>
</header>
  
               <div class="row" style="margin-left:300px">
            <div class="col" style="margin-top:100px; height: 1901px;">
                <div style="border:1px solid black;border-radius:4px; width:575px;height:1965px; box-shadow:5px 5px 15px grey;">
                    <table class="auto-style1" style="background-color:#F3F3F3">
                        <tr>
                            <td style="font-family:Verdana,Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold;">&nbsp; Job Post</td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;<br />&nbsp; Job Title:</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtJobtitle" runat="server" Height="26px" Width="521px" CssClass="Textbox" placeholder="Jobtitle"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Job title is required" ControlToValidate="txtJobtitle" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp; Company Name:</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlcampany" runat="server" Width="523px" Enabled="false"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp; Description:</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtDescription" runat="server" Height="49px" Width="522px" CssClass="Textbox" placeholder="Description" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Description is required" ControlToValidate="txtDescription" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <%--skill--%> 
<tr>
    <td>&nbsp;&nbsp; Skills Required:</td>
</tr>
<tr>
    <td class="auto-style2">
        <asp:DropDownList ID="ddlSkills" runat="server" Width="300px"></asp:DropDownList>
        <asp:Button ID="btnAddSkill" runat="server" Text="Add Skill" OnClick="btnAddSkill_Click" CausesValidation="false" />
        <asp:Button ID="btnRemoveSkill" runat="server" Text="Remove Skill" OnClick="btnRemoveSkill_Click" CausesValidation="false" Width="141px" />
    </td>
</tr>
<tr>
    <td>&nbsp;&nbsp; Selected Skills:</td>
</tr>
<tr>
    <td class="auto-style2">
        <asp:ListBox ID="lstSelectedSkills" runat="server" Width="300px" Height="100px"></asp:ListBox>
    </td>
</tr>

                        
                        
                        
                        <tr>
                            <td>&nbsp;&nbsp; Location:</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtLocation" runat="server" Height="26px" Width="523px" CssClass="Textbox" placeholder="Location"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Location is required" ControlToValidate="txtLocation" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp; Category:</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:DropDownList ID="ddlcategory" runat="server" Width="523px"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp; Salary:</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtSalary" runat="server" Height="26px" Width="523px" CssClass="Textbox" placeholder="Salary"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Salary is required" ControlToValidate="txtSalary" ForeColor="Red"></asp:RequiredFieldValidator>
                               
                            </td>
                        </tr>

                          <tr>
    <td>&nbsp;&nbsp; Experience Required:</td>
</tr>
<tr>
    <td class="auto-style2">
        <asp:DropDownList ID="ddlExperience" runat="server" Height="42px" Width="555px" CssClass="Textbox">
            <asp:ListItem Text="Select Experience" Value=""></asp:ListItem>
            <asp:ListItem Text="Fresher" Value="Fresher"></asp:ListItem>
            <asp:ListItem Text="1-3 Years" Value="1-3 Years"></asp:ListItem>
            <asp:ListItem Text="3-5 Years" Value="3-5 Years"></asp:ListItem>
            <asp:ListItem Text="More than 5 Years" Value="More than 5 Years"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvExperience" runat="server" 
            ControlToValidate="ddlExperience" 
            ErrorMessage="Experience is required."  
            ForeColor="Red" Height="20px" />
    </td>
</tr>


                        <tr>
                            <td>&nbsp;&nbsp; Job Type:</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlJobpost" runat="server" Height="44px" Width="525px" CssClass="Textbox">
                                    <asp:ListItem>---Select job---</asp:ListItem>
                                    <asp:ListItem Text="Full-Time" Value="Full Time"></asp:ListItem>
                                    <asp:ListItem Text="Part-Time" Value="Part Time"></asp:ListItem>
                                    <asp:ListItem Text="Internship" Value="Internship"></asp:ListItem>
                                    <asp:ListItem Text="Freelance" Value="Freelance"></asp:ListItem>
                                    <asp:ListItem Text="Contract" Value="Contract"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please select a job type" ControlToValidate="ddlJobpost" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp; Post Date:</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtPostdate" runat="server" Height="33px" Width="523px" TextMode="Date" CssClass="Textbox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Post date is required" ControlToValidate="txtPostdate" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp; Application Deadline:</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtDate" runat="server" Height="33px" Width="523px" TextMode="Date" CssClass="Textbox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Application deadline is required" ControlToValidate="txtDate" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="cvDate" runat="server" ControlToValidate="txtDate" ControlToCompare="txtPostdate" Operator="GreaterThan" ErrorMessage="Deadline must be after the post date." ForeColor="Red"/>
                            </td>
                        </tr>
                        <tr>
                            <td><br />
                                &nbsp;
                                <asp:Button ID="btnPost" runat="server" Text="POST" BackColor="#059669" ForeColor="White" Height="37px" Width="180px" OnClick="btnPost_Click"/>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

                        <div class="footer">
      <div class="row  container-fluid" style="margin-top:300px;margin-left: 2px; background-color:#059669;color:white; text-align: center; height: 100%" >
          
      

          <div class="col-md-4">
                     <h5 style="margin-top:11px">Quick Links</h5>
                     <ul class="nav flex-column">
                         <li class="nav-item" ><a href="/common/About_us.aspx" >About Us</a></li>
                         <li class="nav-item"><a href="/common/Contact_us.aspx" >Contact Us</a></li>
                         <li class="nav-item"><a href="#" >Our Services</a></li>
                         <li class="nav-item"><a href="/common/Privacy_policy.aspx" >Privacy Policy</a></li>
                         <li class="nav-item"><a href="#" >Terms & Conditions</a></li>
                     </ul>
                 </div>

            
                 <div class="col-md-4">
                     <h5 style="margin-top:11px">Contact</h5>
                    <p> <i class="bi bi-geo-alt-fill"></i> 123 Street, New York, USA</p>
                     <p><i class="bi bi-telephone-fill"></i> +012 345 67890</p>
                     <p><i class="bi bi-envelope-fill"></i> info@example.com</p> 

           </div>
<br />
                       <div class="col-md-4">
         <h5 style="margin-top:11px">Quick Links</h5>
      <div >
          <input type="text" placeholder="Name" /> <br />
          <input type="email" placeholder="Email address" /><br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="text" placeholder="Message"/>&nbsp;
         <input type="button" value="Send" style="background-color:white;color:#059669;border:0px;height:30px;"/>
          <div>
         &nbsp;</div>
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

        </form>
</body>
 </html>

 


