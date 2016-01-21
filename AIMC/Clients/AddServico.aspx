<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master"   AutoEventWireup="true" CodeFile="AddServico.aspx.cs" Inherits="Clients_AddServico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <h1 class="text-center">Adicione um novo serviço</h1>
    <div class="row">
            <div class="col-md-6">
                <h3 class="text-center">Escolha o idoso a que pretende atribuir o serviço.</h3>

                <div class="container">
                    <asp:DropDownList AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="btn btn-primary dropdown-toggle" ID="DropDownList1" runat="server">
                        <asp:ListItem Selected="True">Escolha um idoso</asp:ListItem>

                    </asp:DropDownList>
                    <asp:Label ID="Label1" ForeColor="Red" runat="server" Visible="false" Text="Escolha um idoso!"></asp:Label>
                </div>
            </div> 
    </div>
    <hr />
    <div class="row">
        <div class="col-sm-4">
        <h3>Adicione as informações do serviço</h3>
       <div class="container-fluid">
                <table class="table" style="margin-left:auto;margin-right:auto">
                    <tr>
                        <asp:CheckBoxList  RepeatDirection="Horizontal" ID="CheckBoxList1" runat="server">
                            <asp:ListItem>Refeição</asp:ListItem>
                            <asp:ListItem>Saúde</asp:ListItem>
                            <asp:ListItem>Higiene Pessoal</asp:ListItem>
                            <asp:ListItem>Lazer</asp:ListItem>
                            <asp:ListItem>Limpezas</asp:ListItem>
                        </asp:CheckBoxList>
                    </tr>
                    <tr>
                       <td>
                            <label>Notas: </label>
                            </td>
                            <td>
                            <asp:TextBox CssClass="input-lg" ID="tnotas" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                       <td>
                            <label>Horário: </label>
                            </td>
                            <td>
                            <asp:TextBox CssClass="input-lg" ID="thorario" ValidationGroup="add" runat="server">

                            </asp:TextBox>
                           </td>
                    </tr>
                     <tr>
                       <td>
                           <asp:Button CssClass="btn-primary" ValidationGroup="add"  Enabled="false" OnClick="add_Click" ID="add" runat="server" Text="Confirmar" />
                       </td>
                         <td>
                           <asp:Button CssClass="btn-primary" OnClick="back_Click" ID="back" runat="server" Text="Voltar" />
                         </td>
                    </tr>
                    <tr>
                             <asp:RequiredFieldValidator ValidationGroup="add" ControlToValidate="thorario" ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="E necessário indicar um horario."></asp:RequiredFieldValidator>
                            
                    </tr>
                </table>
            </div>
        </div>   
    </div>
</asp:Content>

