<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pPanel.aspx.cs" Inherits="ASPNETSimple01.pPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 107px">
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnSwitch" runat="server" Text="Switch" OnClick="btnSwitch_Click" />
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="lblP1" runat="server" Text="Panel1"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" Height="23px" style="margin-bottom: 7px" Visible="False">
                <asp:Label ID="lblP2" runat="server" Text="Panel2"></asp:Label>
            </asp:Panel>
        </div>
      </form>
</body>
</html>
