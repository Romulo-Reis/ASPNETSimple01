<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pUI.aspx.cs" Inherits="ASPNETSimple01.pUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtNomeComponente" runat="server" BackColor="#CCCCCC" BorderColor="#33CC33" Font-Bold="True" Font-Size="20pt" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True">Default Text</asp:TextBox>
            <asp:Button ID="btnComponente" runat="server" BackColor="White" Text="Button" Width="92px" OnClick="btnComponente_Click" />
        </div>
        <asp:Label ID="lblMsg" runat="server" Text="Label" BackColor="Yellow"></asp:Label>
    </form>
</body>
</html>
