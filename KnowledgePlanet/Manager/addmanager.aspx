<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addmanager.aspx.cs" Inherits="KnowledgePlanet.Manager.addmanager" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="link.css" rel="stylesheet" type="text/css" />
    <link href="../link.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form2" runat="server">
    <div>
        <table align="center" style="background-color: #99ccff">
            <tr>
                <td colspan="2" style="height: 44px; text-align: center;">
                    <strong><span style="font-size: 14pt; color: #ff3333; font-family: 仿宋_GB2312">添加新的管理员</span></strong></td>
            </tr>
            <tr>
                <td style="width: 110px; text-align: right;">
                    <strong><span style="font-size: 10pt; color: #3300ff">账 号</span></strong></td>
                <td style="width: 236px">
                    <asp:TextBox ID="txtUsername" runat="server" Width="120px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 110px; text-align: right;">
                    <strong><span style="font-size: 10pt; color: #3300ff">密 码</span></strong></td>
                <td style="width: 236px">
                    <asp:TextBox ID="txtPassword" runat="server" Width="120px"></asp:TextBox>&nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 110px; height: 22px; text-align: right;">
                    <strong><span style="font-size: 10pt; color: #3300ff">状 态</span></strong></td>
                <td style="width: 236px; height: 22px;">
                    <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" Font-Size="10pt"
                        GroupName="state" Text="正常" value="1"/>
                    &nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" Font-Size="10pt"
                        GroupName="state" Text="禁止" value="0"/></td>
            </tr>
            <tr>
                <td colspan="2" style="height: 37px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />&nbsp;&nbsp; 
                    <input type="reset" runat="server" Text="重置" id="Reset1" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
