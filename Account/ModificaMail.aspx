<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ModificaMail.aspx.cs" Inherits="Account_ModificaMail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
  <h3>Modifica E-Mail per l'utente:<strong> <%=User.Identity.Name%></strong></h3>

  <asp:Label id="Msg" ForeColor="maroon" runat="server" /><br />

  <table cellpadding="3" border="0">
      <tr>
          <td>E-mail registrata: </td>
          <td><asp:Label ID="EmailLabel" runat="server" ></asp:Label></td>
      </tr>
    <tr>
      <td>Nuova Email:</td>
      <td><asp:TextBox id="EmailTextBox" MaxLength="128" Columns="30" runat="server" /></td>
      <td><asp:RequiredFieldValidator id="EmailRequiredValidator" runat="server"
                                    ControlToValidate="EmailTextBox" ForeColor="red"
                                    Display="Static" ErrorMessage="Required" /></td>
    </tr>
    <tr>
      <td></td>
      <td><asp:Button id="UpdateEmailButton" 
                      Text="Modifica E-mail" 
                      OnClick="UpdateEmailButton_OnClick" 
                      runat="server" /></td>
    </tr>
  </table>
</asp:Content>

