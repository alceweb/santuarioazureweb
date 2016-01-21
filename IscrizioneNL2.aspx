<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IscrizioneNL2.aspx.cs" Inherits="IscrizioneNL2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/Site.css" rel="stylesheet" />
    <style>
        html{
            background-image:none;
            background-color:#fff;
        }
    </style>
</head>
<body style="border-top:none">
    <form id="form1" method="post" runat="server">
<div class="divnl">
<h3 style="text-align:center" >Iscrizione newsletter del venerdì</h3><hr />
    <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label><br />
    * <asp:TextBox ID="campo1" CssClass="txtnl" required="required" runat="server" placeholder="Il tuo nome"></asp:TextBox><br /><br />
    <asp:Label ID="Label2" runat="server" Text="Cognome"></asp:Label><br />
    * <asp:TextBox ID="campo2" CssClass="txtnl" required="required" runat="server" placeholder="Il tuo cognome" ></asp:TextBox><br /><br />
    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label><br />
    * <asp:TextBox ID="email" CssClass="txtnl" required="required" runat="server" placeholder="La tua mail" Type="email" AutoCompleteType="Email" ></asp:TextBox><br /><br />
    <asp:Label ID="Label4" runat="server" Text="Ho preso visione della normativa sulla privacy e ne accetto le condizioni"></asp:Label><br />
    <asp:CheckBox ID="CheckBox1" Checked="false" runat="server" /><br />
    <asp:Label ID="Label5" runat="server" ForeColor="red"></asp:Label>
<h5 >Quando invii il modulo, controlla la tua mail per confermare l'iscrizione</h5>
    <span style="visibility:hidden"><asp:RadioButton ID="group" value="35" Checked="true" runat="server" /></span>
    <img height="100" class="float-right" src="Images/newsletter.png" />
    <asp:Button ID="Button1" OnClick="Button1_Click" CssClass="buttonnl" runat="server" Text="Invia" BackColor="#5CB85C"/>
</div>
<input type="hidden" name="list" value="2"/>
    </form>
</body>
</html>
