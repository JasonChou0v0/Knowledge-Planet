<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookDisplay.aspx.cs" Inherits="KnowledgePlanet.User.BookDisplay" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>资料展示</title>
    <style type="text/css">
        .book-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            grid-gap: 10px;
        }

        .book-card {
            background-color: #fff;
            box-shadow: 2px 2px 10px #ccc;
            padding: 20px;
            text-align: center;
        }

        .book-title {
            font-weight: bold;
            margin-bottom: 10px;
        }

        .book-description {
            text-align: left;
            margin-bottom: 10px;
        }

        .book-image {
            width: 200px;
            height: 300px;
            border-radius: 10px;
        }

        .book-tags {
            display: inline-block;
            background-color: #ccc;
            padding: 5px 10px;
            border-radius: 10px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="book-grid">
            <asp:Repeater ID="rptBooks" runat="server">
                <ItemTemplate>
                    <div class="book-card">
                        <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("Title") %>' class="book-image"/>
                        <div class="book-title"><a href='<%# Eval("DownloadUrl") %>' download><%# Eval("Title") %></a></div>
                        <div class="book-description"><%# Eval("Description") %></div>
                       
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
