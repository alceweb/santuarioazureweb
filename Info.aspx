<%@ Page Title="Informazioni e orari" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Info.aspx.cs" Inherits="Info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-family: "Segoe UI";
            text-transform: uppercase;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
   <h2><%= Title %></h2><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
        <table >
            <tr>
                <td>
                    <p>
                        <strong>Santuario Santa Maria del Fonte<br />
                        Viale Papa Giovanni XXIII
                        <br />
                        24043 Caravaggio (Bg)
                        <br />
                        C.F. 84001970163</strong></p>
                </td>
                <td >Direzione Pastorale e
                    <br />
                    Segreteria Pellegrinaggi<br />
                    <br />
                    Tel.&nbsp;&nbsp; 0363 3571
                    <br />
                    Fax&nbsp;&nbsp;&nbsp;0363 357203<br />
                    E-mail: <a href="mailto:info@santuariodicaravaggio.org">info@santuariodicaravaggio.org </a>

                </td>
                <td >
<h4>ORARI APERTURA SANTUARIO</h4>
<p>da ottobre ad aprile: 6.30/12.00 – 14.00/18.00<br />
da maggio a settembre: 6.30/12.00 – 14.00/19.00</p>

<p>Domenica e festivi continuato 6.30/18.30</p>
                </td>
            </tr>
        </table><hr />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <asp:Label ID="OrariLabel" runat="server" Text='<%# Bind("Orari") %>' />
        </ItemTemplate>

    </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Orari]"></asp:SqlDataSource>
</asp:Content>

