<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addmanager.aspx.cs" Inherits="KnowledgePlanet.Manager.addmanager" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>无标题页</title>
    <link href="link.css" rel="stylesheet" type="text/css" />
<<<<<<< HEAD
    <link href="../style/css/link.css" rel="stylesheet" type="text/css" />
=======
    <link href="../link.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style4 {
            width: 236px;
            height: 60px;
        }
        .auto-style5 {
            height: 104px;
        }
        .auto-style7 {
            width: 236px;
            height: 59px;
        }
        .auto-style8 {
            height: 75px;
        }
        .auto-style9 {
            width: 233px;
            height: 60px;
        }
        .auto-style10 {
            width: 233px;
            height: 59px;
        }
    </style>
>>>>>>> 0096d1e240f9911d4dad510703a986a4a74ed1fe
</head>

<body>
    <form id="form2" runat="server">
<<<<<<< HEAD
        <div class="form-table-container">
            <table class="form-table">
                <tr>
                    <td colspan="2" class="form-title">
                        <strong>添加新的管理员</strong>
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
=======
    <div>
        <table align="center" style="background-color: #99ccff" width="100%" height="380px">
            <tr>
                <td colspan="2" style="text-align: center;" class="auto-style5">
                    <strong><span style="font-size: 15pt; color: #ff3333; font-family: 仿宋_GB2312">添加新的管理员</span></strong></td>
            </tr>
            <tr>
                <td style="text-align: right;" class="auto-style9">
                    <strong><span style="font-size: 10pt; color: #3300ff">账 号</span></strong></td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtUsername" runat="server" Width="427px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right;" class="auto-style9">
                    <strong><span style="font-size: 10pt; color: #3300ff">密 码</span></strong></td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPassword" runat="server" Width="426px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right;" class="auto-style10">
                    <strong><span style="font-size: 10pt; color: #3300ff">状 态</span></strong></td>
                <td class="auto-style7">
                    <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" Font-Size="10pt"
                        GroupName="state" Text="正常" value="1"/>
                    &nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" Font-Size="10pt"
                        GroupName="state" Text="禁止" value="0"/></td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style8">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
                    <input type="reset" runat="server" Text="重置" id="Reset1" /></td>
            </tr>
        </table>
    
    </div>
>>>>>>> 0096d1e240f9911d4dad510703a986a4a74ed1fe
    </form>
</body>

</html>
