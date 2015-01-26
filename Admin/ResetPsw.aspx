<%@ Page Title="Reset password" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ResetPsw.aspx.cs" Inherits="Admin_ResetPsw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
  <h3></h3>
    <asp:Panel ID="Panel1" runat="server"></asp:Panel>
  <asp:Label id="Msg" runat="server" ForeColor="maroon" /><br />

  Username: <asp:Textbox id="UsernameTextBox" Columns="30" runat="server" AutoPostBack="true" />
            <asp:RequiredFieldValidator id="UsernameRequiredValidator" runat="server"
                                        ControlToValidate="UsernameTextBox" ForeColor="red"
                                        Display="Static" ErrorMessage="Richiesto" /><br />
  <asp:Button id="ResetPasswordButton" Text="Reset Password" 
              OnClick="ResetPassword_OnClick" runat="server" Enabled="false" />
    <hr />
    <p>Se non conosci il nome utente puoi cercarlo inserendo la mail.</p>
    &nbsp;&nbsp;&nbsp; 
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource2" DataTextField="Email" DataValueField="UserId"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT [UserId], [Email] FROM [Memberships] ORDER BY [Email]"></asp:SqlDataSource>
    <asp:ListView ID="LVMail" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="UserId">
        <ItemTemplate>
            Nome utente: <strong><asp:Label ID="Label1" runat="server" Text='<%# Eval("UserName") %>'></asp:Label></strong><br />
        </ItemTemplate>
    </asp:ListView><br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT * FROM [Users] WHERE ([UserId] = @UserId)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="UserId" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

