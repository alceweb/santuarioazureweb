﻿<%@ Page Title="Eventi e attività" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="EleNews.aspx.cs" Inherits="EleNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h2><%= Title %></h2><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table>
        <tr>
            <td style="">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div class="divEventi" >
                    <a href='<%# ResolveUrl("~/News.aspx?Id=" + Eval("Id")) %>'>
                    <asp:Label  ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:dddd dd MMM yy}") %>' Font-Bold="True" Font-Italic="True" /><br />
                    <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' /><br />
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/NewsImg/" + Eval("Id") + "/" + Eval("Id") + ".jpg"  %>' PostBackUrl="~/News.aspx" />
                    </a>

            </div>
        </ItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT * FROM [News] ORDER BY [Data] DESC">

    </asp:SqlDataSource>

            </td>
        </tr>
    </table>

</asp:Content>

