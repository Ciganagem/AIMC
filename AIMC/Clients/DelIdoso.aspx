<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DelIdoso.aspx.cs" Inherits="Clients_DelIdoso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">
        <div class="row">
            <h1>Escolha o Idoso que pretende alterar.</h1>
            <asp:DropDownList AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="btn btn-primary dropdown-toggle" ID="DropDownList1" runat="server">
            
            </asp:DropDownList>
            <div class="row">
            <div class="btn-group" role="group">
                <asp:Button Enabled="false" CssClass="btn-primary" ID="Confirm" OnClick="Confirm_Click" runat="server" Text="Confirmar" />
                <asp:Button CssClass="btn-primary" ID="Back" OnClick="Back_Click" runat="server" Text="Voltar" />
            </div>
        </div>
        </div>
    </div>
</asp:Content>

