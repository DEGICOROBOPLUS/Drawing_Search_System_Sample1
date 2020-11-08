<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DrawingList.aspx.cs" Inherits="Drawing_Search_System_Sample.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>図面検索システム</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="z-index: 1; left: 24px; top: 42px; position: absolute; height: 32px; width: 943px">
            ログイン企業
        <div style="margin-left: 240px; z-index: 1; left: -140px; top: -3px; position: absolute; height: 26px; width: 211px;">
            <asp:TextBox ID="TextBox1" runat="server">企業名表示</asp:TextBox>
            
        </div>
        </div>
        <p style="height: 33px; width: 141px">
            
        <asp:RadioButtonList ID="RadioButtonList1" RepeatDirection="Horizontal" RepeatColumns="3" runat="server" style="z-index: 1; left: 762px; top: 91px; position: absolute; height: 27px; width: 429px">
            <asp:ListItem Selected="True">文字列検索</asp:ListItem>
            <asp:ListItem>ファイル名検索</asp:ListItem>
            <asp:ListItem>備考検索</asp:ListItem>
        </asp:RadioButtonList>
            <asp:Button ID="Button3" runat="server" style="z-index: 1; left: 921px; top: 41px; position: absolute; height: 32px; width: 198px" Text="ファイルアップロード" />
        </p>
        <div style="z-index: 1; left: 102px; top: 99px; position: absolute; height: 21px; width: 1193px">
            <asp:Label ID="Label1" runat="server" Text="検索ワード"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Width="513px"></asp:TextBox>
        </div>
        <div style="margin-left: 280px">
        </div>
        <div style="margin-left: 10px; z-index: 1; left: 14px; top: 168px; position: absolute; height: 170px; width: 1183px;">
            <asp:ListBox ID="ListBox1" runat="server" Height="170px" Width="182px">
                <asp:ListItem>指定しない</asp:ListItem>
                <asp:ListItem>カテゴリ1</asp:ListItem>
                <asp:ListItem Selected="True">建物図面</asp:ListItem>
                <asp:ListItem>カテゴリ2</asp:ListItem>
                <asp:ListItem>カテゴリ3</asp:ListItem>
            </asp:ListBox>
        <div style="margin-left: 240px; z-index: 1; left: -40px; top: 4px; position: absolute; height: 83px; width: 1016px;">
        
            <asp:Table ID="Table2" runat="server" Height="16px" Width="970px" GridLines="Both">
                <asp:TableHeaderRow id="Table2HeaderRow" 
                    BackColor="LightBlue"
                    runat="server">
                <asp:TableHeaderCell 
                    Scope="Column" 
                    Text="No" />
                <asp:TableHeaderCell  
                    Scope="Column" 
                    Text="検索文字列" />
                <asp:TableHeaderCell 
                    Scope="Column" 
                    Text="ファイル名" />
                <asp:TableHeaderCell 
                    Scope="Column" 
                    Text="備考" />
                 <asp:TableHeaderCell 
                    Scope="Column" 
                    Text="" />
                </asp:TableHeaderRow>  

                
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" Width="30px">1</asp:TableCell>
                    <asp:TableCell runat="server" TabIndex="1" Width="200px">〇</asp:TableCell>
                    <asp:TableCell runat="server" Width="350px">○○図面.pdf</asp:TableCell>
                    <asp:TableCell runat="server" Width="250px"></asp:TableCell>
                    <asp:TableCell Width="50px">
                        <asp:Button ID="btn" runat="server" Text="PDF表示" Font-Size="Medium" />
                    
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">2</asp:TableCell>
                    <asp:TableCell runat="server">△</asp:TableCell>
                    <asp:TableCell runat="server">△△図面.pdf</asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell Width="50px">
                        <asp:Button ID="Button1" runat="server" Text="PDF表示" Font-Size="Medium" />
                    
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">3</asp:TableCell>
                    <asp:TableCell runat="server">×</asp:TableCell>
                    <asp:TableCell runat="server">××図面.pdf</asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell Width="50px">
                        <asp:Button ID="Button2" runat="server" Text="PDF表示" Font-Size="Medium" />
                    
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                </asp:TableRow>
            </asp:Table>
            </div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="AccessDataSource1" EmptyDataText="表示するデータ レコードがありません。" style="z-index: 1; left: 76px; top: 401px; position: absolute; height: 115px; width: 480px">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="企業ID" HeaderText="企業ID" SortExpression="企業ID" />
                <asp:BoundField DataField="カテゴリ番号" HeaderText="カテゴリ番号" SortExpression="カテゴリ番号" />
                <asp:BoundField DataField="検索文字列" HeaderText="検索文字列" SortExpression="検索文字列" />
                <asp:BoundField DataField="ファイル名" HeaderText="ファイル名" SortExpression="ファイル名" />
                <asp:BoundField DataField="PDFファイル" HeaderText="PDFファイル" SortExpression="PDFファイル" />
                <asp:BoundField DataField="登録日" HeaderText="登録日" SortExpression="登録日" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="C:\Users\user\Documents\Database1.accdb" DeleteCommand="DELETE FROM `図面データ` WHERE `ID` = ?" InsertCommand="INSERT INTO `図面データ` (`ID`, `企業ID`, `カテゴリ番号`, `検索文字列`, `ファイル名`, `PDFファイル`, `登録日`) VALUES (?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `ID`, `企業ID`, `カテゴリ番号`, `検索文字列`, `ファイル名`, `PDFファイル`, `登録日` FROM `図面データ`" UpdateCommand="UPDATE `図面データ` SET `企業ID` = ?, `カテゴリ番号` = ?, `検索文字列` = ?, `ファイル名` = ?, `PDFファイル` = ?, `登録日` = ? WHERE `ID` = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="企業ID" Type="Int32" />
                <asp:Parameter Name="カテゴリ番号" Type="Int32" />
                <asp:Parameter Name="検索文字列" Type="String" />
                <asp:Parameter Name="ファイル名" Type="String" />
                <asp:Parameter Name="PDFファイル" Type="String" />
                <asp:Parameter Name="登録日" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="企業ID" Type="Int32" />
                <asp:Parameter Name="カテゴリ番号" Type="Int32" />
                <asp:Parameter Name="検索文字列" Type="String" />
                <asp:Parameter Name="ファイル名" Type="String" />
                <asp:Parameter Name="PDFファイル" Type="String" />
                <asp:Parameter Name="登録日" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    </form>
</body>
</html>

