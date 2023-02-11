<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uploadfile.aspx.cs" Inherits="KnowledgePlanet.User.uploadfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Book</title>
    <style type="text/css">
        /* 设置页面的字体和背景颜色 */
        body {
            font-family: Arial, sans-serif;
            background-color: #F5F5F5;
        }
        /* 设置 h1 的样式 */
        h1 {
            text-align: center;
            margin-top: 50px;
            color: #6D214F;
        }
        /* 设置表单的样式 */
        form {
            width: 500px;
            margin: 0 auto;
            padding: 50px;
            background-color: #FFFFFF;
            box-shadow: 0px 0px 10px #999999;
        }
        /* 设置表单内的标签的样式 */
        label {
            display: block;
            margin-bottom: 10px;
            font-size: 18px;
            color: #6D214F;
        }
        /* 设置表单内的文本框的样式 */
        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            font-size: 16px;
            border-radius: 5px;
            border: none;
            box-shadow: 0px 0px 5px #CCCCCC;
        }
        /* 设置表单内的文件上传控件的样式 */
        input[type="file"] {
            margin-bottom: 20px;
        }
        /* 设置提交按钮的样式 */
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #6D214F;
            color: #FFFFFF;
            font-size: 18px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }
    </style>
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
