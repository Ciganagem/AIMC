<%@ Page Title="" Language="C#" MasterPageFile="../MasterPage.master" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="Clients_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row">
        <h1 class="text-center">Bemvindo ao seu painel.</h1>
        <div class ="col-md-5">
    <asp:FormView ID="FormView1" runat="server">
        <EditItemTemplate>
            Username:
            <asp:TextBox Text='<%# Bind("Username") %>' runat="server" ID="UsernameTextBox" /><br />
            Email:
            <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" /><br />
            Morada:
            <asp:TextBox Text='<%# Bind("Morada") %>' runat="server" ID="MoradaTextBox" /><br />
            Nome:
            <asp:TextBox Text='<%# Bind("Nome") %>' runat="server" ID="NomeTextBox" /><br />
            DataNasc:
            <asp:TextBox Text='<%# Bind("DataNasc") %>' runat="server" ID="DataNascTextBox" /><br />
            Contactos:
            <asp:TextBox Text='<%# Bind("Contactos") %>' runat="server" ID="ContactosTextBox" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Username:
            <asp:TextBox Text='<%# Bind("Username") %>' runat="server" ID="UsernameTextBox" /><br />
            Email:
            <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" /><br />
            Morada:
            <asp:TextBox Text='<%# Bind("Morada") %>' runat="server" ID="MoradaTextBox" /><br />
            Nome:
            <asp:TextBox Text='<%# Bind("Nome") %>' runat="server" ID="NomeTextBox" /><br />
            DataNasc:
            <asp:TextBox Text='<%# Bind("DataNasc") %>' runat="server" ID="DataNascTextBox" /><br />
            Contactos:
            <asp:TextBox Text='<%# Bind("Contactos") %>' runat="server" ID="ContactosTextBox" /><br />
            <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            <h1>Dados Pessoais</h1>
           <h4>Username:
            <asp:Label Text='<%# Bind("Username") %>' runat="server" ID="UsernameLabel" /><br /></h4> 
           <h4> Email:
            <asp:Label Text='<%# Bind("Email") %>' runat="server" ID="EmailLabel" /><br /></h4>
           <h4> Morada:
            <asp:Label Text='<%# Bind("Morada") %>' runat="server" ID="MoradaLabel" /><br /></h4>
            <h4>Nome:
            <asp:Label Text='<%# Bind("Nome") %>' runat="server" ID="NomeLabel" /><br /></h4>
            <h4>DataNasc:
            <asp:Label Text='<%# Bind("DataNasc") %>' runat="server" ID="DataNascLabel" /><br /></h4>
            <h4>Contactos:
            <asp:Label Text='<%# Bind("Contactos") %>' runat="server" ID="ContactosLabel" /><br /></h4>

        </ItemTemplate>
    </asp:FormView>
   



</div>
        <div class="col-md-5">
            <h1>Opções do Utilizador</h1>
            <div class="btn-group-vertical" role="group" aria-label="..."><br/>
            <a href="VerServico.aspx" class="btn btn-primary" role="button">Gerir Serviços</a>
            <a href="AddServico.aspx" class="btn btn-primary" role="button">Adicionar Serviços</a>
            <a href="ManageIdosos.aspx" class="btn btn-primary" role="button">Gerir Idosos</a>
            <a href="AddIdoso.aspx" class="btn btn-primary" role="button">Adicionar Idoso</a>
            <a href="ChangePass.aspx" class="btn btn-primary" role="button">Mudar a Password</a>
            <a href="Edit.aspx" class="btn btn-primary" role="button">Editar Perfil</a>
            </div>
</div>
</div>
</asp:Content>

