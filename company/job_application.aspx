<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="job_application.aspx.cs" Inherits="job_portal.company.job_application" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="Images/JOB FiNDER logo.png" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Job Application</title>

    <style>

        
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



       body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}

.container {
    display: flex;
    max-width: 1200px;
    margin: 40px auto;
    padding: 20px;
    gap: 30px;
}

.job-details {
    flex: 3;
    background: white;
    padding: 20px;
    border-radius: 8px;
}

.icons {
    display: flex;
    align-items: center;
    gap: 10px;
    font-size: 14px;
    color: #555;
}

.job-meta p {
    font-size: 14px;
    color: #333;
    display: flex;
    align-items: center;
}

.btn-applied {
    background-color: #28a745;
    color: white;
    padding: 10px 15px;
    border-radius: 4px;
    border: none;
    cursor: default;
}

.company-card {
    flex: 1;
    background: white;
    padding: 20px;
    border-radius: 8px;
    text-align: center;
}

.company-logo {
    width: 80px;
    height: 80px;
    border-radius: 50%;
}

.btn-message {
    background-color: #007BFF;
    color: white;
    padding: 8px 15px;
    border-radius: 4px;
    border: none;
    cursor: pointer;
}

.btn-message:hover {
    background-color: #0056b3;
}


.apply-button {
    background-color: #059669; /* Blue theme */
    color: white; 
    border: none;
    padding: 8px 15px;
    font-size: 14px;
    font-weight: bold;
    border-radius: 5px;
    cursor: pointer;
    transition: all 0.3s ease-in-out;
}

.apply-button:hover {
    background-color: #0d3d2e; /* Darker blue on hover */
}

.apply-button:disabled {
    background-color: #cccccc; /* Gray for disabled button */
    cursor: not-allowed;
}

.apply-button:focus {
    outline: none;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}


.update-button {
    background-color: #059669; /* Blue theme */
    color: white; 
    border: none;
    padding: 8px 15px;
    font-size: 14px;
    font-weight: bold;
    border-radius: 5px;
    cursor: pointer;
    transition: all 0.3s ease-in-out;
}

.update-button:hover {
    background-color: #0d3d2e; /* Darker blue on hover */
}

.update-button:disabled {
    background-color: #cccccc; /* Gray for disabled button */
    cursor: not-allowed;
}

.update-button:focus {
    outline: none;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}

.edit-button {
    background-color: #059669; /* Blue theme */
    color: white; 
    border: none;
    padding: 8px 15px;
    font-size: 14px;
    font-weight: bold;
    border-radius: 5px;
    cursor: pointer;
    transition: all 0.3s ease-in-out;
}

.edit-button:hover {
    background-color: #0d3d2e; /* Darker blue on hover */
}

.edit-button:disabled {
    background-color: #cccccc; /* Gray for disabled button */
    cursor: not-allowed;
}

.edit-button:focus {
    outline: none;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}


    </style>
</head>
<body>
    <form id="job_application" runat="server">
     
            <header>
                 <ul class="nav nav-item nav-tabs " style=" font-weight:bold;background-color: #FFFFFF;">
            <li>
               <img src="../Images/JOB FiNDER logo.png" alt="Logo" class="auto-style1" style="width: 100px; height: 100px" />
            </li>
             <div style="display: flex; margin-left: auto; align-items: center; gap: 30px">
                   
              <li class="nav-item"><a class="nav-link" href="/Job seeker dashboard/jobseeker_main.aspx" style="color: #059669;">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="/Job seeker dashboard/jobs.aspx" style="color: #059669;">Jobs</a></li>
            <li class="nav-item"><a class="nav-link" href="/Job seeker dashboard/applied_job.aspx" style="color: #059669;">Applied Jobs</a></li>
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

        <!--main code of Deytlais -->

           <div class="container">
            <div class="job-details">
                
                <h4>JobTitle:</h4>
<p>
    <asp:Label ID="lblJobTitle" runat="server" />
    <asp:TextBox ID="txtJobTitle" runat="server" CssClass="input-box" Visible="false" />
</p>

<div class="job-meta">
    <p><strong>Description:</strong> 
        <asp:Label ID="lblDescription" runat="server" />
        <asp:TextBox ID="txtDescription" runat="server" CssClass="input-box" TextMode="MultiLine" Visible="false" />
    </p>
    


<p><strong>Category:</strong> 
    <asp:Label ID="lblCategory" runat="server" />
    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="input-box" Visible="false"></asp:DropDownList>
