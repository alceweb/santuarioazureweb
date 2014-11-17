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
        <p>
<asp:Label ID="lblCar" runat="server" Text="Fai la tua offerta per il Santuario con una Messa una Novena o un'offerta libera"></asp:Label>
        </p>
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
                        <asp:TextBox ID="TextBox2" CssClass="item_intenzione" TextMode="MultiLine" Width="90%" Height="90px" runat="server"></asp:TextBox><br />
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
                        <asp:TextBox ID="TextBox4" CssClass="item_size" TextMode="MultiLine" Width="90%" Height="100px" runat="server"></asp:TextBox><br />
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
                        <asp:TextBox ID="TextBox3" CssClass="item_size" TextMode="MultiLine" Width="90%" Height="100px" runat="server"></asp:TextBox><br />
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
                        <asp:TextBox ID="TextBox5" CssClass="item_intenzione" TextMode="MultiLine" Width="90%" Height="100px" runat="server"></asp:TextBox><br />
                        <asp:Button ID="Button1" OnClick="Button1_Click" CssClass="item_add" runat="server" Text="Aggiungi" />
                    </div>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>

