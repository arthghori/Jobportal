<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Skill1.aspx.cs" Inherits="job_portal.admin.Skill1" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Skill Management List</title>

    <!-- Bootstrap & Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8fafc;
        }

        /* Navbar */
        .nav-tabs {
            background-color: #ffffff;
            border-bottom: 2px solid #059669;
        }

        .nav-link {
            color: #059669 !important;
            font-weight: bold;
        }

        /* Main Container */
        .container {
            max-width: 700px;
            background-color: white;
            margin-top: 40px;
            padding: 25px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #059669;
            margin-bottom: 25px;
            font-weight: bold;
        }

        /* Input + Button */
        .input-container {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px;
            margin-bottom: 20px;
        }

        .input-container input {
            flex: 1;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .btn-add {
            background-color: #059669;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .btn-add:hover {
            background-color: #047857;
        }

        /* GridView Table */
        .table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            margin-top: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
        }

        .table th {
            background-color: #059669;
            color: white;
            text-align: center;
            padding: 12px;
        }

        .table td {
            text-align: center;
            padding: 12px;
            vertical-align: middle;
        }

        /* Delete Button */
        .delete-btn {
            background-color: red;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 6px 12px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .delete-btn:hover {
            background-color: darkred;
        }

        /* Footer */
        .footer {
            margin-top: 80px;
            background-color: #059669;
            color: white;
            text-align: center;
            padding: 30px 0;
        }

        .footer a {
            color: white;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <form id="Skillslist" runat="server">

        <!-- Navbar -->
        <ul class="nav nav-item nav-tabs align-items-center p-2">
            <li>
                <img src="../Images/JOB FiNDER logo.png" alt="Logo" style="width: 100px; height: 100px; margin-left: 20px;" />
            </li>
            <div style="display: flex; margin-left: auto; align-items: center; gap: 30px">
                <li class="nav-item"><a class="nav-link" href="/admin/admin_mainpage.aspx">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="/company/Company.aspx">Employers</a></li>
                <li class="nav-item"><a class="nav-link" href="/job_seeker/Job_seeker.aspx">Job Seekers</a></li>

                <li class="profile-dropdown">
                    <img src="../Images/log_out-removebg-preview.png" alt="Profile" class="rounded-circle" width="60" height="60" />
                    <ul class="dropdown-menu">
                        <li><a href="/admin/admin_profile.aspx">Profile</a></li>
                        <li><a href="/auth/logout.aspx">Logout</a></li>
                    </ul>
                </li>
            </div>
        </ul>

        <!-- Main Container -->
        <div class="container">
            <h2>Skill Management List</h2>

            <div class="input-container">
                <asp:TextBox ID="txtSkillName" runat="server" CssClass="form-control" Placeholder="Enter Skill Name"></asp:TextBox>
                <asp:Button ID="btnAddSkill" runat="server" CssClass="btn-add" Text="Add Skill" OnClick="btnAddSkill_Click" />
            </div>

            <asp:GridView ID="gvSkills" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered"
                DataKeyNames="SkillID" OnRowDeleting="gvSkills_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="skillname" HeaderText="Skill Name" />
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete"
                                CommandArgument='<%# Eval("SkillID") %>' CssClass="delete-btn" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>

    <!-- Footer -->
    <div class="footer">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h5>Quick Links</h5>
                <ul class="nav flex-column">
                    <li class="nav-item"><a href="/common/About_us.aspx">About Us</a></li>
                    <li class="nav-item"><a href="/common/Contact_us.aspx">Contact Us</a></li>
                    <li class="nav-item"><a href="#">Our Services</a></li>
                    <li class="nav-item"><a href="/common/Privacy_policy.aspx">Privacy Policy</a></li>
                    <li class="nav-item"><a href="/common/Terms_condition.aspx">Terms & Conditions</a></li>
                </ul>
            </div>

            <div class="col-md-6">
                <h5>Contact</h5>
                <p><i class="bi bi-geo-alt-fill"></i> 123 Street, New York, USA</p>
                <p><i class="bi bi-telephone-fill"></i> +012 345 67890</p>
                <p><i class="bi bi-envelope-fill"></i> info@example.com</p>
            </div>
        </div>

        <div class="mt-3 border-top pt-2">
            <p>© Your Site Name, All Rights Reserved. Designed by <a href="#">HTML Codex</a></p>
        </div>
    </div>
</body>
</html>
