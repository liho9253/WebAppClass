<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="w_20211029.aspx.cs" Inherits="WebApp_F.w_20211029" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="國文"/>
            <br/>
            <asp:CheckBox ID="CheckBox2" runat="server" Text="英文"/>
            <br/>
            <asp:CheckBox ID="CheckBox3" runat="server" Text="數學"/>
            <br/>
            <asp:Button ID="Button2" runat="server" Text="確定" OnClick="Button2_Click" />
            <p>
                課程:<br/>
                <asp:TextBox ID="TextBox2" runat="server" Height="98px" TextMode="MultiLine"></asp:TextBox>
            </p>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>資料庫系統</asp:ListItem>
                <asp:ListItem>資料結構</asp:ListItem>
                <asp:ListItem>程式設計</asp:ListItem>
            </asp:CheckBoxList>
            <br/>
            <asp:Button ID="Button1" runat="server" Text="確定" OnClick="Button1_Click" />
            <p>
                課程如下:<br/> 
                <asp:TextBox ID="TextBox1" runat="server" Height="98px" TextMode="MultiLine"></asp:TextBox>
            </p> 

            <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                Checked="True" GroupName="Sex" Text="男" oncheckedchanged="RadioButton1_CheckedChanged"/>
            <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" GroupName="Sex" Text="女" oncheckedchanged="RadioButton2_CheckedChanged"/>
            <br/>
            <p>
                性別:
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </p>

            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True"
                 onselectedindexchanged="RadioButtonList1_onselectedindexchanged" >
                <asp:ListItem>A型</asp:ListItem>
                <asp:ListItem>B型</asp:ListItem>
                <asp:ListItem>AB型</asp:ListItem>
                <asp:ListItem>O型</asp:ListItem>
            </asp:RadioButtonList>
            <br/>
            <p>
                血型: 
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            </p>

            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" >
                <asp:ListItem>籃球</asp:ListItem>
                <asp:ListItem>排球</asp:ListItem>
                <asp:ListItem>桌球</asp:ListItem>
            </asp:DropDownList>
            <br/>
            <p>
                課程:<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