</p>
    
    <p><strong>Skills Required:</strong> 
        <asp:Label ID="lblSkillsRequired" runat="server" />
        <asp:TextBox ID="txtSkillsRequired" runat="server" CssClass="input-box" Visible="false" />
    </p>
    
    <p><strong>Location:</strong> 
        <asp:Label ID="lblLocation" runat="server" />
        <asp:TextBox ID="txtLocation" runat="server" CssClass="input-box" Visible="false" />
    </p>
    
    <p><strong>Salary:</strong> 
        <asp:Label ID="lblSalary" runat="server" />
        <asp:TextBox ID="txtSalary" runat="server" CssClass="input-box" Visible="false" />
    </p>
    
    <p><strong>Job Type:</strong> 
        <asp:Label ID="lblJobType" runat="server" />
    <asp:DropDownList ID="ddlJobType" runat="server" CssClass="input-box" Visible="false">
        <asp:ListItem Text="Full-Time" Value="Full Time"></asp:ListItem>
        <asp:ListItem Text="Part-Time" Value="Part Time"></asp:ListItem>
        <asp:ListItem Text="Internship" Value="Internship"></asp:ListItem>
        <asp:ListItem Text="Freelance" Value="Freelance"></asp:ListItem>
    <asp:ListItem Text="Contract" Value="Contract"></asp:ListItem>
    </asp:DropDownList>
</p>
    </p>
    
    <p><strong>Posted On:</strong> 
        <asp:Label ID="lblPostDate" runat="server" />
        <asp:TextBox ID="txtPostDate" runat="server" CssClass="input-box" TextMode="Date" Visible="false" />
    </p>
    
    <p><strong>Application Deadline:</strong> 
        <asp:Label ID="lblApplicationDeadline" runat="server" />
        <asp:TextBox ID="txtApplicationDeadline" runat="server" CssClass="input-box" TextMode="Date" Visible="false" />
    </p>
    
    <p><strong>Status:</strong> 
        <asp:Label ID="lblStatus" runat="server" />
        <asp:TextBox ID="txtStatus" runat="server" CssClass="input-box" Visible="false" />
    </p>
</div>

                <!-- Apply Button -->
                <asp:Button ID="btnApply" runat="server" Text="Apply for Job" CssClass="apply-button" OnClick="btnApply_Click" Visible="false" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update for Job" CssClass="update-button"  Visible="false" OnClick="btnUpdate_Click" />
                <asp:Button ID="btnEdit" runat="server" Text="Edit Job" CssClass="edit-button"  Visible="false" OnClick="btnEdit_Click" />

                <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
            </div>

            <div class="company-card">
                <asp:Image ID="imgCompanyLogo" CssClass="company-logo" runat="server" ImageUrl="~/Images/profileicon.png" />
                <h2><asp:Label ID="lblCompanyName" runat="server" /></h2>
                <p><strong>Website:</strong> <asp:Label ID="lblWebsite" runat="server" /></p>
                <p><strong>Official Email:</strong> <asp:Label ID="lblOfficialEmail" runat="server" /></p>
                <p><strong>Phone Number:</strong> <asp:Label ID="lblPhoneNumber" runat="server" /></p>
                <p><strong>About Company:</strong> <asp:Label ID="lblCompanyDescription" runat="server" /></p>
            </div>
        </div>








        <!-- Footer -->
        <div class="row container-fluid" style="background-color: #059669; color: white; text-align: center; height: 100%; width: 100%; margin: 0px; padding: 0px;">
            <div class="col" style="font-size: 20px; padding-top: 15px; padding-bottom: 15px; padding-left: 15px; width: 100%;">

                <p style="font-weight: bolder; font-size: 25px;">LEARN ABOUT US </p>
                <div>
                    <ul class="nav flex-column">
                        <li class="nav-item"><a class="nav-link" href="About_us.aspx" style="color: white;">About Us </a></li>
                        <li class="nav-item"><a class="nav-link" href="Contact_us.aspx" style="color: white;">Contact Us </a></li>
                        <li class="nav-item"><a class="nav-link" href="Privacy_policy.aspx" style="color: white;">Privacy Policy </a></li>
                        <li class="nav-item"><a class="nav-link" href="Terms_condition.aspx" style="color: white;">Terms & Condition </a></li>
                    </ul>
                </div>

            </div>


            <div class="col" style="font-size: 20px; text-align: left; padding-top: 15px; padding-bottom: 15px; padding-left: 15px;">
                <p style="font-weight: bolder; font-size: 25px;">CONTACT</p>
                <div><i class="bi bi-telephone-fill" style="margin-right: 10px;"></i>Phone : +8880 44338</div>
                <div><i class="bi bi-envelope-fill" style="margin-right: 10px;"></i>Email : info@gmail.com</div>

            </div>

            <div class="col" style="text-align: left; padding-top: 15px; padding-bottom: 15px; padding-left: 15px;">
                <p style="font-size: 20px; font-weight: bolder; font-size: 25px;">GET IN TOUCH</p>
                <div>
                    <input type="text" placeholder="Name" />
                    <br />
                    <input type="email" placeholder="Email address" />
                    <div>
                        <input type="text" placeholder="Message" />
                        <input type="button" value="Send" style="background-color: white; color: #059669; border: 0px; height: 30px;" />
                    </div>
                </div>
            </div>

            <hr />

            <p class="">FOLLOW US ON</p>

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
