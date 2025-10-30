<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Education_detail.aspx.cs" Inherits="job_portal.job_seeker.Education_detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Education Details</title>
    <link rel="icon" type="image/x-icon" href="../Images/Static/white_logo.png" />
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <style type="text/css">
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .form-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 30px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border: 1px solid #ddd;
        }
        .form-title {
            font-weight: bold;
            font-size: 28px;
            color: #059669;
            text-align: center;
            margin-bottom: 20px;
        }
        .form-label {
            font-weight: bold;
            color: #333;
            margin-bottom: 5px;
        }
        .form-control {
            border-radius: 5px;
            border: 1px solid #ccc;
            padding: 10px;
            width: 100%;
        }
        .form-control:focus {
            border-color: #059669;
            box-shadow: 0 0 5px rgba(5, 150, 105, 0.5);
        }
        .btn-submit {
            background-color: #059669;
            color: white;
            border: none;
            border-radius: 10px;
            padding: 12px;
            width: 100%;
            font-size: 16px;
            font-weight: bold;
            transition: all 0.3s ease;
        }
        .btn-submit:hover {
            background-color: #047857;
            font-size: 18px;
            transform: scale(1.05);
        }
        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 5px;
        }
        .success-message {
            color: green;
            font-size: 14px;
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <form id="Education_detail" runat="server">
        <div class="container">
            <div class="form-container">
                <h2 class="form-title">Add Education Details</h2>
                <div class="mb-3">
                    <label for="ddlUniversity" class="form-label">University</label>
                    <asp:DropDownList ID="ddlUniversity" runat="server" CssClass="form-control">
                        <asp:ListItem Value="">---Select University---</asp:ListItem>
                        <asp:ListItem>Indian Institute of Technology (IIT) Bombay</asp:ListItem>
                        <asp:ListItem>Indian Institute of Technology (IIT) Delhi</asp:ListItem>
                        <asp:ListItem>Indian Institute of Technology (IIT) Madras</asp:ListItem>
                        <asp:ListItem>Indian Institute of Technology (IIT) Kanpur</asp:ListItem>
                        <asp:ListItem>Indian Institute of Technology (IIT) Kharagpur</asp:ListItem>
                        <asp:ListItem>Indian Institute of Science (IISc) Bangalore</asp:ListItem>
                        <asp:ListItem>Delhi University (DU)</asp:ListItem>
                        <asp:ListItem>Jawaharlal Nehru University (JNU)</asp:ListItem>
                        <asp:ListItem>Banaras Hindu University (BHU)</asp:ListItem>
                        <asp:ListItem>Jamia Millia Islamia (JMI)</asp:ListItem>
                        <asp:ListItem>Jadavpur University</asp:ListItem>
                        <asp:ListItem>Calcutta University</asp:ListItem>
                        <asp:ListItem>Anna University</asp:ListItem>
                        <asp:ListItem>University of Mumbai</asp:ListItem>
                        <asp:ListItem>University of Hyderabad</asp:ListItem>
                        <asp:ListItem>Osmania University</asp:ListItem>
                        <asp:ListItem>Amity University</asp:ListItem>
                        <asp:ListItem>SRM Institute of Science and Technology</asp:ListItem>
                        <asp:ListItem>Vellore Institute of Technology (VIT)</asp:ListItem>
                        <asp:ListItem>Shiv Nadar University</asp:ListItem>
                        <asp:ListItem>Symbiosis International University</asp:ListItem>
                        <asp:ListItem>Christ University</asp:ListItem>
                        <asp:ListItem>Birla Institute of Technology and Science (BITS) Pilani</asp:ListItem>
                        <asp:ListItem>Manipal Academy of Higher Education</asp:ListItem>
                        <asp:ListItem>Pune University (Savitribai Phule Pune University)</asp:ListItem>
                        <asp:ListItem>Gujarat Technological University</asp:ListItem>
                        <asp:ListItem>Gujarat University</asp:ListItem>
                        <asp:ListItem>Parul University</asp:ListItem>
                        <asp:ListItem>P.P. Savani University</asp:ListItem>
                        <asp:ListItem>MSU University (Maharaja Sayajirao University of Baroda)</asp:ListItem>
                        <asp:ListItem>Vidhyadeep University</asp:ListItem>
                        <asp:ListItem>AURO University</asp:ListItem>
                        <asp:ListItem>Bhagwan Mahavir University</asp:ListItem>
                        <asp:ListItem>V. T. Choksi Sarvajanik Law College</asp:ListItem>
                        <asp:ListItem>National Institute of Technology (NIT) Trichy</asp:ListItem>
                        <asp:ListItem>National Institute of Technology (NIT) Warangal</asp:ListItem>
                        <asp:ListItem>Indian Statistical Institute (ISI) Kolkata</asp:ListItem>
                        <asp:ListItem>National Law School of India University (NLSIU) Bangalore</asp:ListItem>
                        <asp:ListItem>Indian Institute of Management (IIM) Ahmedabad</asp:ListItem>
                        <asp:ListItem>Indian Institute of Management (IIM) Bangalore</asp:ListItem>
                        <asp:ListItem>Indian Institute of Management (IIM) Calcutta</asp:ListItem>
                        <asp:ListItem>Indian Institute of Management (IIM) Lucknow</asp:ListItem>
                        <asp:ListItem>Xavier School of Management (XLRI) Jamshedpur</asp:ListItem>
                        <asp:ListItem>Indian School of Business (ISB) Hyderabad</asp:ListItem>
                        <asp:ListItem>Punjab University</asp:ListItem>
                        <asp:ListItem>Indian Institute of Technology (IIT) Roorkee</asp:ListItem>
                        <asp:ListItem>Chandigarh University</asp:ListItem>
                        <asp:ListItem>Government Pharmacy College, Surat</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvUniversity" runat="server" ControlToValidate="ddlUniversity" InitialValue="" ErrorMessage="Please select a university." CssClass="error-message" />
                </div>
                <div class="mb-3">
                    <label for="ddlField" class="form-label">Field</label>
                    <asp:DropDownList ID="ddlField" runat="server" CssClass="form-control">
                        <asp:ListItem Value="">---Select Your Course---</asp:ListItem>
                        <asp:ListItem>Engineering</asp:ListItem>
                        <asp:ListItem>Computer Science</asp:ListItem>
                        <asp:ListItem>Law</asp:ListItem>
                        <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Marketing</asp:ListItem>
                        <asp:ListItem>Biology</asp:ListItem>
                        <asp:ListItem>Information Technology</asp:ListItem>
                        <asp:ListItem>Web Development</asp:ListItem>
                        <asp:ListItem>Software Development</asp:ListItem>
                        <asp:ListItem>Graphic Design</asp:ListItem>
                        <asp:ListItem>Cybersecurity</asp:ListItem>
                        <asp:ListItem>Data Science</asp:ListItem>
                        <asp:ListItem>Artificial Intelligence</asp:ListItem>
                        <asp:ListItem>Machine Learning</asp:ListItem>
                        <asp:ListItem>Blockchain Technology</asp:ListItem>
                        <asp:ListItem>Cloud Computing</asp:ListItem>
                        <asp:ListItem>Digital Marketing</asp:ListItem>
                        <asp:ListItem>Business Administration</asp:ListItem>
                        <asp:ListItem>Economics</asp:ListItem>
                        <asp:ListItem>Psychology</asp:ListItem>
                        <asp:ListItem>Political Science</asp:ListItem>
                        <asp:ListItem>Medical Science</asp:ListItem>
                        <asp:ListItem>Nursing</asp:ListItem>
                        <asp:ListItem>Architecture</asp:ListItem>
                        <asp:ListItem>Hotel Management</asp:ListItem>
                        <asp:ListItem>Pharmaceutical Science</asp:ListItem>
                        <asp:ListItem>Environmental Science</asp:ListItem>
                        <asp:ListItem>Agriculture Science</asp:ListItem>
                        <asp:ListItem>Journalism & Mass Communication</asp:ListItem>
                        <asp:ListItem>Animation & VFX</asp:ListItem>
                        <asp:ListItem>Ethical Hacking</asp:ListItem>
                        <asp:ListItem>Robotics</asp:ListItem>
                        <asp:ListItem>IoT (Internet of Things)</asp:ListItem>
                        <asp:ListItem>Mechanical Engineering</asp:ListItem>
                        <asp:ListItem>Civil Engineering</asp:ListItem>
                        <asp:ListItem>Electrical Engineering</asp:ListItem>
                        <asp:ListItem>Electronics and Communication Engineering</asp:ListItem>
                        <asp:ListItem>Aeronautical Engineering</asp:ListItem>
                        <asp:ListItem>Petroleum Engineering</asp:ListItem>
                        <asp:ListItem>Bioinformatics</asp:ListItem>
                        <asp:ListItem>Forensic Science</asp:ListItem>
                        <asp:ListItem>Astrophysics</asp:ListItem>
                        <asp:ListItem>Event Management</asp:ListItem>
                        <asp:ListItem>Hospitality Management</asp:ListItem>
                        <asp:ListItem>Game Development</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvField" runat="server" ControlToValidate="ddlField" InitialValue="" ErrorMessage="Please select a field." CssClass="error-message" />
                </div>
                <div class="mb-3">
                    <label for="ddlDegree" class="form-label">Degree</label>
                    <asp:DropDownList ID="ddlDegree" runat="server" CssClass="form-control">
                        <asp:ListItem Value="">---Select Degree---</asp:ListItem>
                        <asp:ListItem>Bachelor</asp:ListItem>
                        <asp:ListItem>Master</asp:ListItem>
                        <asp:ListItem>PhD</asp:ListItem>
                        <asp:ListItem>Diploma</asp:ListItem>
                        <asp:ListItem>Associate Degree</asp:ListItem>
                        <asp:ListItem>Postgraduate Diploma</asp:ListItem>
                        <asp:ListItem>Doctorate</asp:ListItem>
                        <asp:ListItem>Certificate Course</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvDegree" runat="server" ControlToValidate="ddlDegree" InitialValue="" ErrorMessage="Please select a degree." CssClass="error-message" />
                </div>
                <div class="mb-3">
                    <label for="ddlYear" class="form-label">Graduation Year</label>
                    <asp:DropDownList ID="ddlYear" runat="server" CssClass="form-control">
                        <asp:ListItem Value="">---Select Year---</asp:ListItem>
                        <asp:ListItem>2024</asp:ListItem>
                        <asp:ListItem>2023</asp:ListItem>
                        <asp:ListItem>2022</asp:ListItem>
                        <asp:ListItem>2021</asp:ListItem>
                        <asp:ListItem>2020</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                        <asp:ListItem>1979</asp:ListItem>
                        <asp:ListItem>1978</asp:ListItem>
                        <asp:ListItem>1977</asp:ListItem>
                        <asp:ListItem>1976</asp:ListItem>
                        <asp:ListItem>1975</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1972</asp:ListItem>
                        <asp:ListItem>1971</asp:ListItem>
                        <asp:ListItem>1970</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvYear" runat="server" ControlToValidate="ddlYear" InitialValue="" ErrorMessage="Please select a graduation year." CssClass="error-message" />
                </div>
                <div class="mb-3">
                    <label for="txtUgpa" class="form-label">CGPA</label>
                    <asp:TextBox ID="txtUgpa" runat="server" TextMode="Number" CssClass="form-control" placeholder="Enter CGPA (1-10)" />
                    <asp:RequiredFieldValidator ID="rfvCgpa" runat="server" ControlToValidate="txtUgpa" ErrorMessage="Please enter your CGPA." CssClass="error-message" />
                    <asp:RangeValidator ID="rvCgpa" runat="server" ControlToValidate="txtUgpa" ErrorMessage="CGPA must be between 1 and 10." MinimumValue="1" MaximumValue="10" Type="Double" CssClass="error-message" />
                </div>
                <asp:Button ID="btnSubmittt" runat="server" Text="Submit" CssClass="btn-submit" OnClick="btnSubmittt_Click" />
                <asp:Label ID="lblMessage" runat="server" CssClass="mt-3 d-block"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>