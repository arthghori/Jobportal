<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employer.aspx.cs" Inherits="job_portal.job_seeker.Employer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <script src="Bootstrap/js/bootstrap.bundle.min.js"></script>
    <style type="text/css">
        .auto-style21 {
            width: 241px;
            text-align: center;
        }
        #btnSearch{
              border-radius:5px;
        }
        #btnSearch{
             color:antiquewhite;
             cursor:pointer;
             background-color:#059669;
        }
        .auto-style30 {
            width: 241px;
            height: 4px;
        }
        .auto-style40 {
            width: 364px;
            text-align: center;
        }
        .auto-style41 {
            width: 364px;
            height: 4px;
        }
        .auto-style44 {
            width: 318px;
            text-align: center;
        }
        .auto-style45 {
            width: 318px;
            height: 4px;
        }
        .auto-style46 {
            width: 355px;
            text-align: center;
        }
        .auto-style47 {
            width: 355px;
            height: 4px;
        }
        .auto-style48 {
            width: 408px;
            text-align: center;
        }
        .auto-style49 {
            width: 408px;
            height: 4px;
        }
        .auto-style50 {
            width: 275px;
            text-align: center;
        }
        .auto-style51 {
            width: 275px;
            height: 4px;
        }
        .auto-style52 {
            width: 325px;
            text-align: center;
        }
        .auto-style53 {
            width: 325px;
            height: 4px;
        }
        .auto-style54 {
            width: 322px;
            text-align: center;
        }
        .auto-style55 {
            width: 322px;
            height: 4px;
        }
        .auto-style56 {
            width: 368px;
            text-align: center;
        }
        .auto-style57 {
            width: 368px;
            height: 4px;
        }
        .auto-style58 {
            width: 389px;
            text-align: center;
        }
        .auto-style59 {
            width: 389px;
            height: 4px;
        }
         .textbox{
     border-radius:5px;
 }
    </style>
</head>
<body style="height: 190px; width: 1363px">
    <form id="Employer" runat="server">
       
        <div class="container mt-5">
        <h2  style="font-family:Verdana,Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold;margin-left:40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br /> Company</h2><br />
         
          
           <asp:TextBox ID="txtSearch" runat="server" Height="29px" Width="475px" style="margin-left:40px" placeholder="Search.." CssClass="textbox"></asp:TextBox>
           <asp:Button ID="btnSearch" runat="server" Text="Search" Height="36px" Width="81px"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    <br />
    <table class="table table-bordered table-striped" style="margin-left:70px;margin-right:70px">
        <tr>
            <td class="auto-style50">Company
                <br />
                name</td>
            <td class="auto-style21">Username</td>
            <td class="auto-style48">Email</td>
            <td class="auto-style52">Contact<br />
                number</td>
            <td class="auto-style54">Website</td>
            <td class="auto-style54">Industry Type</td>
            <td class="auto-style56">Address</td>
            <td class="auto-style58">Location</td>
            <td class="auto-style44">Description</td>
            <td class="auto-style46">Company<br />
                logo</td>
            <td class="auto-style40">Action</td>
        </tr>
        <tr>
            <td class="auto-style51"></td>
            <td class="auto-style30"></td>
            <td class="auto-style49"></td>
            <td class="auto-style53"></td>
            <td class="auto-style55"></td>
            <td class="auto-style55"></td>
            <td class="auto-style57"></td>
            <td class="auto-style59"></td>
            <td class="auto-style45"></td>
            <td class="auto-style47"></td>
            <td class="auto-style41">
                <asp:Button ID="btnEdit" runat="server" Height="27px" Text="Edit" Width="60px" />
                <br />
                <asp:Button ID="btnDelete2" runat="server" Text="Delete" />
            </td>
        </tr>
        <tr>
            <td class="auto-style51">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style53">&nbsp;</td>
            <td class="auto-style55">&nbsp;</td>
            <td class="auto-style55">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
            <td class="auto-style59">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style41">
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style51">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style53">&nbsp;</td>
            <td class="auto-style55">&nbsp;</td>
            <td class="auto-style55">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
            <td class="auto-style59">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style41">
                <br />
                <br />
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>

