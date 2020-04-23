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
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Checked ="true" Text="Confirma ?" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="true"/>
        <br />
        <asp:Label ID="lblChk" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem Value="1">Amarelo</asp:ListItem>
            <asp:ListItem Value="2" Selected ="true">Azul</asp:ListItem>
            <asp:ListItem Value="3" Enabled="false">Vermelho</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="lblDrop" runat="server" Text="Label"></asp:Label>
        <p>
            <asp:Literal ID="Literal1" runat="server" Text="Literal Text"></asp:Literal>
        </p>
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" OnVisibleMonthChanged="Calendar1_VisibleMonthChanged" SelectedDate="04/23/2020 17:00:07"></asp:Calendar>
        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
    </form>
</body>
</html>
