<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="usermenu.aspx.cs" Inherits="KnowledgePlanet.usermenu" Title="欢迎使用知识行秋" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%; height: 55px">
        <tr>
            <td colspan="2" style="height: 21px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC9966" Width="337px" Font-Names="隶书" Font-Size="14pt"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 13%; height: 400px; background-color: aliceblue">
                <asp:TreeView ID="TreeView1" runat="server" Font-Bold="True" Font-Names="仿宋_GB2312"
                    Font-Size="11pt" ImageSet="Simple">
                    <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                    <Nodes>

                        <asp:TreeNode Text="上传文件" Value="上传文件" NavigateUrl="~/User/uploadfile.aspx" Target="Iframe1"></asp:TreeNode>
                        <asp:TreeNode Text="下载文件" Value="下载文件" NavigateUrl="~/User/BookDisplay.aspx" Target="Iframe1"></asp:TreeNode>

                    </Nodes>
                    <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
                    <ParentNodeStyle Font-Bold="False" />
                    <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                </asp:TreeView>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="11pt" ForeColor="#009900"
                    NavigateUrl="~/main.html" Target="_self">退出本系统</asp:HyperLink></td>
            <td style="width: 99%; height: 620px">
                <iframe name="Iframe1" style="height: 99%; width: 99%; margin-left: 0px;" id="Iframe1" src="dispinfo.aspx?info=欢迎使用本系统"></iframe>

            </td>
        </tr>
    </table>
</asp:Content>

