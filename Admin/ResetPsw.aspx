<%@ Page Title="Reset password" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ResetPsw.aspx.cs" Inherits="Admin_ResetPsw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
  <h3></h3>

  <asp:Label id="Msg" runat="server" ForeColor="maroon" /><br />

  Username: <asp:Textbox id="UsernameTextBox" Columns="30" runat="server" AutoPostBack="true" />
            <asp:RequiredFieldValidator id="UsernameRequiredValidator" runat="server"
                                        ControlToValidate="UsernameTextBox" ForeColor="red"
                                        Display="Static" ErrorMessage="Richiesto" /><br />

  <asp:Button id="ResetPasswordButton" Text="Reset Password" 
              OnClick="ResetPassword_OnClick" runat="server" Enabled="false" />
</asp:Content>

