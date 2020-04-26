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
            <asp:SqlDataSource ID="SqlDSCidades" runat="server" ConnectionString="<%$ ConnectionStrings:simpledbConnectionString %>" SelectCommand="SELECT * FROM [Cidades]" DeleteCommand="DELETE FROM Cidades WHERE [IdCidade] = @idCidade" UpdateCommand="UPDATE Cidades SET descricao = @descricao WHERE (IdCidade = @idCidade)" InsertCommand="INSERT INTO Cidades(descricao) VALUES (@descricao)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GVCidades" Name="idCidade" PropertyName="SelectedValue" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Type="String" Name="descricao" />
                    <asp:ControlParameter ControlID="GVCidades" DefaultValue="SelectedValue" Name="newparameter" PropertyName="SelectedValue" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Type="String" Name="descricao" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GVCidades" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IdCidade" DataSourceID="SqlDSCidades" PageSize="5" GridLines="Horizontal" OnRowDeleted="GVCidades_RowDeleted" OnRowDeleting="GVCidades_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="IdCidade" HeaderText="IdCidade" InsertVisible="False" ReadOnly="True" SortExpression="IdCidade" />
                    <asp:BoundField DataField="descricao" HeaderText="descricao" SortExpression="descricao" />
                </Columns>
            </asp:GridView>
            <asp:Label ID="lbl" runat="server"></asp:Label>
            <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="IdCidade" DataSourceID="SqlDSCidades" DefaultMode="Insert">
                <InsertItemTemplate>
                    Descrição:
                    <asp:TextBox ID="descricaoTextBox" runat="server" Text='<%# Bind("descricao") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Inserir" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </InsertItemTemplate>
            </asp:FormView>
        </div>
    </form>
</body>
</html>
