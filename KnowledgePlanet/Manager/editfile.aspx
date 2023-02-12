<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editfile.aspx.cs" Inherits="KnowledgePlanet.Manager.editfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../style/css/table.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BookId" DataSourceID="Database" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="BookId" HeaderText="编号" ReadOnly="True" SortExpression="BookId" InsertVisible="False" />
                    <asp:BoundField DataField="Title" HeaderText="标题" SortExpression="Title" />
                    <asp:BoundField DataField="Description" HeaderText="描述" SortExpression="Description" />
                    <asp:BoundField DataField="ImageUrl" HeaderText="缩略图" SortExpression="ImageUrl" />
                    <asp:BoundField DataField="DownloadUrl" HeaderText="文件" SortExpression="DownloadUrl" />
                    
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="Database" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" DeleteCommand="DELETE FROM [Books] WHERE [BookId] = @original_BookId AND [Title] = @original_Title AND [Description] = @original_Description AND [ImageUrl] = @original_ImageUrl AND [DownloadUrl] = @original_DownloadUrl" InsertCommand="INSERT INTO [Books] ([Title], [Description], [ImageUrl], [DownloadUrl]) VALUES (@Title, @Description, @ImageUrl, @DownloadUrl)" SelectCommand="SELECT * FROM [Books]" UpdateCommand="UPDATE [Books] SET [Title] = @Title, [Description] = @Description, [ImageUrl] = @ImageUrl, [DownloadUrl] = @DownloadUrl WHERE [BookId] = @original_BookId AND [Title] = @original_Title AND [Description] = @original_Description AND [ImageUrl] = @original_ImageUrl AND [DownloadUrl] = @original_DownloadUrl" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_BookId" Type="Int32" />
                    <asp:Parameter Name="original_Title" Type="String" />
                    <asp:Parameter Name="original_Description" Type="String" />
                    <asp:Parameter Name="original_ImageUrl" Type="String" />
                    <asp:Parameter Name="original_DownloadUrl" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="ImageUrl" Type="String" />
                    <asp:Parameter Name="DownloadUrl" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="ImageUrl" Type="String" />
                    <asp:Parameter Name="DownloadUrl" Type="String" />
                    <asp:Parameter Name="original_BookId" Type="Int32" />
                    <asp:Parameter Name="original_Title" Type="String" />
                    <asp:Parameter Name="original_Description" Type="String" />
                    <asp:Parameter Name="original_ImageUrl" Type="String" />
                    <asp:Parameter Name="original_DownloadUrl" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
