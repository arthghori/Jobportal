<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Company_profile.aspx.cs" Inherits="job_portal.company.Company_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="../Images/JOB FiNDER logo.png" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>company profile</title>
         
    
    <style type="text/css">
     html, body {
    height: 100%;
    margin: 0;
    padding: 0;
}

/* 🔹 Main Content Wrapper */
.wrapper {
    min-height: 100vh; /* Minimum height to push footer down */
    display: flex;
    flex-direction: column;
}

/* 🔹 Container Styling */
.container {
    width: 50%;
    margin: 20px auto;
    background: white;
    padding: 20px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    flex: 1; /* Pushes footer down */
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
}

.btn-profile:hover {
    background-color: #047857;
    transform: scale(1.05);
}

/* 🔹 Navigation Bar */
.nav-tabs {
    font-weight: bold;
    background-color: #FFFFFF;
    padding: 10px;
    display: flex;
    align-items: center;
    border-bottom: 2px solid #ccc;
}

.nav-right {
    margin-left: auto;
    display: flex;
    gap: 30px;
}

.nav-link {
    color: #059669;
    font-size: 16px;
    text-decoration: none;
}

.nav-link:hover {
    color: #047857;
}

/* 🔹 Dropdown Menu */
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

.profile-dropdown:hover .dropdown-menu {
    display: block;
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
  /* Show dropdown on hover */
    li:hover > ul {
        display: block !important;
    }

    /* Ensure dropdown stays inside its parent */
    ul {
        padding: 0;
        margin: 0;
    }

    li {
        list-style: none;
        position: relative;
    }
.dropdown-menu li a:hover {
    background-color: #059669;
    color: white;
}
        </style>
</head>
<body>
    <form id="company_profile" runat="server">
      
<header>
    <ul style="font-weight: bold; background-color: #FFFFFF; display: flex; align-items: center; padding: 10px; list-style: none; margin: 0;">
        <li>
            <img src="../Images/JOB FiNDER logo.png" alt="Logo" style="width: 100px; height: 100px;" />
        </li>

        <!-- RIGHT SIDE NAV ITEMS -->
        <div style="display: flex; align-items: center; margin-left: auto; gap: 30px;">
            <!-- Jobs Dropdown -->
            <li style="position: relative;">
                <a href="#" style="color: #059669; text-decoration: none; padding: 10px; display: block;">Jobs</a>
                <ul  style="position: absolute; top: 100%; left: 0; background-color: white; border: 1px solid #ddd; border-radius: 5px; padding: 10px; list-style: none; min-width: 150px; box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); display: none;">
                    <li><a href="/company_main.aspx" style="display: block; padding: 10px; text-decoration: none; color: #333;">Home</a></li>
                    <li><a href="job_post.aspx" style="display: block; padding: 10px; text-decoration: none; color: #333;">Add job</a></li>
                    <li><a href="/postedjob_list.aspx" style="display: block; padding: 10px; text-decoration: none; color: #333;">Posted jobs</a></li>
                </ul>
            </li>

            <!-- Messages -->
            <li>
                <a href="#" style="color: #059669; text-decoration: none; padding: 10px; display: block;">Messages</a>
            </li>

            <!-- Profile Dropdown -->
            <li style="position: relative;">
                <img src="../Images/log_out-removebg-preview.png" alt="Profile" style="width: 90px; height: 90px; border-radius: 50%; cursor: pointer;" />
                <ul style="position: absolute; top: 100%; right: 0; background-color: white; border: 1px solid #ddd; border-radius: 5px; padding: 10px; list-style: none; min-width: 150px; box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); display: none;">
                    <li><a href="Company_profile.aspx" style="display: block; padding: 10px; text-decoration: none; color: #333;">Profile</a></li>
                    <li><a href="logout.aspx" style="display: block; padding: 10px; text-decoration: none; color: #333;">Logout</a></li>
                </ul>
            </li>
        </div>
    </ul>
</header>

        <!-- 🔹 PROFILE SECTION -->
        <div class="container">
            <!-- Profile Picture -->
            <asp:Image ID="CompanyLogo" CssClass="profile-image" runat="server" ImageUrl="../Images/profileicon.png" />
            <asp:FileUpload ID="fuCompanyLogo" runat="server" CssClass="form-control" />
            <asp:Button ID="btnUploadLogo" runat="server" Text="Upload Image" CssClass="btn-profile" OnClick="btnUploadLogo_Click"   />

            <hr />

            <!-- Profile Information -->
            <table style="width:100%; text-align:left;">
                <tr><td><b>Company Name:</b></td></tr>
                <tr><td>
                    <asp:Label ID="lblCompanyName" runat="server"></asp:Label>
                    <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                </td></tr>

              <tr><td><b>Username:</b></td></tr>
                <tr><td>
                    <asp:Label ID="lblUsername" runat="server"></asp:Label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                </td></tr>

                <tr><td><b>Email:</b></td></tr>
                <tr><td>
                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                </td></tr>

                <tr><td><b>Contact:</b></td></tr>
                <tr><td>
                    <asp:Label ID="lblContactno" runat="server"></asp:Label>
                    <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                </td></tr>

                <tr><td><b>Website:</b></td></tr>
                <tr><td>
                    <asp:Label ID="lblWebsite" runat="server"></asp:Label>
                    <asp:TextBox ID="txtWebsite" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                </td></tr>

                <tr><td><b>Industry Type:</b></td></tr>
                <tr><td>
                    <asp:Label ID="lblIndustryType" runat="server"></asp:Label>
                    <asp:TextBox ID="txtIndustryType" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                </td></tr>

                <tr><td><b>Address:</b></td></tr>
                <tr><td>
                    <asp:Label ID="lblAddress" runat="server"></asp:Label>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                </td></tr>

                <tr><td><b>Location:</b></td></tr>
                <tr><td>
                    <asp:Label ID="lblLocation" runat="server"></asp:Label>
                    <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                </td></tr>

                <tr><td><b>Description:</b></td></tr>
                <tr><td>
                    <asp:Label ID="lblDescription" runat="server"></asp:Label>
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                </td></tr>
            </table>

            <br />

            <!-- Edit & Save Buttons -->
            <asp:Button ID="btnEdit" runat="server" Text="Edit Profile" CssClass="btn-profile" OnClick="btnEdit_Click"  />
            <asp:Button ID="btnSave" runat="server" Text="Save Changes" CssClass="btn-profile" Visible="false" OnClick="btnSave_Click" />
            <asp:Button ID="btnForgotPassword" runat="server" Text="Forgot Password"   style="background-color: #059669; color: white; padding: 5px 10px; font-size: 12px; border-radius: 3px; cursor: pointer; width: auto; height: auto; " OnClick="btnForgotPassword_Click"    />         

        </div>

         <!-- 🔹 FOOTER -->
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