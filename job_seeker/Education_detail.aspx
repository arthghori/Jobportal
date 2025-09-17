<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Education_detail.aspx.cs" Inherits="job_portal.job_seeker.Education_detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Education Details</title>
    <link rel="icon" type="image/x-icon" href="Images/Static/white_logo.png" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 29px;
        }

        #btnSubmittt
        {
            border-radius:10px;
            background-color:#059669;
            color:white;
            font-size:15px;
            width:70%;
            text-align:center;
            margin-left:50px;
        }

        #btnSubmittt:hover
        {
            font-size:18px;
            font-weight:bolder;
        }
        .auto-style4 {
            height: 48px;
        }
    </style>
</head>
<body>
    <form id="Education_detail" runat="server">
        <div style="box-shadow : 5px 5px 15px grey;width:350px;height:450px;border:1px solid black;margin-left:580px;">

            <table class="auto-style1">
                <tr>
                    <td style="font-weight: bolder;font-size:30px;color:#059669;">Add education details<br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bolder">University</td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlUniversity" runat="server" Width="95%">
                            <asp:ListItem>---Select University</asp:ListItem>
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
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-weight: bolder">
                        <br />
                        Field</td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlField" runat="server" Width="95%">
                            <asp:ListItem>---Select Your Course</asp:ListItem>
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
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bolder">
                        <br />
                        Degree </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlDegree" runat="server" Width="95%">
                            <asp:ListItem>---Select Degree</asp:ListItem>
                           <asp:ListItem>Bachelor</asp:ListItem>
    <asp:ListItem>Master</asp:ListItem>
    <asp:ListItem>PhD</asp:ListItem>
    <asp:ListItem>Diploma</asp:ListItem>
    <asp:ListItem>Associate Degree</asp:ListItem>
    <asp:ListItem>Postgraduate Diploma</asp:ListItem>
    <asp:ListItem>Doctorate</asp:ListItem>
    <asp:ListItem>Certificate Course</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="font-weight: bolder">
                        <br />
                        Graduation Year</td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlYear" runat="server" Width="95%">
                            <asp:ListItem>---Select Year</asp:ListItem>
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
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bolder">
                        <br />
                        CGPA</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtUgpa" runat="server" TextMode="Number" Width="95%" placeholder="Enter CGPA"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtUgpa" ErrorMessage="Must be between 0 to 10" MaximumValue="10" MinimumValue="1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmittt" runat="server" Text="Submit" OnClick="btnSubmittt_Click"   />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>