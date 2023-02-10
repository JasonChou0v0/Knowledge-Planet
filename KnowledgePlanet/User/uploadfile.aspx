<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uploadfile.aspx.cs" Inherits="KnowledgePlanet.User.uploadfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <input id="UpLoad" type="file" runat="server" />
        <asp:Button runat="server" Text="上传" ID="btnUpLoad" OnClick="btnUpLoad_Click" />
        </div>
    </form>
</body>
</html>
