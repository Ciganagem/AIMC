<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AEdit.aspx.cs" Inherits="Admin_AEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1 class="text-center">Edite os seus dados pessoais.</h1>
    <div class="container">
         <table class="table-bordered" style="margin-left:auto;margin-right:auto">
             <tr>
                 <td>
                     Nome: 
                 </td>
                 <td>
                     <asp:TextBox  CssClass="input-lg" ValidationGroup="1" ID="tnome" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="1" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="tnome" runat="server" ErrorMessage="E preciso nome."></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td>
                     Morada: 
                 </td>
                 <td>
                     <asp:TextBox  CssClass="input-lg" ValidationGroup="1" ID="tmorada" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tmorada" ForeColor="Red" runat="server" ErrorMessage="E preciso morada."></asp:RequiredFieldValidator>
                 </td>

             </tr>
            
             <tr>
                 <td>
                    Email: 
                 </td>
                 <td>
                     <asp:TextBox ValidationGroup="1" CssClass="input-lg" ID="temail" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="1" ForeColor="Red" ControlToValidate="temail" runat="server" ErrorMessage="E preciso email."></asp:RequiredFieldValidator>
                 </td>

             </tr>
             <tr>
                 <td>
                    Contactos: 
                 </td>
                 <td>
                     <asp:TextBox CssClass="input-lg" ID="tcontactos" ValidationGroup="1" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="1" ControlToValidate="tcontactos" ForeColor="Red" runat="server" ErrorMessage="E preciso contactos"></asp:RequiredFieldValidator>
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

