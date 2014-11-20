﻿<%@ Page Title="Eventi e attività" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="EleNews.aspx.cs" Inherits="EleNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h2><%= Title %></h2><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <tr >
                    
                <td>
                    <a href='<%# ResolveUrl("~/News.aspx?Id=" + Eval("Id")) %>'>
                    <asp:Label  ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:dddd dd MMM yy}") + " -   " %>' Font-Bold="True" Font-Italic="True" />
                    <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                    <asp:Label ID="DescrizioneBreveLabel" runat="server" Text='<%# Eval("DescrizioneBreve") %>' />
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/NewsImg/" + Eval("Id") + "/" + Eval("Id") + ".jpg"  %>' PostBackUrl="~/News.aspx" />
                    </a>
                </td>
            </tr>
        </ItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>Non è stato restituito alcun dato.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table class="tbl2"  id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">Fai click sull'immagina per approfondire</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="10">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT * FROM [News] ORDER BY [Data] DESC">

    </asp:SqlDataSource>

</asp:Content>
