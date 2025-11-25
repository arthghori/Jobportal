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
            /* GridView Container */
    .table {
        width: 100%;
        border-collapse: separate;
        border-spacing: 0;
        margin: 20px 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: white;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
        border: 1px solid #e2e8f0;
    }

    /* Header Styling */
    .table th {
        background: linear-gradient(135deg, #059669, #047857);
        color: white;
        font-weight: 600;
        font-size: 14px;
        padding: 18px 12px;
        border: none;
        text-align: left;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        position: relative;
        transition: all 0.3s ease;
    }

    .table th:hover {
        background: linear-gradient(135deg, #047857, #059669);
    }

    /* Data Rows Styling */
    .table td {
        padding: 16px 12px;
        border-bottom: 1px solid #f1f5f9;
        vertical-align: middle;
        transition: all 0.3s ease;
        font-size: 14px;
        color: #374151;
    }

    /* Striped Rows */
    .table-striped tbody tr:nth-of-type(odd) {
        background-color: #f8fafc;
    }

    .table-striped tbody tr:nth-of-type(even) {
        background-color: #ffffff;
    }

    /* Hover Effect */
    .table-hover tbody tr:hover {
        background: linear-gradient(90deg, #f8fafc, #ecfdf5);
        transform: translateY(-1px);
        box-shadow: 0 4px 12px rgba(5, 150, 105, 0.1);
    }

    /* Company Logo Styling */
    .company-logo {
        width: 60px;
        height: 60px;
        border-radius: 8px;
        object-fit: cover;
        border: 2px solid #e2e8f0;
        transition: all 0.3s ease;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    }

    .company-logo:hover {
        transform: scale(1.1);
        border-color: #059669;
        box-shadow: 0 4px 15px rgba(5, 150, 105, 0.3);
    }

    /* Action Buttons */
    .btn {
        border: none;
        padding: 8px 16px;
        border-radius: 6px;
        font-size: 12px;
        font-weight: 600;
        cursor: pointer;
        transition: all 0.3s ease;
        margin: 2px;
        display: inline-block;
        text-transform: uppercase;
        letter-spacing: 0.5px;
    }

    .btn-sm {
        padding: 6px 12px;
        font-size: 11px;
    }

    .btn-success {
        background: linear-gradient(135deg, #059669, #10b981);
        color: white;
    }

    .btn-success:hover {
        background: linear-gradient(135deg, #047857, #059669);
        transform: translateY(-2px);
        box-shadow: 0 4px 12px rgba(5, 150, 105, 0.3);
    }

    .btn-danger {
        background: linear-gradient(135deg, #dc2626, #ef4444);
        color: white;
    }

    .btn-danger:hover {
        background: linear-gradient(135deg, #b91c1c, #dc2626);
        transform: translateY(-2px);
        box-shadow: 0 4px 12px rgba(220, 38, 38, 0.3);
    }

    /* Status Styling */
    .table td:contains("Active"),
    .table td:contains("Approved") {
        color: #059669;
        font-weight: 600;
        background: #ecfdf5;
        padding: 4px 8px;
        border-radius: 20px;
        display: inline-block;
    }

    .table td:contains("Inactive"),
    .table td:contains("Pending") {
        color: #d97706;
        font-weight: 600;
        background: #fef3c7;
        padding: 4px 8px;
        border-radius: 20px;
        display: inline-block;
    }

    .table td:contains("Rejected"),
    .table td:contains("Disapproved") {
        color: #dc2626;
        font-weight: 600;
        background: #fee2e2;
        padding: 4px 8px;
        border-radius: 20px;
        display: inline-block;
    }

    /* Column Specific Styling */
    .table td:first-child { /* Company Name */
        font-weight: 600;
        color: #059669;
    }

    .table td:nth-child(2) { /* Username */
        color: #6b7280;
        font-family: 'Courier New', monospace;
    }

    .table td:nth-child(3) { /* Email */
        color: #2563eb;
        font-weight: 500;
    }

    .table td:nth-child(4) { /* Contact Phone */
        color: #374151;
        font-weight: 500;
    }

    .table td:nth-child(5) { /* Website */
        color: #7c3aed;
        text-decoration: underline;
    }

    .table td:nth-child(9) { /* Description */
        max-width: 200px;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }

    /* Responsive Design */
    @media (max-width: 1200px) {
        .table {
            font-size: 13px;
        }
        
        .table th,
        .table td {
            padding: 12px 8px;
        }
        
        .company-logo {
            width: 50px;
            height: 50px;
        }
        
        .btn {
            padding: 6px 10px;
            font-size: 11px;
        }
    }

    @media (max-width: 768px) {
        .table-container {
            overflow-x: auto;
        }
        
        .table {
            min-width: 1000px;
            font-size: 12px;
        }
        
        .table th,
        .table td {
            padding: 10px 6px;
        }
        
        .company-logo {
            width: 40px;
            height: 40px;
        }
        
        .btn {
            display: block;
            width: 100%;
            margin: 2px 0;
        }
    }

    /* Animation */
    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .table tbody tr {
        animation: fadeInUp 0.5s ease forwards;
        opacity: 0;
    }

    /* Stagger animation for rows */
    .table tbody tr:nth-child(1) { animation-delay: 0.1s; }
    .table tbody tr:nth-child(2) { animation-delay: 0.2s; }
    .table tbody tr:nth-child(3) { animation-delay: 0.3s; }
    .table tbody tr:nth-child(4) { animation-delay: 0.4s; }
    .table tbody tr:nth-child(5) { animation-delay: 0.5s; }

    /* Focus states for accessibility */
    .btn:focus {
        outline: 2px solid #059669;
        outline-offset: 2px;
    }

    /* Empty state styling */
    .table td[colspan] {
        text-align: center;
        padding: 60px 20px;
        background: linear-gradient(135deg, #f8fafc, #f1f5f9);
        color: #6b7280;
        font-size: 16px;
        font-weight: 500;
    }

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
                <li class="nav-item"><a class="nav-link" href="/company/Company.aspx" style="color:#059669;">Company</a></li>
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
