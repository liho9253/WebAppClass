<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="w_20211217_2.aspx.cs" Inherits="WebApp_F.w_20211217_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="sds_Users" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString3 %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([Id], [Name], [Birthday]) VALUES (@Id, @Name, @Birthday)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [Name] = @Name, [Birthday] = @Birthday WHERE [Id] = @Id">
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
        <asp:GridView ID="gv_Show" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="sds_Users" ForeColor="Black" GridLines="Vertical" PageSize="2" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:TemplateField HeaderText="Name" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:DropDownList ID="dd1_Name" runat="server" SelectedValue='<%# Bind("Name") %>'>
                            <asp:ListItem>投哥</asp:ListItem>
                            <asp:ListItem>鐵哥</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerSettings FirstPageText="第一頁" LastPageText="上一頁" Mode="NextPreviousFirstLast" NextPageText="下一頁" PreviousPageText="最後一頁" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:DropDownList ID="dd1_Sort" runat="server" OnSelectedIndexChanged="dd1_Sort_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem>Id</asp:ListItem>
            <asp:ListItem>Name</asp:ListItem>
            <asp:ListItem>Birthday</asp:ListItem>
        </asp:DropDownList>
    </form>
</body>
</html>
