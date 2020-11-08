<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Drawing_Search_System_Sample.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>図面検索システム</title>
    <style type="text/css">
        #form1 {
            height: 261px;
        }
    </style>
</head>

<body style="height: 320px; z-index: 1; left: 0px; top: 0px; position: absolute; width: 1465px">
    <form id="form1" runat="server">
        <div>
        <p style="margin-left: 560px; height: 80px; width: 201px; z-index: 1; left: 23px; top: 17px; position: absolute;">
            <asp:Label ID="Label3" runat="server" Text="図面検索システム" Font-Size="XX-Large" style="z-index: 1; left: -170px; top: 19px; position: absolute; height: 47px; width: 351px"></asp:Label>
        </p>
        </div>
        <p style="margin-left: 520px; width: 1172px; z-index: 1; left: -395px; top: 56px; position: absolute; height: 250px; margin-top: 10px;">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ログイン" style="z-index: 1; left: 495px; top: 203px; position: absolute; height: 38px; width: 119px" />
            <asp:Label ID="Label1" runat="server" Text="企業ID" style="z-index: 1; left: 196px; top: 123px; position: absolute; width: 80px"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 670px; top: 121px; position: absolute"></asp:TextBox>
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 290px; top: 121px; position: absolute"></asp:TextBox>
        </p>
        <p style="margin-left: 280px">
            <asp:Label ID="Label2" runat="server" Text="パスワード" style="z-index: 1; left: 661px; top: 189px; position: absolute; width: 159px;"></asp:Label>
        </p>
    </form>
</body>
</html>
