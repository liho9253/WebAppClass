<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="w_20211217_2.aspx.cs" Inherits="WebApp_F.w_20211217_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="sds_Users" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([Id], [Name], [Birthday]) VALUES (@Id, @Name, @Birthday)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [Name] = @Name, [Birthday] = @Birthday WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Birthday" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Birthday" Type="DateTime" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="gv_show" runat="server" AllowPaging="True" AllowSorting="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" 
            BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="sds_Users" ForeColor="Black" 
            GridLines="Vertical" PageSize="6">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:TemplateField HeaderText="Name" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:DropDownList ID="dd1_Name" runat="server" SelectedValue='<%# Bind("Name") %>'>
                            <asp:ListItem>大頭</asp:ListItem>
                            <asp:ListItem>鐵頭</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" 
                            OnClientClick ="return confirm('確認要刪除該筆資料');"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerSettings FirstPageText="第一頁" LastPageText="最後一頁" Mode="NextPreviousFirstLast" NextPageText="下一頁" PreviousPageText="上一頁" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:DropDownList ID="dd1_sort" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dd1_sort_SelectedIndexChanged">
            <asp:ListItem>Id</asp:ListItem>
            <asp:ListItem>Name</asp:ListItem>
            <asp:ListItem>Birthday</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="lb_Msg" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
