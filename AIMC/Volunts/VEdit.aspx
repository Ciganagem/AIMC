<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VEdit.aspx.cs" Inherits="Volunts_Default" %>

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
                     <asp:TextBox ValidationGroup="1"  CssClass="input-lg" ID="tnome" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="1" ForeColor="Red" ControlToValidate="tnome" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Indique Nome"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td>
                     Morada: 
                 </td>
                 <td>
                     <asp:TextBox  ValidationGroup="1" CssClass="input-lg" ID="tmorada" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="1" ForeColor="Red" ControlToValidate="tmorada" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Indique Morada"></asp:RequiredFieldValidator>
                 </td>

             </tr>
             <tr>
                 <td>
                     Data de nascimento: 
                 </td>
                 <td>
                     <asp:TextBox ValidationGroup="1" CssClass="input-lg" ID="tdata" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="1" ForeColor="Red" ControlToValidate="tdata" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Indique Data"></asp:RequiredFieldValidator>
                 </td>

             </tr>
             <tr>
                 <td>
                    Email: 
                 </td>
                 <td>
                     <asp:TextBox ValidationGroup="1" CssClass="input-lg" ID="temail" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="1" ForeColor="Red" ControlToValidate="temail" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Indique Email"></asp:RequiredFieldValidator>
                 </td>

             </tr>
             <tr>
                 <td>
                    Contactos: 
                 </td>
                 <td>
                     <asp:TextBox ValidationGroup="1" CssClass="input-lg" ID="tcontactos" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="1" ForeColor="Red" ControlToValidate="tcontactos" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Indique contactos"></asp:RequiredFieldValidator>
                 </td>

             </tr>
             <tr>
                 <td>
                  Disponibilidade: 
                 </td>
                 <td>
                     <asp:TextBox CssClass="input-lg" ID="tdisp" runat="server"></asp:TextBox>
                 </td>

             </tr>
              <tr>
                 <td>
                  Habilitações: 
                 </td>
                 <td>
                     <asp:TextBox CssClass="input-lg" ID="thabil" runat="server"></asp:TextBox>
                 </td>

             </tr>
             <tr>
                 <td>
                     <asp:Button ValidationGroup="1" ID="Confirm" CssClass="btn-info" OnClick="Confirm_Click" runat="server" Text="Confirmar" />
                 </td>
                 <td>
                     <asp:Button ID="back" CssClass="btn-info" OnClick="back_Click" runat="server" Text="Voltar" />
                 </td>
             </tr>
         </table>
    </div>
</asp:Content>

