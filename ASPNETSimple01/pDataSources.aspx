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
            <asp:GridView ID="GVCidades" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IdCidade" DataSourceID="SqlDSCidades" PageSize="5" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="IdCidade" HeaderText="IdCidade" InsertVisible="False" ReadOnly="True" SortExpression="IdCidade" />
                    <asp:BoundField DataField="descricao" HeaderText="descricao" SortExpression="descricao" />
                    <asp:TemplateField>
                        <HeaderTemplate>
                            Meu Botão
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Button runat="server" ID="btn" Text="OK" OnClick="btn_Click"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:Label ID="lbl" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
