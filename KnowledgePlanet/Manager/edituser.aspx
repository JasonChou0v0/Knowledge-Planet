<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edituser.aspx.cs" Inherits="KnowledgePlanet.Manager.edituser" %>

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

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="uid" DataSourceID="Database" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="uid" HeaderText="uid" ReadOnly="True" SortExpression="uid" />
                    <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
                    <asp:BoundField DataField="upwd" HeaderText="upwd" SortExpression="upwd" />
                    <asp:BoundField DataField="ulevel" HeaderText="ulevel" SortExpression="ulevel" />
                    <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
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
            <asp:SqlDataSource ID="Database" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" DeleteCommand="DELETE FROM [T_UserData] WHERE [uid] = @uid" InsertCommand="INSERT INTO [T_UserData] ([uid], [uname], [upwd], [ulevel], [state]) VALUES (@uid, @uname, @upwd, @ulevel, @state)" SelectCommand="SELECT * FROM [T_UserData] WHERE ([ulevel] = @ulevel) ORDER BY [uid]" UpdateCommand="UPDATE [T_UserData] SET [uname] = @uname, [upwd] = @upwd, [ulevel] = @ulevel, [state] = @state WHERE [uid] = @uid">
                <DeleteParameters>
                    <asp:Parameter Name="uid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="uid" Type="Int32" />
                    <asp:Parameter Name="uname" Type="String" />
                    <asp:Parameter Name="upwd" Type="String" />
                    <asp:Parameter Name="ulevel" Type="Int32" />
                    <asp:Parameter Name="state" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="ulevel" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="uname" Type="String" />
                    <asp:Parameter Name="upwd" Type="String" />
                    <asp:Parameter Name="ulevel" Type="Int32" />
                    <asp:Parameter Name="state" Type="Int32" />
                    <asp:Parameter Name="uid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
