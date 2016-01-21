<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewAdmin.aspx.cs" Inherits="Admin_NewAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1 class="text-center">Crie um novo administrador.</h1>
    <div class="container">
         <table class="table-bordered" style="margin-left:auto;margin-right:auto">
             <tr>
                 <td>
                     Username: 
                 </td>
                 <td>
                     <asp:TextBox ValidationGroup="1" CssClass="input-lg" ID="tuser" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="1" ControlToValidate="tuser" ForeColor="Red" runat="server" ErrorMessage="Indique username"></asp:RequiredFieldValidator>

                 </td>
             </tr>
              <tr>
                 <td>
                     Password: 
                 </td>
                 <td>
                     <asp:TextBox ValidationGroup="1" TextMode="Password"  CssClass="input-lg" ID="tpass" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tpass" ForeColor="Red" runat="server" ErrorMessage="Indique Password"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td>
                     Nome: 
                 </td>
                 <td>
                     <asp:TextBox  CssClass="input-lg" ID="tnome" ValidationGroup="1" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ControlToValidate="tnome" ForeColor="Red" ValidationGroup="1" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Indique nome"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td>
                     Morada: 
                 </td>
                 <td>
                     <asp:TextBox  CssClass="input-lg" ID="tmorada" ValidationGroup="1" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="1" ForeColor="Red" ControlToValidate="tmorada" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Indique Morada"></asp:RequiredFieldValidator>
                 </td>

             </tr>
            
             <tr>
                 <td>
                    Email: 
                 </td>
                 <td>
                     <asp:TextBox ValidationGroup="1"  CssClass="input-lg" ID="temail" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="1" ForeColor="Red" ControlToValidate="temail" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Indique Email"></asp:RequiredFieldValidator>
                 </td>

             </tr>
             <tr>
                 <td>
                    Contactos: 
                 </td>
                 <td>
                     <asp:TextBox CssClass="input-lg" ID="tcontactos" ValidationGroup="1" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="1" ForeColor="Red" ControlToValidate="tcontactos" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Indique Contactos"></asp:RequiredFieldValidator>
                 </td>

             </tr>
             <tr>
                 <td>
                     <asp:Button ID="Confirm" ValidationGroup="1" CssClass="btn-info" OnClick="Confirm_Click" runat="server" Text="Confirmar" />
                 </td>
                 <td>
                     <asp:Button ID="back" CssClass="btn-info" OnClick="back_Click" runat="server" Text="Voltar" />
                 </td>
             </tr>
         </table>
    </div>
</asp:Content>

