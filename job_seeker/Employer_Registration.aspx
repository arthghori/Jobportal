<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employer_Registration.aspx.cs" Inherits="job_portal.job_seeker.Employer_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style type="text/css">
        .auto-style2 {
            width: 600px;
            height: 847px;
            padding-left:15px;
            
        }
        .TextBox{
            border-radius:8px;
        }
       #btnRegister:hover{
            color:antiquewhite;
            cursor:pointer;
            background-color:aqua;

  }
        #btnRegister{
           border-radius:20px;
  }

        /* 🔹 Company Registration Table Container */
table.auto-style2 {
    background-color: #FFFFFF !important;
    border-radius: 12px !important;
    box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1) !important;
    margin: 40px auto !important;
    padding: 0;
    width: 90% !important;
    max-width: 650px;
    border-collapse: collapse !important;
    border: 1px solid #e0e0e0 !important;
    overflow: hidden;
}

/* 🔹 Header Styling */
.auto-style2 tr:first-child td {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif !important;
    font-size: 28px !important;
    font-weight: 700 !important;
    background: linear-gradient(135deg, #059669 0%, #047857 100%) !important;
    color: white !important;
    padding: 30px 20px !important;
    text-align: center;
    letter-spacing: 0.5px;
}

/* 🔹 Table Rows and Cells */
.auto-style2 tr {
    border-bottom: 1px solid #f0f0f0;
    transition: background-color 0.3s ease;
}

.auto-style2 tr:hover {
    background-color: #fafafa;
}

.auto-style2 td {
    padding:9px 4px !important;
    vertical-align: top !important;
}

/* 🔹 Label Styling */
.auto-style2 label {
    font-weight: 600 !important;
    color: #2d3748 !important;
    font-size: 14px !important;
    display: block !important;
    margin-bottom: 8px !important;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    letter-spacing: 0.3px;
}

/* 🔹 Textbox Styling */
.TextBox {
    width: 100% !important;
    padding: 14px 16px !important;
    border: 2px solid #e2e8f0 !important;
    border-radius: 8px !important;
    font-size: 15px !important;
    transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1) !important;
    margin: 4px 0 !important;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #ffffff;
    box-sizing: border-box;
}

.TextBox:focus {
    border-color: #059669 !important;
    box-shadow: 0 0 0 3px rgba(5, 150, 105, 0.1) !important;
    outline: none !important;
    transform: translateY(-1px);
}

.TextBox::placeholder {
    color: #a0aec0 !important;
    font-weight: 400;
}

/* 🔹 Dropdown Styling */
select.TextBox {
    background-color: white !important;
    cursor: pointer !important;
    appearance: none;
    background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 24 24' stroke='%23595959'%3E%3Cpath stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M19 9l-7 7-7-7'%3E%3C/path%3E%3C/svg%3E");
    background-repeat: no-repeat;
    background-position: right 16px center;
    background-size: 16px;
    padding-right: 40px !important;
}

/* 🔹 TextArea Styling */
textarea.TextBox {
    min-height: 80px !important;
    resize: vertical !important;
    line-height: 1.5 !important;
}

/* 🔹 File Upload Styling */
input[type="file"] {
    padding: 36px  16px 51px !important;
    border: 2px dashed #e2e8f0 !important;
    border-radius: 8px !important;
    background-color: #f8fafc !important;
    width: 100% !important;
    margin: 4px 0 !important;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-size: 14px;
    transition: all 0.3s ease;
    cursor: pointer;
}

input[type="file"]:hover {
    border-color: #059669 !important;
    background-color: #f0fff4 !important;
}

input[type="file"]:focus {
    border-color: #059669 !important;
    outline: none !important;
    box-shadow: 0 0 0 3px rgba(5, 150, 105, 0.1) !important;
}

