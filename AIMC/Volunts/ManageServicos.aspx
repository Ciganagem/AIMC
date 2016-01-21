<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" EnableEventValidation="true" AutoEventWireup="true" CodeFile="ManageServicos.aspx.cs" Inherits="Volunts_ManageServicos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="jumbotron">
        <div class="container">
            <div class="row">
                <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome"></asp:BoundField>
                        <asp:BoundField DataField="Morada" HeaderText="Morada" SortExpression="Morada"></asp:BoundField>
                        <asp:BoundField DataField="Contacto" HeaderText="Contacto" SortExpression="Contacto"></asp:BoundField>
                        <asp:BoundField DataField="Condicoes" HeaderText="Condicoes" SortExpression="Condicoes"></asp:BoundField>
                        <asp:BoundField DataField="Servico" HeaderText="Servico" SortExpression="Servico"></asp:BoundField>
                        <asp:BoundField DataField="Notas" HeaderText="Notas" SortExpression="Notas"></asp:BoundField>
                        <asp:BoundField DataField="Horario" HeaderText="Horario" SortExpression="Horario"></asp:BoundField>
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status"></asp:BoundField>
                        <asp:TemplateField  ItemStyle-HorizontalAlign="Center" HeaderText="Aceitar/Rescindir">
                            <ItemTemplate>
                                <asp:Button ID="accao" runat="server" OnClick="accao_Click"  Text="Bota" CommandName="botao"/>

                            </ItemTemplate>
                        </asp:TemplateField>
                       <asp:TemplateField Visible="false">
                         <ItemTemplate>
                             <asp:Label id="IDS" runat="server" text='<%# Eval("IDServico")%>'/>
                         </ItemTemplate>
                      </asp:TemplateField>
                    </Columns>
                </asp:GridView>

             </div>
            <hr />
            <div class="row" style="margin-left:auto;margin-right:auto">
                <div class="btn-group-justified" role="group">
                    
                    <asp:Button CssClass="btn-primary" OnClick="Back_Click" ID="Back" runat="server" Text="Voltar ao painel principal" />
                </div>
        </div>
    </div>
</asp:Content>

