<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DelServico.aspx.cs" Inherits="Clients_DelServico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     <div class="container">
        <h1>Remova o serviço selecionado.</h1>
        <div class="row">
            <asp:DropDownList OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="btn btn-primary dropdown-toggle" AutoPostBack="true" ID="DropDownList1" runat="server"></asp:DropDownList>
        </div>
        <hr />
        
        <hr />
        <div class="row">
            <div class="btn-group" role="group">
                <asp:Button Enabled="false" CssClass="btn-primary" ID="Confirm" OnClick="Confirm_Click" runat="server" Text="Confirmar" />
                <asp:Button CssClass="btn-primary" ID="Back" OnClick="Back_Click" runat="server" Text="Voltar" />
            </div>
        </div>
        
    </div>
</asp:Content>

