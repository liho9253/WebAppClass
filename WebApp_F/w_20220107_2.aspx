<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="w_20220107_2.aspx.cs" Inherits="WebApp_F.w_20200107_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lb_Out" runat="server" Text="Label"></asp:Label>
            <asp:ScriptManager ID="sm_Condition" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="up_Condition" runat="server">
                <ContentTemplate>
                    <asp:Label ID="lb_In" runat="server" Text="Label"></asp:Label>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btn_Sub" EventName="Click">
                    </asp:AsyncPostBackTrigger>
                </Triggers>

            </asp:UpdatePanel>
            <asp:Button ID="btn_Sub" runat="server" Text="送出" OnClick="btn_Sub_Click" />
        </div>
    </form>
</body>
</html>
