<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="w_20211022.aspx.cs" Inherits="WebApp_F.w_20211022" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="輸入:"></asp:Label><br/>
            <asp:Button ID="Button1" runat="server" Text="傳送" PostBackUrl="w_20211022_2.aspx" /><br />

            <asp:TextBox ID="TextBox2" runat="server" Text="" AutoPostBack="True"></asp:TextBox><br/>
            <asp:Label ID="Label2" runat="server" Text="" ></asp:Label>
        </div>
    </form>
</body>
</html>
