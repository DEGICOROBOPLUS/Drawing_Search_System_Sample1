<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Drawing_Search_System_Sample.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p style="margin-left: 560px">
            <asp:Label ID="Label3" runat="server" Text="図面検索"></asp:Label>
        </p>
        <p style="margin-left: 280px">
            <asp:Label ID="Label1" runat="server" Text="企業ID"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="パスワード"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p style="margin-left: 520px">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ログイン" />
        </p>
    </form>
</body>
</html>
