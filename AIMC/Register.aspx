<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Efectue o seu Registo<p></p>
        <small>Preencha todos os campos.</small>
    </h1>
    <table>
            <tr>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" RepeatDirection="Horizontal" runat="server">
                        <asp:ListItem Selected="True">Cliente</asp:ListItem>
                        <asp:ListItem>Voluntario</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
    <asp:CreateUserWizard ID="CreateUserWizard1" OnCreatedUser="CreateUserWizard1_CreatedUser" runat="server">
        
        
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1"  runat="server">
                <ContentTemplate>
                    <table>
                       
                        <tr>
                            <td align="right">
                                <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">User Name:</asp:Label></td>
                            <td>
                                <asp:TextBox runat="server" ID="UserName"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ValidationGroup="CreateUserWizard1" ToolTip="User Name is required." ID="UserNameRequired">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Password:</asp:Label></td>
                            <td>
                                <asp:TextBox runat="server" TextMode="Password" ID="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ValidationGroup="CreateUserWizard1" ToolTip="Password is required." ID="PasswordRequired">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label runat="server" AssociatedControlID="ConfirmPassword" ID="ConfirmPasswordLabel">Confirm Password:</asp:Label></td>
                            <td>
                                <asp:TextBox runat="server" TextMode="Password" ID="ConfirmPassword"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ValidationGroup="CreateUserWizard1" ToolTip="Confirm Password is required." ID="ConfirmPasswordRequired">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label runat="server" AssociatedControlID="Tnome" ID="Lnome">Nome:</asp:Label></td>
                            <td>
                                <asp:TextBox runat="server" ID="Tnome"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Tnome" ErrorMessage="Introduza um nome" ValidationGroup="CreateUserWizard1" ToolTip="E-mail is required." ID="RequiredFieldValidator1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label runat="server" AssociatedControlID="Tmorada" ID="Lmorada">Morada:</asp:Label></td>
                            <td>
                                <asp:TextBox runat="server" ID="Tmorada"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Tnome" ErrorMessage="Introduza uma morada" ValidationGroup="CreateUserWizard1" ToolTip="E-mail is required." ID="RequiredFieldValidator3">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                         <tr>
                            <td align="right">
                                <asp:Label runat="server" AssociatedControlID="Tcontactos" ID="LContactos">Contacto:</asp:Label></td>
                            <td>
                                <asp:TextBox runat="server" ID="Tcontactos"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Tcontactos" ErrorMessage="Introduza um contacto" ValidationGroup="CreateUserWizard1" ToolTip="E-mail is required." ID="RequiredFieldValidator2">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                       <td align="right">
                           
                                <asp:Label runat="server" AssociatedControlID="Tdata" ID="Ldata">Data de Nascimento:</asp:Label>
                           </td>
                            <td>
                                <asp:TextBox TextMode="Date" runat="server" ID="Tdata"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Tdata" ErrorMessage="Introduza a sua data de Nascimento" ValidationGroup="CreateUserWizard1" ToolTip="E-mail is required." ID="RequiredFieldValidator4">*</asp:RequiredFieldValidator>
                            </td>
                        <tr>
                            <td align="right">
                                <asp:Label runat="server" AssociatedControlID="Email" ID="EmailLabel">E-mail:</asp:Label></td>
                            <td>
                                <asp:TextBox runat="server" ID="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ValidationGroup="CreateUserWizard1" ToolTip="E-mail is required." ID="EmailRequired">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        
                       
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="The Password and Confirmation Password must match." Display="Dynamic" ValidationGroup="CreateUserWizard1" ID="PasswordCompare"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color: Red;">
                                <asp:Literal runat="server" ID="ErrorMessage" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