/* 🔹 Button Styling */
#btnRegister {
    background: linear-gradient(135deg, #059669 0%, #047857 100%) !important;
    color: white !important;
    border: none !important;
    padding: 16px 40px !important;
    border-radius: 10px !important;
    font-size: 16px !important;
    font-weight: 600 !important;
    cursor: pointer !important;
    transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1) !important;
    display: block !important;
    margin: 30px auto 20px !important;
    width: 220px !important;
    height: 52px !important;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    letter-spacing: 0.5px;
    text-transform: uppercase;
    box-shadow: 0 4px 15px rgba(5, 150, 105, 0.3);
}

#btnRegister:hover {
    transform: translateY(-3px) !important;
    box-shadow: 0 8px 25px rgba(5, 150, 105, 0.4) !important;
    background: linear-gradient(135deg, #047857 0%, #035c3f 100%) !important;
}

#btnRegister:active {
    transform: translateY(-1px) !important;
}

/* 🔹 Validation Error Styling */
.RequiredFieldValidator,
.RegularExpressionValidator,
.CompareValidator {
    display: block !important;
    margin-top: 6px !important;
    font-size: 12px !important;
    color: #e53e3e !important;
    font-weight: 500;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

/* 🔹 Number Input Styling */
input[type="number"] {
    -moz-appearance: textfield !important;
}

input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none !important;
    margin: 0 !important;
}

/* 🔹 Responsive Design */
@media (max-width: 768px) {
    table.auto-style2 {
        width: 95% !important;
        margin: 20px auto !important;
        border-radius: 10px !important;
    }
    
    .TextBox, input[type="file"] {
        width: 100% !important;
    }
    
    .auto-style2 tr:first-child td {
        font-size: 24px !important;
        padding: 25px 20px !important;
    }
    
    .auto-style2 td {
        padding: 15px 20px !important;
    }
    
    #btnRegister {
        width: 90% !important;
        margin: 25px auto 15px !important;
    }
}

@media (max-width: 480px) {
    table.auto-style2 {
        margin: 15px auto !important;
        border-radius: 8px !important;
    }
    
    .auto-style2 td {
        padding: 12px 15px !important;
    }
    
    .TextBox {
        padding: 12px 14px !important;
        font-size: 16px !important;
    }
    
    .auto-style2 tr:first-child td {
        font-size: 22px !important;
        padding: 20px 15px !important;
    }
    
    #btnRegister {
        width: 100% !important;
        margin: 20px auto 10px !important;
    }
}

/* 🔹 Animation */
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

.auto-style2 {
    animation: fadeInUp 0.6s ease-out;
}

.auto-style2 tr {
    animation: fadeInUp 0.4s ease-out;
}

/* 🔹 Focus States for Accessibility */
.TextBox:focus,
select:focus,
input[type="file"]:focus,
#btnRegister:focus {
    outline: none !important;
    box-shadow: 0 0 0 3px rgba(5, 150, 105, 0.2) !important;
}

/* 🔹 Form Section Spacing */
.auto-style2 tr:last-child {
    border-bottom: none;
}

/* 🔹 Professional Spacing Adjustments */
.auto-style2 br {
    display: none;
}

.auto-style2 td:first-child {
    padding-left: 25px !important;
}

/* 🔹 Industry Dropdown Specific */
#ddlIndustryype {
    margin: 8px 0 4px 0 !important;
}

/* 🔹 Remove inline spacing and use CSS instead */
.auto-style2 td {
    padding-left: 25px !important;
    padding-right: 25px !important;
}

    </style>
</head>
<body>
    <form id="Emp_Registration" runat="server" >
                       <ul class="nav nav-item nav-tabs " style="font-weight: bold; font-size: 15px; background-color: white;">
    <li>
        <img src="../Images/JOB FiNDER logo.png" alt="logo" class="auto-style1" style="width: 100px; height: 100px" />
    </li>

    <li class="nav-item col" style="margin-left: 745px; margin-top: 30px; text-align: center;"><a class="nav-link" href="/common/Main_page.aspx" style="color: #059669;">Home </a></li>
    <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="/company/jobs.aspx" style="color: #059669;">Finds Job </a></li>
    <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="/common/About_us.aspx" style="color: #059669;">About Us </a></li>
    <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="/common/Contact_us.aspx" style="color: #059669;">Contact Us </a></li>
    <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="/auth/login_page.aspx" style="color: #059669;">Log in </a></li>
    <li class="nav-item col" style="margin-top: 30px; text-align: center;"><a class="nav-link" href="/job_seeker/Employer_Registration.aspx" style="color: #059669;">Register </a></li>

