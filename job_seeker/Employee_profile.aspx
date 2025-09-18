<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_profile.aspx.cs" Inherits="job_portal.job_seeker.Employee_profile" %>
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
    width: 60%;
    margin: 30px auto;
    background: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

/* 🔹 Skill List Styling */
.skill-list {
    list-style: none;
    padding: 0;
    margin-top: 10px;
    text-align: center;
}

.skill-item {
    display: inline-block;
    background: #059669;
    color: white;
    font-size: 14px;
    padding: 8px 12px;
    border-radius: 20px;
    margin: 5px;
    position: relative;
}

/* 🔹 Delete Button (X) */
.btn-delete {
    background: red;
    color: white;
    border: none;
    padding: 4px 8px;
    font-size: 12px;
    border-radius: 50%;
    cursor: pointer;
    margin-left: 8px;
    transition: 0.3s ease-in-out;
}

.btn-delete:hover {
    background: darkred;
}

/* 🔹 Add Skill Button */
.btn-profile {
    background: #059669;
    color: white;
    font-weight: bold;
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 10px;
    transition: 0.3s ease-in-out;
}

.btn-profile:hover {
    background: #037a55;
}

/* 🔹 Responsive Design */
@media (max-width: 768px) {
    .skills-container {
        width: 90%;
        padding: 15px;
    }
    
    .skill-item {
        font-size: 12px;
        padding: 6px 10px;
    }

    .btn-delete {
        font-size: 10px;
        padding: 3px 6px;
    }

    .btn-profile {
        font-size: 12px;
        padding: 8px 12px;
    }
}



/* eduction
*/

/* 🔹 Education Section Styling */
.education-container {
    width: 60%;
    margin: 30px auto;
    background: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

/* 🔹 GridView Table Styling */
.edu-table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
    background: white;
}

.edu-table th, .edu-table td {
    border: 1px solid #ddd;
    padding: 12px;
    text-align: center;
    font-size: 14px;
}

.edu-table th {
    background: #059669;
    color: white;
    font-weight: bold;
    text-transform: uppercase;
}

/* 🔹 Delete Button Styling */
.delete-btn {
    background: red;
    color: white;
    padding: 6px 12px;
    border: none;
    cursor: pointer;
    border-radius: 5px;
    font-size: 12px;
    transition: 0.3s ease-in-out;
}

.delete-btn:hover {
    background: darkred;
}

/* 🔹 Manage Education Button */
.manage-btn {
    background: #059669;
    color: white;
    font-weight: bold;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 20px;
    transition: 0.3s ease-in-out;
}

.manage-btn:hover {
    background: #037a55;
}

/* 🔹 Responsive Design */
@media (max-width: 768px) {
    .education-container {
        width: 90%;
        padding: 15px;
    }
    
    .edu-table th, .edu-table td {
        font-size: 12px;
        padding: 8px;
    }

    .delete-btn, .manage-btn {
        font-size: 12px;
        padding: 8px 12px;
    }
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

                    <li class="nav-item"><a class="nav-link" href="/Job seeker dashboard/jobseeker_main.aspx" style="color: #059669;">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="/Employee/jobs.aspx" style="color: #059669;">Jobs</a></li>
                    <li class="nav-item"><a class="nav-link" href="/Employee/applied_job.aspx" style="color: #059669;">Applied Jobs</a></li>
                    <li class="nav-item"><a class="nav-link" href="../Message.aspx" style="color: #059669;">Message</a></li>


                    <li class="profile-dropdown">
                        <img src="../Images/log_out-removebg-preview.png" alt="Profile" class="profile-icon" />
                        <ul class="dropdown-menu">
                            <li><a href="/Employee/Employee_profile.aspx">Profile</a></li>
                            <li><a href="/logout.aspx">Logout</a></li>
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
        


<div class="skills-container">
    <div class="skills-section">
        <h4 class="text-center">Your Skills</h4>

        <!-- Skill Selection Dropdown -->
        <div class="text-center">
            <asp:DropDownList ID="ddlSkills" runat="server" CssClass="form-control" Visible="false" ></asp:DropDownList>
            <asp:Button ID="btnAddSkill" runat="server" Text="Add Skill" CssClass="btn-profile mt-3" OnClick="btnAddSkill_Click" Visible="false" />
        </div>

        <hr />

        <!-- Display Existing Skills -->
        <h5 class="text-center">Added Skills:</h5>
        <ul class="skill-list">
            <asp:Repeater ID="rptSkills" runat="server" OnItemCommand="rptSkills_ItemCommand" OnItemDataBound="rptSkills_ItemDataBound">
                <ItemTemplate>
                    <li class="skill-item">
                        <%# Eval("SkillName") %>
                        <asp:Button ID="btnRemoveSkill"  runat="server" CssClass="btn-delete" Text="X" CommandArgument='<%# Eval("seekerskillid") %>' OnClick="btnRemoveSkill_Click" />
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
</div>



<div class="education-container">
    <h2>Your Education Details</h2>

    <asp:GridView ID="gvEducation" runat="server" AutoGenerateColumns="False" CssClass="edu-table" 
        DataKeyNames="educationid" OnRowDeleting="gvEducation_RowDeleting" OnRowDataBound="gvEducation_RowDataBound">
        <Columns>
            <asp:BoundField DataField="university" HeaderText="University" />
            <asp:BoundField DataField="degree" HeaderText="Degree" />
            <asp:BoundField DataField="major" HeaderText="Major" />
            <asp:BoundField DataField="graduationyear" HeaderText="Graduation Year" />
            <asp:BoundField DataField="gpa" HeaderText="GPA" />
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:LinkButton runat="server" CssClass="delete-btn"
                        CommandName="Delete" CommandArgument='<%# Eval("educationid") %>' ID="lnkRemove">
                        Remove
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <!-- OnClientClick="return confirm('Are you sure you want to delete this education record?');-->
    <!-- Redirect Button to Manage Education Page -->
    <br />
    <asp:Button ID="btnManageEducation" runat="server" CssClass="manage-btn" Text="Manage Education" OnClick="btnManageEducation_Click" Visible="false"/>
</div>





     
<%--        footer--%>
        <div class="footer">
    <div class="row container-fluid">
        <div class="col-md-4">
            <h5>Quick Links</h5>
            <ul class="nav flex-column">
                <li class="nav-item"><a href="About_us.aspx">About Us</a></li>
                <li class="nav-item"><a href="Contact_us.aspx">Contact Us</a></li>
                <li class="nav-item"><a href="#">Our Services</a></li>
                <li class="nav-item"><a href="Privacy_policy.aspx">Privacy Policy</a></li>
                <li class="nav-item"><a href="#">Terms & Conditions</a></li>
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

