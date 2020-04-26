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
            <asp:SqlDataSource ID="SqlDSCidades" runat="server" ConnectionString="<%$ ConnectionStrings:simpledbConnectionString %>" SelectCommand="SELECT * FROM [Cidades]" DeleteCommand="DELETE FROM Cidades WHERE [IdCidade] = @idCidade" UpdateCommand="UPDATE Cidades SET descricao = @descricao WHERE (IdCidade = @idCidade)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GVCidades" Name="idCidade" PropertyName="SelectedValue" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Type="String" Name="descricao" />
                    <asp:ControlParameter ControlID="GVCidades" DefaultValue="SelectedValue" Name="newparameter" PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GVCidades" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IdCidade" DataSourceID="SqlDSCidades" PageSize="5" GridLines="Horizontal" OnRowDeleted="GVCidades_RowDeleted" OnRowDeleting="GVCidades_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="IdCidade" HeaderText="IdCidade" InsertVisible="False" ReadOnly="True" SortExpression="IdCidade" />
                    <asp:TemplateField HeaderText="descricao" SortExpression="descricao">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("descricao") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# DoUpper(Eval("descricao")) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="descricao" HeaderText="Descrição" SortExpression="descricao" />
                    <asp:TemplateField>
                        <HeaderTemplate>
                            Meu Botão
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Button runat="server" ID="btn" Text="OK" OnClick="btn_Click"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            Delete
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Button runat="server" ID="btnDelete" Text="Delete" CommandName="Delete" OnClientClick="return confirm('OK ?');"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Atualizar" />
                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:Label ID="lbl" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