</ul>
          <div class="container mt-5">
  <div class="row p-3 mb-5 bg-white rounded">
         <div class="col-md-4 bg-light text-center py-4 " style="width: 300px; height: 400px; margin-top:50px;" >
          <img src="../Images/Static/white-boy.a0d2814a.png"  alt="image" style="width: 200px; height: 200px" />
          <ul>
          <li>
              On registering, you can
              Build your profile and let recruiters find you
          </li>
          <li> Get job postings delivered right to your email</li>

          <li>  Find a job and grow your career</li>
          </ul>
          <center><a href="/auth/Registration.aspx" style="color:#059669">Register as a job seeker</a></center>
      </div> 
                
            <table  style="box-shadow : 5px 5px 15px grey;background-color:#F3F3F3 ;margin-left:auto;margin-right:auto;margin-top:50px;margin-bottom:50px" class="auto-style2"  >
                <tr>
                    <td  style="font-family:Verdana,Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold;">&nbsp;Company registration<br />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp; <asp:Label ID="lblCname" runat="server" Text="Company name" Height="22px"></asp:Label> 
                        &nbsp; 
                        <br />
&nbsp;&nbsp; <asp:TextBox ID="txtCname" runat="server" Height="26px" Width="560px" placeholder="company name" CssClass="TextBox"></asp:TextBox> <br />
                          <asp:RequiredFieldValidator ID="rfvCompanyName" runat="server"  ControlToValidate="txtCname" ErrorMessage="Company Name is required." ForeColor="Red" />
                    </td>
                </tr>
                   <tr>
                        <td>
                         &nbsp;&nbsp; <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
                        &nbsp;<br />
&nbsp;&nbsp; <asp:TextBox ID="txtUname" runat="server" Height="26px" Width="560px" placeholder="Username" CssClass="TextBox"></asp:TextBox> <br />
                         <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUname" ErrorMessage="Username is required." ForeColor="Red" />
                        </td>
                  </tr>
                                <tr>
                   <td>

                       &nbsp;&nbsp; <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                     &nbsp;  <br />
&nbsp;&nbsp; <asp:TextBox ID="txtEmail" runat="server" Height="26px" Width="560px" placeholder="Email" CssClass="TextBox"></asp:TextBox> <br />


                     <asp:RequiredFieldValidator ID="rfvEmail" runat="server"  ControlToValidate="txtEmail" ErrorMessage="Email is required." ForeColor="Red" />
                  <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  ErrorMessage="Enter a valid email address." ForeColor="Red" />
                   </td>
               </tr>
                 <tr>
                    <td>&nbsp;&nbsp; <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                     &nbsp;<br />
&nbsp;&nbsp; <asp:TextBox ID="txtPassword" runat="server" Height="26px" Width="560px" placeholder="Password" CssClass="TextBox"></asp:TextBox> <br />
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." ForeColor="Red" />   
              </td>
          </tr>
                 <tr>
                     <td
                         >&nbsp;&nbsp; <asp:Label ID="lblCpassword" runat="server" Text="Confirm password"></asp:Label>
                     &nbsp;<br />
&nbsp;&nbsp; <asp:TextBox ID="txtCpassword" runat="server" Height="26px" Width="560px" placeholder="Confirm password" CssClass="TextBox"></asp:TextBox> <br />
                    <asp:CompareValidator ID="cvConfirmPassword" runat="server" ControlToValidate="txtCpassword" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match." ForeColor="Red" />
              </td>
         </tr>
                <tr>
                   <td>&nbsp;&nbsp; <asp:Label ID="lblContactno" runat="server" Text="Contact number"></asp:Label>
                       &nbsp;<br />
