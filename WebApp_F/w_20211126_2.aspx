<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="w_20211126_2.aspx.cs" Inherits="WebApp_F.w_20211126_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="tb_t1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_id" runat="server" ErrorMessage="需要輸入" 
                ForeColor="Maroon" ControlToValidate="tb_t1"></asp:RequiredFieldValidator>
            <br/>
            <asp:Button ID="btn_Sumbit1" runat="server" Text="送出" OnClick="btn_Sumbit1_Click" />
            <br/>
            <asp:Label ID="lb_Mag1" runat="server" Text=""></asp:Label>
            <br/>


            <asp:TextBox ID="tb_Mail" runat="server"></asp:TextBox>
            <br/>
            <asp:TextBox ID="tb_MailCheck" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="cv_id" runat="server" ErrorMessage="輸入不同" 
                ControlToCompare="tb_MailCheck" ControlToValidate="tb_Mail" 
                ForeColor="Maroon"></asp:CompareValidator>
            <br/>
            <asp:Button ID="btn_Submit2" runat="server" Text="送出" OnClick="btn_Submit2_Click" />
            <br/>
            <asp:Label ID="lb_Msg2" runat="server" Text=""></asp:Label>
        </div><br/>

        <asp:Label runat="server" Text="落塵量(0~3.5間)"></asp:Label>
        <asp:TextBox ID="tb_Num" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="rv_id" runat="server" ErrorMessage="數字輸入有誤" 
            ControlToValidate="tb_Num" MaximumValue="3.5" MinimumValue="0" 
            Type="Double" ForeColor="Maroon"></asp:RangeValidator>
        <br/>
        <asp:Button ID="but_Submit3" runat="server" Text="送出" OnClick="but_Submit3_Click" />
        <br/>
        <asp:Label ID="lb_Msg3" runat="server" Text=""></asp:Label>
        <br/>

        <asp:TextBox ID="tb_t4" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="rev_id" runat="server" ErrorMessage="不符合格式" 
            ControlToValidate="tb_t4" ValidationExpression="^09\d{2}-\d{3}-\d{3}$" ForeColor="Maroon"></asp:RegularExpressionValidator>
        <br/>
        <asp:Button ID="btn_Submit4" runat="server" Text="送出" OnClick="btn_Submit4_Click" />
        <br/>
        <asp:Label ID="lb_Msg4" runat="server" Text=""></asp:Label>
        <br/>


    </form>
</body>
</html>
