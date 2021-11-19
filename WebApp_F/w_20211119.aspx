<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="w_20211119.aspx.cs" Inherits="WebApp_F.w_20211119" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="按鍵1" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="按鍵2" OnClick="Button2_Click" />
            <asp:Panel ID="Panel1" runat="server">
                文字和文字框1被包住Panel<br/>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                文字和文字框2被包住Panel<br/>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </asp:Panel>
            <br/>
            <asp:Menu ID="mu_Tag" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" OnMenuItemClick="mu_Tag_MenuItemClick" Orientation="Horizontal" StaticSubMenuIndent="10px">
                <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#B5C7DE" />
                <DynamicSelectedStyle BackColor="#507CD1" />
                <Items>
                    <asp:MenuItem Text="第一頁籤" Value="0"></asp:MenuItem>
                    <asp:MenuItem Selected="True" Text="第二頁籤" Value="1"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#507CD1" />
            </asp:Menu>
            <asp:Panel ID="Panel3" runat="server"> 
                <asp:MultiView ID="mv_Show" runat="server">
                    <asp:View ID="View1" runat="server">
                        點選制下個頁籤內<br/>
                        我是第一個頁籤內容架構內頁籤內<br/>
                        <asp:Button ID="Button3" runat="server" Text="下一頁" Height="25px" OnClick="Button3_Click" style="margin-top: 0px" />
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        點選制下個頁籤內<br/>
                        我是第二個頁籤內容架構內頁籤內<br/>
                        <asp:Button ID="Button4" runat="server" Text="回第一頁" OnClick="Button4_Click" />
                    </asp:View>
                </asp:MultiView>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
