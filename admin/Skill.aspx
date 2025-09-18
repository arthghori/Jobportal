<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Skill.aspx.cs" Inherits="job_portal.admin.Skill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
    #btnSkill{
        border-radius:5px;
       
    }
    #btnSkill:hover{
         cursor:pointer;
         background-color:#059669;
    }
    .table{
        width: 724px;
        height: 300px;
    }
    .auto-style1 {
        width: 439px;
    }
    .textbox{
        border-radius:5px;
    }
    . table table-bordered{
        width: 620px;
        height: 284px;
    }
    </style>
</head>
<body>
    <form id="Skill" runat="server">
                       <div>
        <h2  style="font-family:Verdana,Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold;margin-left:400px">
            <br />Skills</h2>
                    <asp:TextBox ID="txtSearch" runat="server" Height="29px" Width="475px" style="margin-left:400px" CssClass="textbox"></asp:TextBox>
                    <asp:Button ID="btnSkill" runat="server" Text="Add New" BackColor="#059669" />
                    <br />
                    <br />

         </div>
    <table class="table table-bordered"  style="margin-left:400px;margin-right:400px" align="center">
        <tr>
            <td class="auto-style1">Skill</td>
            <td>Action</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="btnEdit1" runat="server" Text="Edit"/>
                <asp:Button ID="tbnDelete2" runat="server" Text="Delete"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>