&nbsp;&nbsp; <asp:TextBox ID="txtContactno" runat="server" Height="26px" Width="560px" placeholder="Phone number" CssClass="TextBox" TextMode="Number" MaxLength="10"></asp:TextBox> <br />
                       <asp:RequiredFieldValidator ID="rfvContactNumber" runat="server"  ControlToValidate="txtContactno" ErrorMessage="Contact Number is required." ForeColor="Red" />
                   </td>
               </tr>  
                <tr>
                    <td>
                       &nbsp;&nbsp; <asp:Label ID="lblWebsite" runat="server" Text="Website"></asp:Label>
                       &nbsp;<br />
&nbsp;&nbsp; <asp:TextBox ID="txtWebsite" runat="server" Height="26px" Width="560px" placeholder="Website" CssClass="TextBox"></asp:TextBox> <br />
                      <asp:RequiredFieldValidator ID="rfvWebsite" runat="server"  ControlToValidate="txtWebsite" ErrorMessage="Website is required." ForeColor="Red" />
                 </td>
            </tr>
              
              
                <tr>
                    <td>
                        &nbsp;&nbsp; <asp:Label ID="lblIndustytype" runat="server" Text="Industry type"></asp:Label>
                        <br />
                        &nbsp;&nbsp;
                        <asp:DropDownList ID="ddlIndustryype" runat="server" Height="26px" Width="560px" placeholder="Industry Type" CssClass="TextBox">
                            <asp:ListItem>Select a Industry</asp:ListItem>
                          <asp:ListItem>Accounting</asp:ListItem>
    <asp:ListItem>Airlines and Aviation</asp:ListItem>
    <asp:ListItem>Alternative Dispute Resolution</asp:ListItem>
    <asp:ListItem>Alternative Medicine</asp:ListItem>
    <asp:ListItem>Animation</asp:ListItem>
    <asp:ListItem>Apparel & Fashion</asp:ListItem>
    <asp:ListItem>Architecture & Planning</asp:ListItem>
    <asp:ListItem>Arts and Crafts</asp:ListItem>
    <asp:ListItem>Automotive</asp:ListItem>
    <asp:ListItem>Aviation & Aerospace</asp:ListItem>
    <asp:ListItem>Banking</asp:ListItem>
    <asp:ListItem>Biotechnology</asp:ListItem>
    <asp:ListItem>Broadcast Media</asp:ListItem>
    <asp:ListItem>Building Materials</asp:ListItem>
    <asp:ListItem>Business Supplies & Equipment</asp:ListItem>
    <asp:ListItem>Capital Markets</asp:ListItem>
    <asp:ListItem>Chemicals</asp:ListItem>
    <asp:ListItem>Civic & Social Organization</asp:ListItem>
    <asp:ListItem>Civil Engineering</asp:ListItem>
    <asp:ListItem>Commercial Real Estate</asp:ListItem>
    <asp:ListItem>Computer & Network Security</asp:ListItem>
    <asp:ListItem>Computer Games</asp:ListItem>
    <asp:ListItem>Computer Hardware</asp:ListItem>
    <asp:ListItem>Computer Networking</asp:ListItem>
    <asp:ListItem>Computer Software</asp:ListItem>
    <asp:ListItem>Construction</asp:ListItem>
    <asp:ListItem>Consumer Electronics</asp:ListItem>
    <asp:ListItem>Consumer Goods</asp:ListItem>
    <asp:ListItem>Consumer Services</asp:ListItem>
    <asp:ListItem>Cosmetics</asp:ListItem>
    <asp:ListItem>Dairy</asp:ListItem>
    <asp:ListItem>Defense & Space</asp:ListItem>
    <asp:ListItem>Design</asp:ListItem>
    <asp:ListItem>Education Management</asp:ListItem>
    <asp:ListItem>E-Learning</asp:ListItem>
    <asp:ListItem>Electrical/Electronic Manufacturing</asp:ListItem>
    <asp:ListItem>Entertainment</asp:ListItem>
    <asp:ListItem>Environmental Services</asp:ListItem>
    <asp:ListItem>Events Services</asp:ListItem>
    <asp:ListItem>Executive Office</asp:ListItem>
    <asp:ListItem>Facilities Services</asp:ListItem>
    <asp:ListItem>Farming</asp:ListItem>
    <asp:ListItem>Financial Services</asp:ListItem>
    <asp:ListItem>Fine Art</asp:ListItem>
    <asp:ListItem>Fishery</asp:ListItem>
    <asp:ListItem>Food & Beverages</asp:ListItem>
    <asp:ListItem>Food Production</asp:ListItem>
    <asp:ListItem>Fund-Raising</asp:ListItem>
    <asp:ListItem>Furniture</asp:ListItem>
    <asp:ListItem>Gambling & Casinos</asp:ListItem>
    <asp:ListItem>Glass, Ceramics & Concrete</asp:ListItem>
    <asp:ListItem>Government Administration</asp:ListItem>
    <asp:ListItem>Government Relations</asp:ListItem>
    <asp:ListItem>Graphic Design</asp:ListItem>
    <asp:ListItem>Health, Wellness and Fitness</asp:ListItem>
    <asp:ListItem>Higher Education</asp:ListItem>
    <asp:ListItem>Hospital & Health Care</asp:ListItem>
    <asp:ListItem>Hospitality</asp:ListItem>
    <asp:ListItem>Human Resources</asp:ListItem>
    <asp:ListItem>Import and Export</asp:ListItem>
    <asp:ListItem>Individual & Family Services</asp:ListItem>
    <asp:ListItem>Industrial Automation</asp:ListItem>
    <asp:ListItem>Information Services</asp:ListItem>
    <asp:ListItem>Information Technology & Services</asp:ListItem>
    <asp:ListItem>Insurance</asp:ListItem>
    <asp:ListItem>International Affairs</asp:ListItem>
    <asp:ListItem>International Trade & Development</asp:ListItem>
    <asp:ListItem>Internet</asp:ListItem>
    <asp:ListItem>Investment Banking</asp:ListItem>
    <asp:ListItem>Investment Management</asp:ListItem>
    <asp:ListItem>Judiciary</asp:ListItem>
    <asp:ListItem>Law Enforcement</asp:ListItem>
    <asp:ListItem>Law Practice</asp:ListItem>
    <asp:ListItem>Legal Services</asp:ListItem>
    <asp:ListItem>Legislative Office</asp:ListItem>
    <asp:ListItem>Leisure, Travel & Tourism</asp:ListItem>
    <asp:ListItem>Libraries</asp:ListItem>
    <asp:ListItem>Logistics & Supply Chain</asp:ListItem>
    <asp:ListItem>Luxury Goods & Jewelry</asp:ListItem>
    <asp:ListItem>Machinery</asp:ListItem>
    <asp:ListItem>Management Consulting</asp:ListItem>
    <asp:ListItem>Maritime</asp:ListItem>
    <asp:ListItem>Market Research</asp:ListItem>
    <asp:ListItem>Marketing and Advertising</asp:ListItem>
    <asp:ListItem>Mechanical or Industrial Engineering</asp:ListItem>
    <asp:ListItem>Media Production</asp:ListItem>
    <asp:ListItem>Medical Devices</asp:ListItem>
    <asp:ListItem>Medical Practice</asp:ListItem>
    <asp:ListItem>Mental Health Care</asp:ListItem>
    <asp:ListItem>Military</asp:ListItem>
    <asp:ListItem>Mining & Metals</asp:ListItem>
    <asp:ListItem>Museums & Institutions</asp:ListItem>
    <asp:ListItem>Music</asp:ListItem>
    <asp:ListItem>Nanotechnology</asp:ListItem>
    <asp:ListItem>Newspapers</asp:ListItem>
    <asp:ListItem>Non-Profit Organization Management</asp:ListItem>
    <asp:ListItem>Oil & Energy</asp:ListItem>
    <asp:ListItem>Online Publishing</asp:ListItem>
    <asp:ListItem>Outsourcing/Offshoring</asp:ListItem>
    <asp:ListItem>Package/Freight Delivery</asp:ListItem>
    <asp:ListItem>Packaging & Containers</asp:ListItem>
    <asp:ListItem>Paper & Forest Products</asp:ListItem>
    <asp:ListItem>Performing Arts</asp:ListItem>
    <asp:ListItem>Pharmaceuticals</asp:ListItem>
    <asp:ListItem>Philanthropy</asp:ListItem>
    <asp:ListItem>Photography</asp:ListItem>
    <asp:ListItem>Plastics</asp:ListItem>
    <asp:ListItem>Political Organization</asp:ListItem>
    <asp:ListItem>Primary/Secondary Education</asp:ListItem>
    <asp:ListItem>Printing</asp:ListItem>
    <asp:ListItem>Professional Training & Coaching</asp:ListItem>
    <asp:ListItem>Program Development</asp:ListItem>
    <asp:ListItem>Public Policy</asp:ListItem>
    <asp:ListItem>Public Relations & Communications</asp:ListItem>
    <asp:ListItem>Public Safety</asp:ListItem>
    <asp:ListItem>Publishing</asp:ListItem>
    <asp:ListItem>Railroad Manufacture</asp:ListItem>
    <asp:ListItem>Ranching</asp:ListItem>
    <asp:ListItem>Real Estate</asp:ListItem>
    <asp:ListItem>Recreational Facilities & Services</asp:ListItem>
    <asp:ListItem>Religious Institutions</asp:ListItem>
    <asp:ListItem>Renewables & Environment</asp:ListItem>
    <asp:ListItem>Research</asp:ListItem>
    <asp:ListItem>Restaurants</asp:ListItem>
    <asp:ListItem>Retail</asp:ListItem>
    <asp:ListItem>Security and Investigations</asp:ListItem>
    <asp:ListItem>Semiconductors</asp:ListItem>
    <asp:ListItem>Shipbuilding</asp:ListItem>
    <asp:ListItem>Sporting Goods</asp:ListItem>
    <asp:ListItem>Sports</asp:ListItem>
    <asp:ListItem>Staffing and Recruiting</asp:ListItem>
    <asp:ListItem>Supermarkets</asp:ListItem>
    <asp:ListItem>Telecommunications</asp:ListItem>
    <asp:ListItem>Textiles</asp:ListItem>
    <asp:ListItem>Think Tanks</asp:ListItem>
    <asp:ListItem>Tobacco</asp:ListItem>
    <asp:ListItem>Translation and Localization</asp:ListItem>
    <asp:ListItem>Transportation/Trucking/Railroad</asp:ListItem>
    <asp:ListItem>Utilities</asp:ListItem>
    <asp:ListItem>Venture Capital & Private Equity</asp:ListItem>
    <asp:ListItem>Veterinary</asp:ListItem>
    <asp:ListItem>Warehousing</asp:ListItem>
    <asp:ListItem>Wholesale</asp:ListItem>
    <asp:ListItem>Wine and Spirits</asp:ListItem>
    <asp:ListItem>Wireless</asp:ListItem>
    <asp:ListItem>Writing and Editing</asp:ListItem>
                        </asp:DropDownList>  <br />
                        <asp:RequiredFieldValidator ID="rfvIndusrytype" runat="server"  ControlToValidate="ddlIndustryype" ErrorMessage="Industrytype is required." ForeColor="Red" />
                 </td>
            </tr>
                
                <tr>
                    <td>
                        &nbsp;&nbsp; <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                        &nbsp;<br />
