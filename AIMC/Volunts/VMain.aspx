<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VMain.aspx.cs" Inherits="Volunts_VMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row">
        <h1 class="text-center">Bemvindo ao seu painel.</h1>
        <div class ="col-md-6">
            <h1 class="text-center">Dados Pessoais</h1>
            <asp:FormView ID="FormView1" runat="server" >
                <EditItemTemplate>
                    Nome:
                    <asp:TextBox Text='<%# Bind("Nome") %>' runat="server" ID="NomeTextBox" /><br />
                    Morada:
                    <asp:TextBox Text='<%# Bind("Morada") %>' runat="server" ID="MoradaTextBox" /><br />
                    Email:
                    <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" /><br />
                    DataNasc:
                    <asp:TextBox Text='<%# Bind("DataNasc") %>' runat="server" ID="DataNascTextBox" /><br />
                    Contactos:
                    <asp:TextBox Text='<%# Bind("Contactos") %>' runat="server" ID="ContactosTextBox" /><br />
                    Disponibilidade:
                    <asp:TextBox Text='<%# Bind("Disponibilidade") %>' runat="server" ID="DisponibilidadeTextBox" /><br />
                    Status:
                    <asp:TextBox Text='<%# Bind("Status") %>' runat="server" ID="StatusTextBox" /><br />
                    Habilitacoes:
                    <asp:TextBox Text='<%# Bind("Habilitacoes") %>' runat="server" ID="HabilitacoesTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Nome:
                    <asp:TextBox Text='<%# Bind("Nome") %>' runat="server" ID="NomeTextBox" /><br />
                    Morada:
                    <asp:TextBox Text='<%# Bind("Morada") %>' runat="server" ID="MoradaTextBox" /><br />
                    Email:
                    <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" /><br />
                    DataNasc:
                    <asp:TextBox Text='<%# Bind("DataNasc") %>' runat="server" ID="DataNascTextBox" /><br />
                    Contactos:
                    <asp:TextBox Text='<%# Bind("Contactos") %>' runat="server" ID="ContactosTextBox" /><br />
                    Disponibilidade:
                    <asp:TextBox Text='<%# Bind("Disponibilidade") %>' runat="server" ID="DisponibilidadeTextBox" /><br />
                    Status:
                    <asp:TextBox Text='<%# Bind("Status") %>' runat="server" ID="StatusTextBox" /><br />
                    Habilitacoes:
                    <asp:TextBox Text='<%# Bind("Habilitacoes") %>' runat="server" ID="HabilitacoesTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                   <h4> Nome:
                   <asp:Label Text='<%# Bind("Nome") %>' runat="server" ID="NomeLabel" /><br /></h4>
                  <h4>  Morada:
                    <asp:Label Text='<%# Bind("Morada") %>' runat="server" ID="MoradaLabel" /><br /></h4>
                   <h4> Email:
                    <asp:Label Text='<%# Bind("Email") %>' runat="server" ID="EmailLabel" /><br /></h4>
                  <h4>  DataNasc:
                    <asp:Label Text='<%# Bind("DataNasc") %>' runat="server" ID="DataNascLabel" /><br /></h4>
                  <h4>  Contactos:
                    <asp:Label Text='<%# Bind("Contactos") %>' runat="server" ID="ContactosLabel" /><br /></h4>
                  <h4>  Disponibilidade:
                    <asp:Label Text='<%# Bind("Disponibilidade") %>' runat="server" ID="DisponibilidadeLabel" /><br /></h4>
                   <h4> Status:
                    <asp:Label Text='<%# Bind("Status") %>' runat="server" ID="StatusLabel" /><br /></h4>
                 <h4>   Habilitacoes:
                    <asp:Label Text='<%# Bind("Habilitacoes") %>' runat="server" ID="HabilitacoesLabel" /><br /></h4>

                </ItemTemplate>
            </asp:FormView>
      </div>
      

        <div class="col-md-6">
            <h1>Opções do Utilizador</h1>
            <div class="btn-group-vertical" role="group" aria-label="..."><br/>
            <a href="ManageServicos.aspx" class="btn btn-primary" role="button">Gerir Serviços</a>
            <a href="VChangePass.aspx" class="btn btn-primary" role="button">Mudar a Password</a>
            <a href="VEdit.aspx" class="btn btn-primary" role="button">Editar Perfil</a>
            </div>
</div>
    </div>

</asp:Content>

