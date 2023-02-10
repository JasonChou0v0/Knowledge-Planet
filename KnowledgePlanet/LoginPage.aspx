 <%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="KnowledgePlanet.LoginPage" Title="欢迎使用知识星球"%>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <h1 class="bigbt">用户登陆</h1>
            <div class="form-group">
                <label class="col-sm-5 control-label">账号：</label>
                   <div class="col-sm-3">
                <asp:TextBox ID="txtUserName" runat="server" class="form-control"  placeholder="账号"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
                    ErrorMessage="用户编号不能为空" Font-Bold="True" Font-Size="10pt"></asp:RequiredFieldValidator>
                    </div> 
            </div>
            <div class="form-group">
                <label class="col-sm-5 control-label">密码：</label>
                    <div class="col-sm-3">
                <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="密码不能为空" Font-Bold="True" Font-Size="10pt"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-5 control-label">验证码:</label>
                    <div class="col-sm-1">
                <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                <asp:Label ID="Label1" runat="server" Font-Size="25px" Width="60px"></asp:Label>
                    </div>
                    <div class="col-sm-1">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="看不清?" class="btn btn-primary" />
                    </div> 
            </div> 
                <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="登陆" OnClick="Button1_Click" />
                <input type ="reset" ID="Button2" class="btn btn-success" Text="重置"  />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" DeleteCommand="DELETE FROM [T_UserData] WHERE [Id] = @Id" InsertCommand="INSERT INTO [T_UserData] ([Id], [uname], [upwd], [ulevel]) VALUES (@Id, @uname, @upwd, @ulevel)" SelectCommand="SELECT * FROM [T_UserData]" UpdateCommand="UPDATE [T_UserData] SET [uname] = @uname, [upwd] = @upwd, [ulevel] = @ulevel WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="uname" Type="String" />
                    <asp:Parameter Name="upwd" Type="String" />
                    <asp:Parameter Name="ulevel" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="uname" Type="String" />
                    <asp:Parameter Name="upwd" Type="String" />
                    <asp:Parameter Name="ulevel" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
</asp:Content>