&nbsp;&nbsp; <asp:TextBox ID="txtAddress" runat="server" Height="26px" Width="560px" placeholder="Address" CssClass="TextBox" TextMode="MultiLine"></asp:TextBox> <br />
                         <asp:RequiredFieldValidator ID="rfvAddress" runat="server"  ControlToValidate="txtAddress" ErrorMessage="Address is required." ForeColor="Red" />
                    </td>
                </tr>
                  
                <tr>

                    <td>&nbsp;&nbsp; <asp:Label ID="lblLocation" runat="server" Text="Location"></asp:Label>
                        &nbsp;<br />
&nbsp;&nbsp; <asp:TextBox ID="txtLocation" runat="server" Height="26px" Width="560px" placeholder="Location" CssClass="TextBox" TextMode="MultiLine"></asp:TextBox> <br />



                        <asp:RequiredFieldValidator ID="rfvLocation" runat="server"  ControlToValidate="txtLocation" ErrorMessage="Location is required." ForeColor="Red" />
                    </td>
                </tr>
                     <tr>
                        <td>

                        &nbsp;&nbsp; <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label>
                       &nbsp;<br />
&nbsp;&nbsp; <asp:TextBox ID="txtDescription" runat="server" Height="26px" Width="560px" placeholder="Description" CssClass="TextBox" TextMode="MultiLine"></asp:TextBox> <br />
 <br />

                       <asp:RequiredFieldValidator ID= "rfvDescriptionrunat" runat="server"  ControlToValidate="txtDescription" ErrorMessage="Location is required." ForeColor="Red" />
             
                    </td>
                </tr>

               
                <tr>
                    <td>
                        &nbsp;&nbsp; <asp:Label ID="lblCopanylogo" runat="server" Text="Company logo"></asp:Label>
                        <br />
                        &nbsp;&nbsp; <asp:FileUpload ID="fuFileupload" runat="server" Height="26px" Width="560px" /> <br />
                        <asp:RequiredFieldValidator ID="rfvFileupload" runat="server"  ControlToValidate="fuFileupload" ErrorMessage="File is required." ForeColor="Red" /></td>
                </tr>
                <tr>

                    <td>&nbsp;&nbsp;
                        <asp:Button ID="btnRegister" runat="server" Text="Register" BackColor="#059669" ForeColor="White" Height="37px" Width="180px" OnClick="btnRegister_Click" />
                        </td>
                </tr>
                </table>
      </div>
        </div>
          <%--<asp:GridView ID="gvcompany" runat="server">
          </asp:GridView>--%>

        
                <div class="row container-fluid" style="margin-top: 200px; margin-left: 2px; background-color: #059669; color:white ; text-align: center; height: 100%;">
            <div class="col" style="font-size:20px;padding:15px;">

                <p style="font-weight:bolder;font-size:25px;">LEARN ABOUT US </p>
                <div>
                    <ul class="nav flex-column" >
                         <li class="nav-item"><a class="nav-link" href="/common/About_us.aspx" style="color:white;">About Us </a></li>
   <li class="nav-item"><a class="nav-link" href="/common/Contact_us.aspx" style="color:white;">Contact Us </a></li>
   <li class="nav-item"><a class="nav-link" href="/common/Privacy_policy.aspx" style="color:white;">Privacy Policy </a></li>
   <li class="nav-item"><a class="nav-link" href="/common/Terms_condition.aspx" style="color:white;">Terms & Condition </a></li>
                    </ul>
                </div>

            </div>


            <div class="col" style="font-size:20px;padding:15px;text-align:left;">
                <p style="font-weight:bolder;font-size:25px;"> CONTACT</p>
                <div><i class="bi bi-telephone-fill" style="margin-right:10px;"></i>Phone : +8880 44338</div>
                <div><i class="bi bi-envelope-fill" style="margin-right:10px;"></i>Email : info@gmail.com</div>

            </div>

            <div class="col" style="text-align:left;padding:15px;" >
                <p style="font-size:20px;font-weight:bolder;font-size:25px;">GET IN TOUCH</p>
                <div >
                    <input type="text" placeholder="Name" /> <br />
                    <input type="email" placeholder="Email address" />
                    <div>
                        <input type="text" placeholder="Message"/>
                        <input type="button" value="Send" style="background-color:white;color:#059669;border:0px;height:30px;"/>
                    </div>
                </div>
            </div>

            <hr />

            <p>FOLLOW US ON</p>

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

