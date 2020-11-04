<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DrawingList.aspx.cs" Inherits="Drawing_Search_System_Sample.WebForm1" %>

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
        <p style="height: 33px; width: 141px">
            ログイン企業
        <div style="margin-left: 240px">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            
        </div>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>文字列検索</asp:ListItem>
            <asp:ListItem>ファイル名検索</asp:ListItem>
            <asp:ListItem>備考検索</asp:ListItem>
        </asp:RadioButtonList>
        </p>
        <div>
            <asp:Label ID="Label1" runat="server" Text="検索ワード"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </div>
        <div style="margin-left: 280px">
        </div>
        <div style="margin-left: 10px">
            <asp:ListBox ID="ListBox1" runat="server">
                <asp:ListItem>カテゴリ</asp:ListItem>
            </asp:ListBox>
        </div>
        <div style="margin-left: 240px">
            <asp:Table ID="Table2" runat="server" Height="16px" Width="1004px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">No</asp:TableCell>
                    <asp:TableCell runat="server">検索文字列</asp:TableCell>
                    <asp:TableCell runat="server">ファイル名</asp:TableCell>
                    <asp:TableCell runat="server">備考</asp:TableCell>
                    <asp:TableCell runat="server">ファイル</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
