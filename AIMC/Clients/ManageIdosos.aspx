<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageIdosos.aspx.cs" Inherits="Clients_ManageIdosos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="jumbotron">
        <h1>Lista de Idosos a seu encargo</h1>
        <div class="row">
            <asp:GridView CssClass="table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome"></asp:BoundField>
                    <asp:BoundField DataField="Contacto" HeaderText="Contacto" SortExpression="Contacto"></asp:BoundField>
                    <asp:BoundField DataField="Morada" HeaderText="Morada" SortExpression="Morada"></asp:BoundField>
                    <asp:BoundField DataField="DataNasc" HeaderText="DataNasc" SortExpression="DataNasc"></asp:BoundField>
                    <asp:BoundField DataField="Condicoes" HeaderText="Condicoes" SortExpression="Condicoes"></asp:BoundField>

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
    </div>
        <hr />
        <div class="row" style="margin-left:auto;margin-right:auto">
            <div class="btn-group-justified" role="group">
            <a href="AddIdoso.aspx" class="btn btn-primary" role="button">Adicionar Idoso</a>
            <a href="AlterIdoso.aspx" class="btn btn-primary" role="button">Alterar Idoso</a>
            <a href="DelIdoso.aspx" class="btn btn-primary" role="button">Remover Idoso</a>
            <a href="MainPage.aspx" class="btn btn-primary" role="button">Voltar ao Painel</a>
            </div>
        </div>
        </div>
    
</asp:Content>

