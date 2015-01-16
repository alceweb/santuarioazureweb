<%@ Page Title="Scrivi la tua preghiera" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PreghiAddOk.aspx.cs" Inherits="Riservata_PreghiAddOk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2><%: Title %></h2><hr />
        <img style="border: none; float:left; display:block; box-shadow: none" src="<%: ResolveUrl("~/Images/Madonna.png")%>" />
                <h2>
                    La tua preghiera è stata inviata!
                </h2>
    <table class="tbl2">
        <tr>
            <td>
    <h3 style="text-align:center">
                    Prima di essere pubblicata verrà valutata dal personale addetto.<br />La troverai pubblicata al più presto.

    </h3>

            </td>
        </tr>
        <tr>
            <td>
                <ul>
                    <li><a href="PreghiAdd.aspx">Inserisci un'altra preghiera</a></li>
                    <li><a href="PreghiereUtente.aspx">Vai alle tue preghiere</a></li>
                    <li><a href="../Preghiere/Elenco.aspx">Tutte le preghiere</a></li>
                </ul>
            </td>
        </tr>
    </table>
</asp:Content>

