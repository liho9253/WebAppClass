<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="w_20220107.aspx.cs" Inherits="WebApp_F._20220107" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="dd1_Users" runat="server" AutoPostBack="True" DataSourceID="sds_Users" DataTextField="Name" DataValueField="Name" OnSelectedIndexChanged="dd1_Users_SelectedIndexChanged"></asp:DropDownList><br />
            <asp:Label ID="lb_txt" runat="server" Text=""></asp:Label>
            <asp:SqlDataSource ID="sds_Users" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString2 %>" InsertCommand="INSERT INTO [Users]([Id], [Name], [Birthday]) VALUES (@Id, @Name, @Birthday)" SelectCommand="SELECT * FROM [Users]">
                <InsertParameters>
                    <asp:Parameter Name="Id" />
                    <asp:Parameter Name="Name" />
                    <asp:Parameter Name="Birthday" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="dv_Users" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="sds_Users">
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
        </div>
    </form>
</body>
</html>
