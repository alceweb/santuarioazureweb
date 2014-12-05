<%@ Page Title="Offerte Donazioni con PayPal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Paypal.aspx.cs" Inherits="Riservata_Paypal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <script src="../Scripts/simpleCart.js"></script>
<script type="text/javascript">
    simpleCart.email = "cesare.rocchetti@cr-consult.it";
    simpleCart.checkoutTo = PayPal;
    simpleCart.currency = EUR;
    simpleCart.taxRate = 0, 00;
    simpleCart.shippingFlatRate = 0, 00;

    simpleCart.cartHeaders = ["Name", "Intenzione", "Price", "decrement", "Quantity", "increment", "remove", "Total"];
</script>
    <link href="../Content/paypal.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h2><%= Title %></h2><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="container">
        <asp:Panel ID="pnlCar" Visible="false" runat="server">
            <div class="simpleCart_items"></div>
            <div class="clear">&nbsp;</div>
            <div id="cartTotal">
            <a style="color: white;" href="javascript:;" class="simpleCart_checkout">paga</a>
                <span style="font-size: 18px">Total: <span class="simpleCart_finalTotal"></span></span>
                    <a style="color: white;" href="javascript:;" class="simpleCart_empty">Annulla</a>
            </div>
        </asp:Panel>
        <table class="tblpay">
            <tr>
                <td>
                    <div class="simpleCart_shelfItem">
                        <h3 class="item_name">Offerta libera</h3>
                        <img src='<%: ResolveUrl("~/Images/offerte1.jpg") %>' /><br />
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Euro"></asp:Label>
                        <asp:TextBox CssClass="item_price" ID="TextBox1" runat="server"></asp:TextBox><br />
                        <asp:Label ID="Label2" runat="server" Text="Intenzione"></asp:Label>
                        <asp:TextBox ID="TextBox2" CssClass="item_intenzione" TextMode="MultiLine" Width="90%" Height="90px" runat="server" >Scrivi qui l'intenzione</asp:TextBox><br />
                        <asp:Button ID="Button4" OnClick="Button4_Click" CssClass="item_add" runat="server" Text="Aggiungi" />
                    </div>
                </td>
                <td>
                    <div class="simpleCart_shelfItem">
                        <h3 class="item_name">S. Messa in data libera</h3>
                        <img src='<%: ResolveUrl("~/Images/messa.jpg") %>' /><br />
                        <br />
                        <br />
                        <strong class="item_price">€ 10.00</strong><br />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Intenzione"></asp:Label>
                        <asp:TextBox ID="TextBox4" CssClass="item_intenzione" TextMode="MultiLine" Width="90%" Height="100px" runat="server">Scrivi qui l'intenzione</asp:TextBox><br />
                        <asp:Button ID="Button3" OnClick="Button3_Click" CssClass="item_add" runat="server" Text="Aggiungi" />
                    </div>
                </td>
                <td>
                    <div class="simpleCart_shelfItem">
                        <h3 class="item_name">S. Messa in data vincolata</h3>
                        <img src='<%: ResolveUrl("~/Images/messa.jpg") %>' /><br />
                        <br />
                        <br />
                        <strong class="item_price">€ 15.00</strong><br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Data e intenzione"></asp:Label>
                        <asp:TextBox ID="TextBox3" CssClass="item_intenzione" TextMode="MultiLine" Width="90%" Height="100px" runat="server">Scrivi qui la data e l'intenzione</asp:TextBox><br />
                        <asp:Button ID="Button2" OnClick="Button2_Click" CssClass="item_add" runat="server" Text="Aggiungi" />
                    </div>
                </td>
                <td>
                    <div class="simpleCart_shelfItem">
                        <h3 class="item_name">Novena</h3>
                        <img src='<%: ResolveUrl("~/Images/madonnaP.png") %>' /><br />
                        <br />
                        <br />
                        <strong class="item_price">€ 130.00</strong><br />
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Data inizio e intenzione"></asp:Label>
                        <asp:TextBox ID="TextBox5" CssClass="item_intenzione" TextMode="MultiLine" Width="90%" Height="100px" runat="server">Scrivi qui la data e l'intenzione</asp:TextBox><br />
                        <asp:Button ID="Button1" OnClick="Button1_Click" CssClass="item_add" runat="server" Text="Aggiungi" />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="simpleCart_shelfItem">
                        <h3 class="item_name">Il Santuario di Caravaggio</h3>
                        <img src='<%: ResolveUrl("~/Pubblicazioni/rivista_santuario.jpg") %>' /><br />
                        <br />
                        <span class="item_intenzione">AMICO</span>
                        <br />
                        <strong class="item_price">€ 15.00</strong><br />
                        <br />
                        <asp:Button ID="Button5" OnClick="Button1_Click" CssClass="item_add" runat="server" Text="Aggiungi" />
                    </div>
                </td>
                <td>
                    <div class="simpleCart_shelfItem">
                        <h3 class="item_name">Il Santuario di Caravaggio</h3>
                        <img src='<%: ResolveUrl("~/Pubblicazioni/rivista_santuario.jpg") %>' /><br />
                        <br />
                        <span class="item_intenzione">SOSTENITORE</span>
                        <br />
                        <strong class="item_price">€ 30.00</strong><br />
                        <br />
                        <asp:Button ID="Button6" OnClick="Button1_Click" CssClass="item_add" runat="server" Text="Aggiungi" />
                    </div>
                </td>
                <td>
                    <div class="simpleCart_shelfItem">
                        <h3 class="item_name">Santa Maria del Fonte</h3>
                        <img src='<%: ResolveUrl("~/Pubblicazioni/apparizione_e_santuario.jpg") %>' /><br />
                        <br />Testi di Roberto Ziglioli Fotografie di Luca e Pepi Merisio
                        <br />
                        <strong class="item_price">€ 20.00</strong><br />
                        <br />
                        <asp:Button ID="Button7" OnClick="Button1_Click" CssClass="item_add" runat="server" Text="Aggiungi" />
                    </div>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>

