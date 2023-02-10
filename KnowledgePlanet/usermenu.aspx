<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="usermenu.aspx.cs" Inherits="KnowledgePlanet.usermenu" Title="欢迎使用知识行秋" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  style="width: 100%; height: 55px">
        <tr>
            <td colspan="2" style="height: 21px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC9966" Width="337px" Font-Names="隶书" Font-Size="14pt"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 30%; height: 400px; background-color: aliceblue">
                <asp:TreeView ID="TreeView1" runat="server" Font-Bold="True" Font-Names="仿宋_GB2312"
                    Font-Size="11pt">
                    <Nodes>
                        <asp:TreeNode Text="文件管理" Value="文件管理" NavigateUrl="dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode Text="上传文件" Value="上传文件" NavigateUrl="~/User/uploadfile.aspx" Target="Iframe1"></asp:TreeNode>
                            <asp:TreeNode Text="下载文件" Value="下载文件" NavigateUrl="~/User/downloadfile.aspx" Target="Iframe1"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="信息管理" Value="信息管理" NavigateUrl="dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode Text="更改我的密码" Value="更改我的密码" NavigateUrl="~/User/updateuserpass.aspx" Target="Iframe1"></asp:TreeNode>
                        </asp:TreeNode>
                    </Nodes>
                </asp:TreeView>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="11pt" ForeColor="#009900"
                    NavigateUrl="~/HtmlPage.html" Target="_self">退出本系统</asp:HyperLink></td>
            <td style="width: 99%; height: 400px">
               <iframe name = "Iframe1" style="height:99%; width:99%" id = "Iframe1" src="dispinfo.aspx?info=欢迎使用本系统"></iframe>

            </td>
        </tr>
    </table>
</asp:Content>

