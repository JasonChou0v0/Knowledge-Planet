<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uploadfile.aspx.cs" Inherits="KnowledgePlanet.User.uploadfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Book</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Add Book</h1>

            <div>
                <label for="txtTitle">Title:</label>
                <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
            </div>

            <div>
                <label for="txtDescription">Description:</label>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>

            <div>
                <label for="fuThumbnail">Thumbnail:</label>
                <asp:FileUpload ID="fuThumbnail" runat="server" />
            </div>

            <div>
                <label for="fuFile">File:</label>
                <asp:FileUpload ID="fuFile" runat="server" />
            </div>

            <div>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </form>
</body>
</html>
