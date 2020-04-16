<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pRequest.aspx.cs" Inherits="ASPNETSimple01.pRequest1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="text" runat="server" Width="250px"></asp:TextBox>
            <br/>
            <asp:Button ID="btn" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
