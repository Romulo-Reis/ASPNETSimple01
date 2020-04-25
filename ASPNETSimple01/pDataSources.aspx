<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pDataSources.aspx.cs" Inherits="ASPNETSimple01.pDataSources" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDSCidades" runat="server" ConnectionString="<%$ ConnectionStrings:simpledbConnectionString %>" SelectCommand="SELECT * FROM [Cidades]"></asp:SqlDataSource>
            <asp:GridView ID="GVCidades" runat="server" AutoGenerateColumns="False" DataKeyNames="IdCidade" DataSourceID="SqlDSCidades">
                <Columns>
                    <asp:BoundField DataField="IdCidade" HeaderText="IdCidade" InsertVisible="False" ReadOnly="True" SortExpression="IdCidade" />
                    <asp:BoundField DataField="descricao" HeaderText="descricao" SortExpression="descricao" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
