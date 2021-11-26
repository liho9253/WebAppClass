<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="w_20211126.aspx.cs" Inherits="WebApp_F.w_20211126" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Wizard ID="wd_Steps" runat="server" Height="300px" Width="400px" ActiveStepIndex="3" OnFinishButtonClick="wd_Steps_FinishButtonClick">
                <HeaderTemplate>
                    <asp:Label ID="tc_100" runat="server" Text="範例標題"></asp:Label>
                </HeaderTemplate>
                <WizardSteps>
                    <asp:WizardStep ID="wds_PS" runat="server" Title="個人信息(開始)" StepType="Start">
                        <asp:Label runat="server" Text="姓名"></asp:Label>
                        <asp:TextBox ID="tb_Name" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep ID="wds_P1" runat="server" Title="郵寄地址(步驟1)" StepType="Step">
                        <asp:Label runat="server" Text="郵寄地址"></asp:Label>
                        <asp:TextBox ID="tb_Mail" runat="server"></asp:TextBox></asp:WizardStep>
                    <asp:WizardStep ID="wds_P2" runat="server" StepType="Step" Title="摘要(步驟2)">
                        <asp:TextBox ID="tb_Con" runat="server" TextMode="MultiLine" Rows="8"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep ID="wds_PF" runat="server" StepType="Finish" Title="完成">
                        <asp:Label runat="server" Text="以上是否填對"></asp:Label>
                    </asp:WizardStep>
                    <asp:WizardStep ID="wds_PC" runat="server" StepType="Complete" Title="已確認">
                        <asp:Label ID="lb_Msg" runat="server" Text=""></asp:Label> 
                        <asp:Label runat="server" Text="感謝您的上傳!!"></asp:Label> 
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
    </form>
</body>
</html>
