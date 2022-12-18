<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Knowledge_Planet.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>知识星球-登录</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 353px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            width: 692px;
            height: 117px;
        }
        .auto-style4 {
            text-align: center;
            width: 692px;
            height: 126px;
        }
        .auto-style5 {
            text-align: center;
            height: 126px;
        }
        .auto-style6 {
            text-align: center;
            height: 117px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span>登陆界面</span>

            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">账号</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">密码</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Button ID="Button1" runat="server" Height="58px" Text="Button" Width="155px" OnClick="Button1_Click" />
                        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserData %>" SelectCommand="SELECT * FROM [LoginInfo]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
