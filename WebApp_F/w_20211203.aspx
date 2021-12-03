<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="w_20211203.aspx.cs" Inherits="WebApp_F.w_20211203" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>        
            <asp:Label runat="server" Text="請輸入偶數"></asp:Label>
            <asp:TextBox ID="tb_Number" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="cvr_id" runat="server" ErrorMessage="輸入錯誤" ControlToValidate="tb_Number" 
                ForeColor="Maroon" OnServerValidate="cvr_id_ServerValidate"></asp:CustomValidator>
            <br />
            <asp:Button ID="btn_Submit5" runat="server" Text="送出" OnClick="btn_Submit5_Click" />
            <br/>
            <asp:Label ID="lb_Msg5" runat="server" Text=""></asp:Label>
            </div>
    </form>
</body>
</html>
