<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AChangePass.aspx.cs" Inherits="Admin_AChangePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1 class="text-center">Mudar a Password</h1>
    
    <asp:ChangePassword   ID="ChangePassword1" runat="server">
        <ChangePasswordTemplate>
            <table  cellspacing="0" cellpadding="1" style="border-collapse: collapse;">
                <tr>
                    <td>
                        <table cellpadding="0">
                            <tr>
                                <td align="center" colspan="2">Mude a sua Password</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="CurrentPassword" ID="CurrentPasswordLabel">Password:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" TextMode="Password" ID="CurrentPassword"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="CurrentPassword" ErrorMessage="Indique a password actual." ValidationGroup="ChangePassword1" ToolTip="Password is required." ID="CurrentPasswordRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="NewPassword" ID="NewPasswordLabel">Nova Password:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" TextMode="Password" ID="NewPassword"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="NewPassword" ErrorMessage="É necessário uma nova Password" ValidationGroup="ChangePassword1" ToolTip="New Password is required." ID="NewPasswordRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="ConfirmNewPassword" ID="ConfirmNewPasswordLabel">Confirme a nova Password:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" TextMode="Password" ID="ConfirmNewPassword"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmNewPassword" ErrorMessage="É preciso confirmar a nova a password." ValidationGroup="ChangePassword1" ToolTip="Confirm New Password is required." ID="ConfirmNewPasswordRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" ErrorMessage="A nova password deve coincidir com a confirmação da mesma." Display="Dynamic" ValidationGroup="ChangePassword1" ID="NewPasswordCompare"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color: Red;">
                                    <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Button runat="server" CommandName="ChangePassword" Text="Mudar Password" ValidationGroup="ChangePassword1" ID="ChangePasswordPushButton"></asp:Button>
                                </td>
                                <td>
                                    <asp:Button runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" ID="CancelPushButton"></asp:Button>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ChangePasswordTemplate>
    </asp:ChangePassword>
</asp:Content>

