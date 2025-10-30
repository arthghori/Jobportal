<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_profile.aspx.cs" Inherits="job_portal.job_seeker.Employee_profile" EnableEventValidation="false" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="../Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="icon" type="image/x-icon" href="../Images/JOB FiNDER logo.png" />

    <title>Employee Profile</title>
    <style>
        .auto-style1 {
            width: 100%;
        }

 
 

        /* 🔹 Profile Image Styling */
        .profile-image {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 10px;
        }

        /* 🔹 Form Input Fields */
        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 10px;
            font-size: 14px;
        }

        /* 🔹 Buttons */
        .btn-profile {
            background-color: #059669;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s ease-in-out;
            text-align: center;
            float:left;
         
        }

        #btnSubmit2 {
            border-radius: 10px;
            background-color: #059669;
            color: white;
            font-size: 15px;
            width: 70%;
            text-align: center;
            margin-left: 5px;
        }

        #btnViewresume {
            color: #059669;
            font-weight: bolder;
        }

            #btnViewresume:hover {
                background-color: #059669;
                color: white;
            }

        #btnUpdateresume {
            background-color: #059669;
            color: white;
        }

        /*        header*/
        .nav-link {
            color: #059669;
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


        html, body {
            overflow-x: hidden;
            margin: 0;
            padding: 0;
            width: 100%;
        }

        /* 🔹 Footer */
.footer {
    background-color: #059669;
    color: white;
    padding: 20px;
    text-align: center;
    margin-top: auto; /* Ensures footer sticks to bottom */
}

.footer a {
    color: white;
    text-decoration: none;
}

.footer a:hover {
    text-decoration: underline;
}

/* 🔹 Bottom Bar */
.bottom-bar {
    margin-top: 25px;
    padding-top: 10px;
    border-top: 1px solid rgba(255, 255, 255, 0.2);
    text-align: center;
}

.bottom-bar a {
    text-decoration: none;
    color: white;
    margin: 0 10px;
}
 


 /* 🔹 Skills Section Styling */
.skills-container {
    background: white;
    border: 1px solid black;
    border-radius: 10px;
    box-shadow: 5px 5px 15px grey;
    padding: 20px;
    margin-bottom: 20px;
}

.skills-header {
    font-size: 24px;
    font-weight: bold;
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

.add-skill-section {
    margin-bottom: 25px;
    padding: 15px;
    background-color: #f8f9fa;
    border-radius: 8px;
    border: 1px solid #e9ecef;
}

.skill-input-group {
    display: flex;
    gap: 10px;
    align-items: center;
}

.skill-dropdown {
    flex: 1;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 14px;
    background-color: white;
}

.add-skill-btn {
    background-color: #059669;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s ease-in-out;
    white-space: nowrap;
}

.add-skill-btn:hover {
    background-color: #047857;
    transform: translateY(-2px);
}

.skills-list {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    margin-top: 15px;
    min-height: 50px;
    align-items: center;
}

.skill-item {
    background-color: #e9ecef;
    padding: 8px 15px;
    border-radius: 20px;
    font-size: 14px;
    display: flex;
    align-items: center;
    gap: 8px;
    border: 1px solid #dee2e6;
    transition: all 0.3s ease;
}

.skill-item:hover {
    background-color: #dee2e6;
    transform: translateY(-2px);
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}

.skill-name {
    font-weight: 500;
    color: #495057;
}

.remove-skill-btn {
    background: none;
    border: none;
    color: #dc3545;
    cursor: pointer;
    font-weight: bold;
    padding: 0;
    width: 20px;
    height: 20px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: all 0.3s ease;
    font-size: 16px;
}

.remove-skill-btn:hover {
    background-color: #dc3545;
    color: white;
    transform: scale(1.1);
}

.no-skills-message {
    text-align: center;
    color: #6c757d;
    font-style: italic;
    padding: 20px;
    width: 100%;
}

/* 🔹 Responsive Design */
@media (max-width: 768px) {
    .skill-input-group {
        flex-direction: column;
        gap: 10px;
    }
    
    .skill-dropdown {
        width: 100%;
    }
    
    .add-skill-btn {
        width: 100%;
    }
    
    .skills-list {
        justify-content: center;
    }
}

/* 🔹 Animation for skill items */
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

.skill-item {
    animation: fadeIn 0.3s ease-in-out;
}

/* 🔹 Form controls consistency */
.skills-container .form-control {
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 10px;
    font-size: 14px;
    margin-bottom: 0;
}

.skills-container .btn {
    font-weight: bold;
    transition: 0.3s ease-in-out;
}

/* 🔹 Matching existing profile styling */
.skills-container {
    font-family: inherit;
}

.skills-container h4 {
    color: #333;
    font-weight: bold;
    margin-bottom: 20px;
}

/* 🔹 Success/Error message styling */
.skill-message {
    padding: 10px;
    border-radius: 5px;
    margin: 10px 0;
    text-align: center;
    font-weight: bold;
}

.skill-success {
    background-color: #d1e7dd;
    color: #0f5132;
    border: 1px solid #badbcc;
}

.skill-error {
    background-color: #f8d7da;
    color: #721c24;
    border: 1px solid #f5c6cb;
}


 /* 🔹 Education Section Styling */
.education-list {
    margin-top: 15px;
}

.education-item {
    transition: all 0.3s ease;
    border-left: 4px solid #059669 !important;
}

.education-item:hover {
    background-color: #e9ecef !important;
    transform: translateX(5px);
}

.education-details h5 {
    color: #059669;
    font-weight: bold;
}

.education-details p {
    margin-bottom: 5px;
    color: #495057;
}

/* 🔹 Button Styling */
.btn-success {
    background-color: #059669;
    border-color: #059669;
    font-weight: bold;
}

.btn-success:hover {
    background-color: #047857;
    border-color: #047857;
}

.btn-danger {
    background-color: #dc3545;
    border-color: #dc3545;
}

.btn-danger:hover {
    background-color: #c82333;
    border-color: #bd2130;
}

    </style>
</head>
<body>
    <form id="Emp_profile" runat="server">

        <header>
            <ul class="nav nav-item nav-tabs " style="font-weight: bold; background-color: #FFFFFF;">
                <li>
                    <img src="../Images/JOB FiNDER logo.png" alt="Logo" class="auto-style1" style="width: 100px; height: 100px" />
                </li>
                <div style="display: flex; margin-left: auto; align-items: center; gap: 30px">

                    <li class="nav-item"><a class="nav-link" href="/job_seeker/jobseeker_main.aspx" style="color: #059669;">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="/company/jobs.aspx" style="color: #059669;">Jobs</a></li>
                    <li class="nav-item"><a class="nav-link" href="/job_seeker/applied_job.aspx" style="color: #059669;">Applied Jobs</a></li>
                    <li class="nav-item"><a class="nav-link" href="/common/Message.aspx" style="color: #059669;">Message</a></li>


                    <li class="profile-dropdown">
                        <img src="../Images/log_out-removebg-preview.png" alt="Profile" class="profile-icon" />
                        <ul class="dropdown-menu">
                            <li><a href="/job_seeker/Employee_profile.aspx">Profile</a></li>
                            <li><a href="/auth/logout.aspx">Logout</a></li>
                        </ul>
                    </li>
                </div>
            </ul>
        </header>


        <%--<div style="float: left; margin-left: 100px; margin-top: 100px">
            <img src="../Images/Static/white-boy.a0d2814a.png" alt="Login" style="width: 300px; height: 350px" />
        </div>--%>

        <div style="float: left; margin-left: 100px; margin-top: 100px">
            &nbsp;</div>

          <!-- 🔹 Profile Section -->
     <div class="container mt-5">
         <div class="row">
             <div class="col-md-6 mx-auto p-4" style="border: 1px solid black; border-radius: 10px; box-shadow: 5px 5px 15px grey;">
                 
                 <!-- Profile Picture -->
                 <div class="text-center">
                     <asp:Image ID="imgEmployeelogo" CssClass="profile-image" runat="server" ImageUrl="~/Images/profileicon.png" />
                     <asp:FileUpload ID="fujobseekerlogo" runat="server" CssClass="form-control" Visible="false" />
                     <asp:Button ID="btnUploadLogo" runat="server" Text="Upload Image" CssClass="btn-profile" OnClick="btnUploadLogo_Click" Visible="false"/>
                 </div>

                 <hr />

               <table class="table">
                        <tr><td><b>First Name:</b></td><td>
                            <asp:Label ID="lblFirstName" runat="server"></asp:Label>
                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" Visible="false" OnTextChanged="txtFirstName_TextChanged"></asp:TextBox>
                        </td></tr>

                        <tr><td><b>Last Name:</b></td><td>
                            <asp:Label ID="lblLastName" runat="server"></asp:Label>
                            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                        </td></tr>

                        <tr><td><b>Username:</b></td><td>
                            <asp:Label ID="lblDetailUsername" runat="server"></asp:Label>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                        </td></tr>

                        <tr><td><b>Email:</b></td><td>
                            <asp:Label ID="lblDetailemail" runat="server"></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                        </td></tr>

                        <tr><td><b>Phone:</b></td><td>
                            <asp:Label ID="lblDetailphone" runat="server"></asp:Label>
                            <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                        </td></tr>

                        <tr><td><b>Gender:</b></td><td>
                            <asp:Label ID="lblDetailgender" runat="server"></asp:Label>
                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control" Visible="false">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </td></tr>

                        <tr><td><b>DOB:</b></td><td>
                            <asp:Label ID="lblDetaildbo" runat="server"></asp:Label>
                            <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" TextMode="Date" Visible="false"></asp:TextBox>
                        </td></tr>

                        <tr><td><b>Address:</b></td><td>
                            <asp:Label ID="lblAddress" runat="server"></asp:Label>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                        </td></tr>

                        <tr><td><b>State:</b></td><td>
                            <asp:Label ID="lblState" runat="server"></asp:Label>
                            <asp:TextBox ID="txtState" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                        </td></tr>

                        <tr><td><b>City:</b></td><td>
                            <asp:Label ID="lblDetailcity" runat="server"></asp:Label>
                            <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                        </td></tr>

                        <tr><td><b>Experience:</b></td><td>
                            <asp:Label ID="lblDetailexperience" runat="server"></asp:Label>
                            <asp:TextBox ID="txtExperience" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                        </td></tr>

                        <tr><td><b>Resume:</b></td><td>
                            <asp:Button ID="btnDownloadResume" runat="server" Text="Download Resume" CssClass="btn-profile" OnClick="btnDownloadResume_Click"   />
 
                 <%--           <asp:FileUpload ID="fuResume" runat="server" CssClass="form-control"/>
                            <asp:Button ID="btnUploadResume" runat="server" Text="Upload Resume" CssClass="btn-profile" OnClick="btnUploadResume_Click"  />--%>

                            <asp:FileUpload ID="fuResume" runat="server" CssClass="form-control" Visible="false" />
                            <asp:Button ID="btnUploadResume" runat="server" Text="Upload Resume" CssClass="btn-profile" OnClick="btnUploadResume_Click" Visible="false" />
 
                        </td></tr>
                    </table>

                 <div class="text-center">
                     <asp:Button ID="btnEdit" runat="server" Text="Edit Profile" CssClass="btn-profile" OnClick="btnEdit_Click" Visible="false"  />
                     <asp:Button ID="btnSave" runat="server" Text="Save Changes" CssClass="btn-profile" Visible="false" OnClick="btnSave_Click"   />
                <asp:Button ID="btnForgotPassword" runat="server" Text="Forgot Password" Visible="false"  style="background-color: #059669; color: white; padding: 5px 10px; font-size: 12px; border-radius: 3px; cursor: pointer; width: auto; height: auto; margin-right: 320px; margin-top: 20px; " OnClick="btnForgotPassword_Click"/>
                     </div>
             </div>
         </div>
     </div>
        

    <!-- 🔹 Skills Section -->
 
  <div class="container mt-5">
    <div class="row">
        <div class="col-md-6 mx-auto p-4" style="border: 1px solid black; border-radius: 10px; box-shadow: 5px 5px 15px grey;">
            <h4 class="text-center mb-4">Your Skills</h4>
            
            <!-- Add Skill Section -->
            <div class="add-skill-section mb-4">
                <div class="row">
                    <div class="col-md-8">
                        <asp:DropDownList ID="ddlSkills" runat="server" CssClass="form-control" DataTextField="SkillName" DataValueField="SkillID">
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <asp:Button ID="btnAddSkill" runat="server" Text="Add Skill" CssClass="btn btn-success w-100" OnClick="btnAddSkill_Click" />
                    </div>
                </div>
            </div>

            <!-- Skills List -->
            <div class="skills-list">
                <asp:Repeater ID="rptSkills" runat="server" OnItemCommand="rptSkills_ItemCommand">
                    <ItemTemplate>
                        <div class="skill-item" style="background-color: #e9ecef; padding: 8px 12px; border-radius: 20px; margin: 5px; display: inline-block;">
                            <span><%# Eval("SkillName") %></span>
                            <asp:Button ID="btnRemove" runat="server" Text="×" 
                                      CssClass="btn btn-sm btn-danger" 
                                      CommandName="RemoveSkill" 
                                      CommandArgument='<%# Eval("SkillID") %>' 
                                     />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                
                <asp:Label ID="lblNoSkills" runat="server" Text="No skills added yet." Visible="false" CssClass="text-muted"></asp:Label>
            </div>
        </div>
    </div>
</div>



<%-- education section--%>

<!-- 🔹 Education Details Section -->
<div class="container mt-5">
    <div class="row">
        <div class="col-md-8 mx-auto p-4" style="border: 1px solid black; border-radius: 10px; box-shadow: 5px 5px 15px grey;">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <h4 class="mb-0">Education Details</h4>
                <asp:Button ID="btnAddEducation" runat="server" Text="Add Education" 
                          CssClass="btn btn-success" OnClick="btnAddEducation_Click" />
            </div>

            <!-- Education List -->
            <div class="education-list">
                <asp:Repeater ID="rptEducation" runat="server" OnItemCommand="rptEducation_ItemCommand">
                    <ItemTemplate>
                        <div class="education-item mb-3 p-3" style="border: 1px solid #ddd; border-radius: 8px; background-color: #f8f9fa;">
                            <div class="d-flex justify-content-between align-items-start">
                                <div class="education-details">
                                    <h5 class="mb-1"><%# Eval("Degree") %> in <%# Eval("Major") %></h5>
                                    <p class="mb-1"><strong>University:</strong> <%# Eval("University") %></p>
                                    <p class="mb-1"><strong>Graduation Year:</strong> <%# Eval("GraduationYear") %></p>
                                    <p class="mb-0"><strong>GPA:</strong> <%# Eval("GPA") %></p>
                                </div>
                                <asp:Button ID="btnRemoveEducation" runat="server" Text="Remove" 
                                          CssClass="btn btn-danger btn-sm" 
                                          CommandName="RemoveEducation" 
                                          CommandArgument='<%# Eval("EducationID") %>' 
                                         />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                
                <asp:Label ID="lblNoEducation" runat="server" Text="No education details added yet." 
                          Visible="false" CssClass="text-muted text-center d-block"></asp:Label>
            </div>
        </div>
    </div>
</div>




     
<%--        footer--%>
        <div class="footer">
    <div class="row container-fluid">
        <div class="col-md-4">
            <h5>Quick Links</h5>
            <ul class="nav flex-column">
            <li class="nav-item" ><a href="/common/About_us.aspx" >About Us</a></li>
      <li class="nav-item"><a href="/common/Contact_us.aspx" >Contact Us</a></li>
      <li class="nav-item"><a href="#" >Our Services</a></li>
      <li class="nav-item"><a href="/common/Privacy_policy.aspx" >Privacy Policy</a></li>
      <li class="nav-item"><a href="#" >Terms & Conditions</a></li>
            </ul>
        </div>

        <div class="col-md-4">
            <h5>Contact</h5>
            <p><i class="bi bi-geo-alt-fill"></i> 123 Street, New York, USA</p>
            <p><i class="bi bi-telephone-fill"></i> +012 345 67890</p>
            <p><i class="bi bi-envelope-fill"></i> info@example.com</p>
        </div>

        <div class="col-md-4">
            <h5>Newsletter</h5>
            <input type="text" placeholder="Name" />
            <input type="email" placeholder="Email address" />
            <input type="text" placeholder="Message" />
            <input type="button" value="Send" class="btn-profile" />
        </div>
    </div>

    <div class="bottom-bar">
        <p>© Your Site Name, All Rights Reserved. Designed by <a href="#">HTML Codex</a></p>
        <a href="#">Home</a> | 
        <a href="#">Cookies</a> | 
        <a href="#">Help</a> | 
        <a href="#">FAQs</a>
    </div>
</div>

    </form>


</body>
</html>
