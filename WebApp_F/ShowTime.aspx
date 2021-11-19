<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowTime.aspx.cs" Inherits="WebApp_F.ShowTime" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btn_showTime" runat="server" Text="顯示時間" Height="300px" Width="200px" OnClick="btn_showTime_Click" />
        </div>
    </form>
</body>
</html>
