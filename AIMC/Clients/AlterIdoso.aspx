<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AlterIdoso.aspx.cs" Inherits="Clients_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row">
        <h1>Escolha o Idoso que pretende alterar.</h1>
        <asp:DropDownList AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="btn btn-primary dropdown-toggle" ID="DropDownList1" runat="server">
            
        </asp:DropDownList>

    </div>
    <hr />
    <div class="row">
        <table class="table-bordered" style="margin-right:auto">
            <tr>
                <td>
                    <label>Nome: </label>
                </td>
                <td>
                    <asp:TextBox CssClass="input-lg" ID="tnome" ValidationGroup="1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="tnome" ValidationGroup="1" runat="server" ErrorMessage="indique um nome"></asp:RequiredFieldValidator>
                </td>
          </tr>
            <tr>
                <td>
                <label>Morada: </label>
                </td>
                <td>
                <asp:TextBox CssClass="input-lg" ValidationGroup="1" ID="tmorada" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="1" ControlToValidate="tmorada" ForeColor="Red" runat="server" ErrorMessage="indique uma morada"></asp:RequiredFieldValidator>
                </td>
          </tr>
            <tr>
                <td>
                <label>Contacto: </label>
                    </td>
                <td>
                <asp:TextBox  CssClass="input-lg" ValidationGroup="1" ID="tcontacto" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="tcontacto" ValidationGroup="1" runat="server" ErrorMessage="Indique um contacto"></asp:RequiredFieldValidator>
                    </td>
         </tr>
            <tr>
                <td>
                <label>Data de Nascimento: </label></td>
              <td>  <asp:TextBox CssClass="input-lg" TextMode="DateTime" ValidationGroup="1" ID="tdata" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ValidationGroup="1" ControlToValidate="tdata" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

              </td>
          </tr>
            <tr>
               <td> <label>Condições especiais: </label></td>
                <td><asp:TextBox  CssClass="input-lg" TextMode="DateTime" ID="tcondicoes" runat="server"></asp:TextBox></td>
             </tr>
            <tr>

            </tr>
          <tr>
              <td>
                  <asp:Button ID="Confirm" ValidationGroup="1" Enabled="false" CssClass="btn-info" OnClick="Confirm_Click" runat="server" Text="Confirmar" />
              </td>
              <td>
                  <asp:Button CssClass="btn-info" ID="Cancel" OnClick="Cancel_Click" runat="server" Text="Voltar" />
              </td>
          </tr>
          
       </table>
    </div>
</asp:Content>

