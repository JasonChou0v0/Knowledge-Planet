<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adduser.aspx.cs" Inherits="KnowledgePlanet.Manager.adduser" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>无标题页</title>
    <link href="link.css" rel="stylesheet" type="text/css" />
    <link href="../style/css/link.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <form id="form2" runat="server">
        <div class="form-table-container">
            <table class="form-table">
                <tr>
                    <td colspan="2" class="form-title">
                        <strong>添加新的用户</strong>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">
                        <strong>账 号</strong>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" Width="120px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">
                        <strong>密 码</strong>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" Width="120px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">
                        <strong>状 态</strong>
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="state" Text="正常" value="1"/>
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="state" Text="禁止" value="0"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="form-button">
                        <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
                        <input type="reset" runat="server" Text="重置" id="Reset1" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>

</html>
