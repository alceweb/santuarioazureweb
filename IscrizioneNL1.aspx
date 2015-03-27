<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IscrizioneNL1.aspx.cs" Inherits="IscrizioneNL1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body style="border-top:none">
    <form id="form1" method="post" action="http://f1d3i.s87.it/frontend/subscribe.aspx" runat="server">
<div class="divnl">
<h3 style="text-align:center" >Iscrizione newsletter del venerdì</h3><hr />
    <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label><br />
    * <asp:TextBox ID="campo1" CssClass="txtnl" required="required" runat="server" placeholder="Il tuo nome"></asp:TextBox><br /><br />
    <asp:Label ID="Label2" runat="server" Text="Cognome"></asp:Label><br />
    * <asp:TextBox ID="campo2" CssClass="txtnl" required="required" runat="server" placeholder="Il tuo cognome" ></asp:TextBox><br /><br />
    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label><br />
    * <asp:TextBox ID="email" CssClass="txtnl" required="required" runat="server" placeholder="La tua mail" AutoCompleteType="Email" ></asp:TextBox><br /><br />
<h5 >Quando invii il modulo, controlla la tua mail per confermare l'iscrizione</h5>
    <span style="visibility:hidden"><asp:RadioButton ID="group" value="35" Checked="true" runat="server" /></span>
    <img height="100" class="float-right" src="Images/newsletter.png" />
    <asp:Button ID="Button1" CssClass="buttonnl" PostBackUrl="http://f1d3i.s87.it/frontend/subscribe.aspx" runat="server" Text="Iscriviti" BackColor="#5CB85C"/>
</div>
<input type="hidden" name="list" value="2"/>
    </form>
</body>
</html>
