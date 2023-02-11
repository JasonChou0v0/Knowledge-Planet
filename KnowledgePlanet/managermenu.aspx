

<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="managermenu.aspx.cs" Inherits="KnowledgePlanet.managermenu" Title="欢迎使用学生成绩管理系统" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 55px">
        <tr>
            <td colspan="2" style="height: 21px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="隶书" Font-Size="14pt"
                    ForeColor="#CC9966" Width="337px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 30%; height: 400px; background-color: aliceblue">
                <asp:TreeView ID="TreeView1" runat="server" Font-Bold="True" Font-Names="仿宋_GB2312"
                    Font-Size="11pt">
                    <Nodes>
                        <asp:TreeNode Text="用户信息管理" Value="用户信息管理" NavigateUrl="~/dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode NavigateUrl="~/Manager/adduser.aspx" Target="Iframe1" Text="添加用户信息" Value="添加用户信息">
                            </asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Manager/edituser.aspx" Target="Iframe1" Text="编辑用户信息" Value="编辑用户信息">
                            </asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="课程信息管理" Value="文件信息管理" NavigateUrl="~/dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode NavigateUrl="~/Manager/addfile.aspx" Target="Iframe1" Text="添加文件信息" Value="添加文件信息">
                            </asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Manager/editfile.aspx" Target="Iframe1" Text="编辑文件信息" Value="编辑文件信息"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="管理员信息管理" Value="管理员信息管理" NavigateUrl="~/dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode Text="添加管理员信息" Value="添加管理员信息" Target="Iframe1" NavigateUrl="~/Manager/addmanager.aspx"></asp:TreeNode>
                            <asp:TreeNode Text="编辑管理员信息" Value="编辑管理员信息" Target="Iframe1" NavigateUrl="~/Manager/editmanager.aspx"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="我的密码管理" Value="我的密码管理" NavigateUrl="~/dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode Text="更改我的密码" Value="更改我的密码" Target="Iframe1" NavigateUrl="~/Manager/updatemanagerpass.aspx"></asp:TreeNode>
                        </asp:TreeNode>
                    </Nodes>
                </asp:TreeView>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="11pt" ForeColor="#009900"
                    NavigateUrl="~/main.html" Target="_self">退出本系统</asp:HyperLink></td>
            <td style="width: 99%; height: 400px">
                <iframe id="Iframe1" name="Iframe1" src="dispinfo.aspx?info=欢迎使用本系统" style="width: 99%;
                    height: 99%"></iframe>
            </td>
        </tr>
    </table>
</asp:Content>

