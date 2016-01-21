<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AlterServico.aspx.cs" Inherits="Clients_AlterServico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">
        <h1>Altere o serviço do Idoso seleccionado.</h1>
        <div class="row">
            <asp:DropDownList OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="btn btn-primary dropdown-toggle" AutoPostBack="true" ID="DropDownList1" runat="server"></asp:DropDownList>
        </div>
        <hr />
        <div class="row">
           <asp:CheckBoxList RepeatDirection="Horizontal" ID="CheckBoxList1" runat="server">
                            <asp:ListItem>Refeição</asp:ListItem>
                            <asp:ListItem>Saúde</asp:ListItem>
                            <asp:ListItem>Higiene Pessoal</asp:ListItem>
                            <asp:ListItem>Lazer</asp:ListItem>
                            <asp:ListItem>Limpezas</asp:ListItem>
           </asp:CheckBoxList> <asp:Label ID="Label1" runat="server" Visible="false" Text="Escolha um serviço!"></asp:Label>

        </div>
        <hr />
        <div class="row">
            <div class="btn-group" role="group">
                <asp:Button Enabled="false" CssClass="btn-primary" ID="Confirm" OnClick="Confirm_Click" runat="server" Text="Confirmar" />
                <asp:Button CssClass="btn-primary" ID="Back" OnClick="Back_Click" runat="server" Text="Voltar" />
            </div>
        </div>
        
    </div>
</asp:Content>

