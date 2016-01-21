<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VerServico.aspx.cs" Inherits="Clients_Servicos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="jumbotron">
        <h1 class="text-center">Consulte os seus serviços</h1>
        <div class="container">
            <div class="row">
            <asp:GridView CssClass="table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="Nome" HeaderText="Nome do Idoso" SortExpression="Nome"></asp:BoundField>
                    <asp:BoundField DataField="Morada" HeaderText="Morada do Idoso" SortExpression="Morada"></asp:BoundField>
                    <asp:BoundField DataField="Contacto" HeaderText="Contacto do Idoso" SortExpression="Contacto"></asp:BoundField>
                    <asp:BoundField DataField="Servico" HeaderText="Servico Associado" SortExpression="Servico"></asp:BoundField>
                    <asp:BoundField DataField="Notas" HeaderText="Notas" SortExpression="Notas"></asp:BoundField>
                    <asp:BoundField DataField="Horario" HeaderText="Horario Preferencial" SortExpression="Horario"></asp:BoundField>
                    <asp:BoundField DataField="Status" HeaderText="Status do Servico" SortExpression="Status"></asp:BoundField>
                    <asp:BoundField DataField="Vnome" HeaderText="Nome do Voluntario" SortExpression="Nome do Voluntario"></asp:BoundField>
                    <asp:BoundField DataField="Contactos" HeaderText="Contactos do Voluntario" SortExpression="Contactos"></asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC"></FooterStyle>

                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Left" BackColor="#CCCCCC" ForeColor="Black"></PagerStyle>

                <RowStyle BackColor="White"></RowStyle>

                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
            </asp:GridView>
                <hr />
            </div>
            <div class="row" style="margin-left:auto;margin-right:auto">
                <div class="btn-group-justified" role="group">
                    <asp:Button CssClass="btn-primary" OnClick="Add_Click" ID="Add" runat="server" Text="Adicionar Serviço" />
                    <asp:Button CssClass="btn-primary" OnClick="Alter_Click" ID="Alter" runat="server" Text="Alterar Serviço" />
                    <asp:Button CssClass="btn-primary" OnClick="Remove_Click" ID="Remove" runat="server" Text="Remover Serviço" />
                    <asp:Button CssClass="btn-primary" OnClick="Back_Click" ID="Back" runat="server" Text="Voltar ao painel principal" />
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>

