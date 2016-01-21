<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AMain.aspx.cs" Inherits="Admin_AMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     <div class="row">
        <h1 class="text-center">Bemvindo ao seu painel.</h1>
        <div class ="col-md-5">
    <asp:FormView ID="FormView1" runat="server">
        <EditItemTemplate>
           
            Email:
            <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" /><br />
            Morada:
            <asp:TextBox Text='<%# Bind("Morada") %>' runat="server" ID="MoradaTextBox" /><br />
            Nome:
            <asp:TextBox Text='<%# Bind("Nome") %>' runat="server" ID="NomeTextBox" /><br />
            
            Contactos:
            <asp:TextBox Text='<%# Bind("Contacto") %>' runat="server" ID="ContactosTextBox" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            
            Email:
            <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" /><br />
            Morada:
            <asp:TextBox Text='<%# Bind("Morada") %>' runat="server" ID="MoradaTextBox" /><br />
            Nome:
            <asp:TextBox Text='<%# Bind("Nome") %>' runat="server" ID="NomeTextBox" /><br />
           
            Contactos:
            <asp:TextBox Text='<%# Bind("Contacto") %>' runat="server" ID="ContactosTextBox" /><br />
            <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            <h1>Dados Pessoais</h1>
           
           <h4> Email:
            <asp:Label Text='<%# Bind("Email") %>' runat="server" ID="EmailLabel" /><br /></h4>
           <h4> Morada:
            <asp:Label Text='<%# Bind("Morada") %>' runat="server" ID="MoradaLabel" /><br /></h4>
            <h4>Nome:
            <asp:Label Text='<%# Bind("Nome") %>' runat="server" ID="NomeLabel" /><br /></h4>
            
            <h4>Contactos:
            <asp:Label Text='<%# Bind("Contacto") %>' runat="server" ID="ContactosLabel" /><br /></h4>

        </ItemTemplate>
        </asp:FormView>

        </div>
         <div class="col-md-5">
            <h1>Opções do Utilizador</h1>
            <div class="btn-group-vertical" role="group" aria-label="...">
            <a href="Manage.aspx" class="btn btn-primary" role="button">Gerir Clientes e Voluntários</a>
            <a href="Accept.aspx" class="btn btn-primary" role="button">Aceitar Voluntários</a>
            <a href="NewAdmin.aspx" class="btn btn-primary" role="button">Adicionar Admins</a>
            <a href="ChangePass.aspx" class="btn btn-primary" role="button">Mudar a Password</a>
            <a href="AEdit.aspx" class="btn btn-primary" role="button">Editar Perfil</a>
            </div>
        </div>
    </div>
</asp:Content>

