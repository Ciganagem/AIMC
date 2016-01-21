<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Accept.aspx.cs" Inherits="Admin_Accept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1 class="text-center">Voluntários com Inscrição Pendentes.</h1>
    <div class="row">
        <div class="container">
            <div class="col-md-4">
                <h3 class="text-center">Selecione o Voluntário</h3>

                
                    <asp:DropDownList OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true" CssClass="btn btn-primary dropdown-toggle" ID="DropDownList1" runat="server">
                        

                    </asp:DropDownList>
                    <asp:Label ID="Label1" ForeColor="Red" runat="server" Visible="false" Text="Escolha um idoso!"></asp:Label>
                
            </div> 
        
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
    </div>
    </div>
    <hr />
    <div class="row" style="margin-left:auto;margin-right:auto">
                <div class="btn-group-justified" role="group">
                    <asp:Button CssClass="btn-primary" OnClick="accept_Click" ID="accept" runat="server" Text="Aceitar Voluntário" />
                    <asp:Button CssClass="btn-primary" OnClick="reject_Click" ID="reject" runat="server" Text="Rejeitar Voluntário" />
                    
                    <asp:Button CssClass="btn-primary" OnClick="Back_Click" ID="Back" runat="server" Text="Voltar ao painel principal" />
                </div>
            </div>
</asp:Content>

