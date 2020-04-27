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
                <EmptyDataTemplate>
                    Nenhum Dado Encontrado.
                </EmptyDataTemplate>
                <Columns>
                    <asp:BoundField DataField="IdCidade" HeaderText="IdCidade" InsertVisible="False" ReadOnly="True" SortExpression="IdCidade" />
                    <asp:BoundField DataField="sigla" HeaderText="Sigla" InsertVisible="False" ReadOnly="True" SortExpression="sigla" />
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
            <br /><br />
        </div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDSCidades">
            <HeaderTemplate>
                <table border ="1">
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("idCidade") %></td>
                    <td><%# Eval("descricao") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        <br />
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="IdCidade" DataSourceID="SqlDSCidades" GroupItemCount="3" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color:#FFF8DC;">IdCidade:
                    <asp:Label ID="IdCidadeLabel" runat="server" Text='<%# Eval("IdCidade") %>' />
                    <br />descricao:
                    <asp:Label ID="descricaoLabel" runat="server" Text='<%# Eval("descricao") %>' />
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                    <br /></td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">IdCidade:
                    <asp:Label ID="IdCidadeLabel1" runat="server" Text='<%# Eval("IdCidade") %>' />
                    <br />descricao:
                    <asp:TextBox ID="descricaoTextBox" runat="server" Text='<%# Bind("descricao") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>Nenhum dado foi retornado.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">descricao:
                    <asp:TextBox ID="descricaoTextBox" runat="server" Text='<%# Bind("descricao") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color:#DCDCDC;color: #000000;">IdCidade:
                    <asp:Label ID="IdCidadeLabel" runat="server" Text='<%# Eval("IdCidade") %>' />
                    <br />descricao:
                    <asp:Label ID="descricaoLabel" runat="server" Text='<%# Eval("descricao") %>' />
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                    <br /></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">IdCidade:
                    <asp:Label ID="IdCidadeLabel" runat="server" Text='<%# Eval("IdCidade") %>' />
                    <br />descricao:
                    <asp:Label ID="descricaoLabel" runat="server" Text='<%# Eval("descricao") %>' />
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        <br />
    </form>
</body>
</html>
