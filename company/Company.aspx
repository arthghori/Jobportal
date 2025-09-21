<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="job_portal.company.Company" %>

<!DOCTYPE html>
<html>
<head runat="server">
      <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="icon" type="image/x-icon" href="../Images/Static/white_logo.png" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
   <title>Companies List</title>
    <style>
        .dropdown-menu li { padding: 10px; text-align: left; }
        .profile-dropdown { position: relative; cursor: pointer; }
        .profile-icon { border-radius: 50%; width: 90px; height: 90px; }
        .dropdown-menu { position: absolute; top: 70px; right: 0; background-color: white; border: 1px solid #ddd; border-radius: 5px; box-shadow: 0px 4px 8px rgba(0,0,0,0.1); list-style: none; padding: 10px 0; min-width: 150px; display: none; z-index: 1000; }
        .dropdown-menu li a { text-decoration: none; color: #333; display: block; padding: 10px 15px; }
        .dropdown-menu li a:hover { background-color: #059669; color: white; }
        .profile-dropdown:hover .dropdown-menu { display: block; }
        body { font-family: Arial, sans-serif; }
        table { width: 100%; border-collapse: collapse; }
        th, td { padding: 10px; border: 1px solid #ddd; text-align: left; }
        th { background-color: #059669; color: white; }
        .company-logo { width: 70px; height: 70px; object-fit: cover; border-radius: 5px; }
        .search-container { margin-bottom: 20px; }
        .search-box { padding: 8px; width: 400px; height: 30px; margin-left: 20px; }
        .search-btn { padding: 8px 15px; background-color: #059669; color: white; border: none; cursor: pointer; }
        .search-btn:hover { background-color: #0056b3; }
        h2 { margin-top: 30px; margin-left: 20px; }  
        .bottom-bar { margin-top: 25px; padding-top: 10px; border-top: 1px solid rgba(255, 255, 255, 0.2); text-align:center; }
        .bottom-bar a { text-decoration: none; color: white; }
        .footer a { text-decoration: none; color: white; }
    </style>
</head>
<body>
    <form id="Employer" runat="server">
        <!-- Navigation -->
        <ul class="nav nav-item nav-tabs" style="font-weight:bold;background-color: #FFFFFF;">
            <li><img src="../Images/JOB FiNDER logo.png" alt="Logo" style="width:100px;height:100px" /></li>
            <div style="display:flex; margin-left:auto; align-items:center; gap:30px">
                <li class="nav-item"><a class="nav-link" href="/admin/admin_mainpage.aspx" style="color:#059669;">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#" style="color:#059669;">Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="/company/Company.aspx" style="color:#059669;">Employers</a></li>
                <li class="nav-item"><a class="nav-link" href="/job_seeker/Job_seeker.aspx" style="color:#059669;">Job Seekers</a></li>
                <li class="profile-dropdown">
                    <img src="../Images/log_out-removebg-preview.png" alt="Profile" class="profile-icon" />
                    <ul class="dropdown-menu">
                        <li><a href="/admin/admin_profile.aspx">Profile</a></li>
                        <li><a href="/auth/logout.aspx">Logout</a></li>
                    </ul>
                </li>
            </div>
        </ul>

        <!-- Company Grid -->
        <div class="container">
            <h2>Companies List</h2>
            <div class="search-container">
                <asp:TextBox ID="txtSearch" runat="server" CssClass="search-box" Placeholder="Search Company..."></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" CssClass="search-btn" Text="Search" OnClick="btnSearch_Click" />
            </div>

            <asp:GridView ID="gvCompanies" runat="server" AutoGenerateColumns="False" OnRowDataBound="gvCompanies_RowDataBound" OnRowCommand="gvCompanies_RowCommand" CssClass="table table-bordered">
                <Columns>
                    <asp:BoundField DataField="companyname" HeaderText="Company Name" />
                    <asp:BoundField DataField="username" HeaderText="Username" />
                    <asp:BoundField DataField="email" HeaderText="Email" />
                    <asp:BoundField DataField="contactphone" HeaderText="Contact Phone" />
                    <asp:BoundField DataField="website" HeaderText="Website" />
                    <asp:BoundField DataField="indutrytype" HeaderText="Industry Type" />
                    <asp:BoundField DataField="address" HeaderText="Address" />
                    <asp:BoundField DataField="location" HeaderText="Location" />
                    <asp:BoundField DataField="description" HeaderText="Description" />
                    <asp:TemplateField HeaderText="Logo">
                        <ItemTemplate>
                            <asp:Image ID="imgCompanyLogo" runat="server" CssClass="company-logo" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="status" HeaderText="Status" />
                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:Button ID="btnApprove" runat="server" Text="Approve" CssClass="btn btn-success btn-sm" CommandName="Approve" CommandArgument='<%# Eval("companyid") %>' />
                            <asp:Button ID="btnDisapprove" runat="server" Text="Disapprove" CssClass="btn btn-danger btn-sm" CommandName="Disapprove" CommandArgument='<%# Eval("companyid") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>

    <!-- Footer -->
    <div class="footer">
        <div style="margin-top:300px;margin-bottom:0px; padding:15px; background-color:#059669;color:white; text-align:center;">
            <div style="display:flex">
                <div class="col-md-6">
                    <h5>Quick Links</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item"><a href="/common/About_us.aspx">About Us</a></li>
                        <li class="nav-item"><a href="/common/Contact_us.aspx">Contact Us</a></li>
                        <li class="nav-item"><a href="#">Our Services</a></li>
                        <li class="nav-item"><a href="/common/Privacy_policy.aspx">Privacy Policy</a></li>
                        <li class="nav-item"><a href="#">Terms & Conditions</a></li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <h5>Contact</h5>
                    <p><i class="bi bi-geo-alt-fill"></i> 123 Street, New York, USA</p>
                    <p><i class="bi bi-telephone-fill"></i> +012 345 67890</p>
                    <p><i class="bi bi-envelope-fill"></i> info@example.com</p>
                </div>
            </div>
            <div class="bottom-bar">
                <p>© Your Site Name, All Rights Reserved. Designed by <a href="#">HTML Codex</a></p>
                <a href="#">Home</a> | <a href="#">Cookies</a> | <a href="#">Help</a> | <a href="#">FAQs</a>
            </div>
        </div>
    </div>
</body>
</html>
