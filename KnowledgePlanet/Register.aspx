<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="KnowledgePlanet.Register" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Login and Register</title>
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
<form id="register" runat="server">
<h2>Register</h2>
<asp:TextBox ID="registerUsername" runat="server" placeholder="Username"></asp:TextBox>
<asp:TextBox ID="registerPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
<asp:Button ID="registerButton" runat="server" Text="Register" OnClick="RegisterButton_Click" />
<asp:Label ID="registerErrorLabel" runat="server" CssClass="error"></asp:Label>
<asp:HyperLink ID="loginLink" runat="server" NavigateUrl="../Login.aspx" Text="已有账号? 前往登录"></asp:HyperLink>
</form>
  </div>
</body>
</html>
