<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adduser.aspx.cs" Inherits="KnowledgePlanet.Manager.adduser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="link.css" rel="stylesheet" type="text/css" />
    <link href="../link.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style5 {
            width: 200px;
            height: 60px;
        }
        .auto-style6 {
            width: 236px;
            height: 60px;
        }
        .auto-style7 {
            height: 104px;
        }
        .auto-style8 {
            height: 75px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
        <table align="center" style="background-color: #99ccff" width="100%" height="380px">
            <tr>
                <td colspan="2" style="text-align: center;" class="auto-style7">
                    <strong><span style="font-size: 15pt; color: #ff3333; font-family: 仿宋_GB2312">添加新的用户</span></strong></td>
            </tr>
            <tr>
                <td style="text-align: right;" class="auto-style5">
                    <strong><span style="font-size: 11pt; color: #3300ff">账 号</span></strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Width="408px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right;" class="auto-style5">
                    <strong><span style="font-size: 11pt; color: #3300ff">密 码</span></strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Width="408px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right;" class="auto-style5">
                    <strong><span style="font-size: 11pt; color: #3300ff">状 态</span></strong></td>
                <td class="auto-style6">
                    <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" Font-Size="11pt"
                        GroupName="state" Text="正常" />
                    &nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" Font-Size="11pt"
                        GroupName="state" Text="暂停" /></td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style8">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
                    <input type="reset" runat="server" Text="重置" id="Reset1" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
