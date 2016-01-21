<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddIdoso.aspx.cs" Inherits="Clients_AddIdoso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1 class="text-center">Adicione um novo idoso a seu encargo</h1>
    <div class="container">
        
        <table class="table-bordered" style="margin-left:auto;margin-right:auto">
            <tr>
                <td>
                    <label>Nome: </label>
                </td>
                <td>
                    <asp:TextBox CssClass="input-lg" ID="tnome" ValidationGroup="temp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="nomeVal" ForeColor="Red" ControlToValidate="tnome" ValidationGroup="temp" runat="server" ErrorMessage="É necessário nome."></asp:RequiredFieldValidator>
                </td>
          </tr>
            <tr>
                <td>
                <label>Morada: </label>
                </td>
                <td>
                <asp:TextBox CssClass="input-lg" ValidationGroup="temp" ID="tmorada" runat="server">

                </asp:TextBox><asp:RequiredFieldValidator ForeColor="Red"  ID="moradaVal" ControlToValidate="tmorada" ValidationGroup="temp" runat="server" ErrorMessage="É necessário morada."></asp:RequiredFieldValidator>
                </td>
          </tr>
            <tr>
                <td>
                <label>Contacto: </label>
                    </td>
                <td>
                <asp:TextBox CssClass="input-lg"  ValidationGroup="temp"  ID="tcontacto" runat="server">

                </asp:TextBox><asp:RequiredFieldValidator ForeColor="Red" ID="contactoVal" ControlToValidate="tcontacto" ValidationGroup="temp" runat="server" ErrorMessage="É necessário contacto."></asp:RequiredFieldValidator>
                    </td>
         </tr>
            <tr>
                <td>
                <label>Data de Nascimento: </label></td>
              <td>  <asp:TextBox CssClass="input-lg"  ValidationGroup="temp" TextMode="DateTime" ID="tdata" runat="server">

                    </asp:TextBox>
                  <asp:RequiredFieldValidator ID="dataVal" ForeColor="Red" ControlToValidate="tdata" ValidationGroup="temp" runat="server" ErrorMessage="É necessário data de nascimento."></asp:RequiredFieldValidator>
          
              </td>

            </tr>
            <tr>
               <td> <label>Condições especiais: </label></td>
                <td><asp:TextBox CssClass="input-lg" TextMode="DateTime" ID="tcondicoes" runat="server"></asp:TextBox></td>
             </tr>
            <tr>

            </tr>
          <tr>
              <td>
                  <asp:Button ID="Confirm" ValidationGroup="temp" CssClass="btn-info" OnClick="Confirm_Click" runat="server" Text="Confirmar" />
              </td>
              <td>
                  <asp:Button CssClass="btn-info" ID="Cancel" OnClick="Cancel_Click" runat="server" Text="Voltar" />
              </td>
          </tr>
          
       </table>
    </div>
</asp:Content>

