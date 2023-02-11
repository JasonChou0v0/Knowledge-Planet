<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="KnowledgePlanet.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Login</title>
  <style type="text/css">
    .form-container {
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }
    .form-container form {
      display: flex;
      flex-direction: column;
      align-items: center;
      background-color: white;
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .form-container form input[type="text"],
    .form-container form input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 20px;
      font-size: 16px;
      border-radius: 5px;
      border: none;
      box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
    }
    .form-container form input[type="submit"] {
      width: 100%;
      padding: 10px;
      font-size: 16px;
      background-color: blue;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    .form-container form .error {
      color: red;
      margin-bottom: 20px;
    }
  </style>
</head>
<body>
  <div class="form-container">
    <form id="login" runat="server">
      <h2>Login</h2>
      <asp:TextBox ID="txtUserName" runat="server" placeholder="用户名"></asp:TextBox>
      <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="密码"></asp:TextBox>
      <asp:TextBox ID="TextBox3" runat="server" placeholder="验证码"></asp:TextBox>
      <asp:Button ID="MyButton" runat="server" Text="Click Me" OnClick="MyButton_Click" style="display: none;"></asp:Button>
      <asp:Label ID="MyLabel" runat="server" Text="Click Me" onclick="document.getElementById('MyButton').click();"></asp:Label>
      <asp:Button ID="loginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />
      <asp:Label ID="errorLabel" runat="server" CssClass="error"></asp:Label>
      <asp:HyperLink ID="registerLink" runat="server" NavigateUrl="../Register.aspx" Text="新用户? 前往创建账户"></asp:HyperLink>
</form>
  </div>
</body>
</html>
