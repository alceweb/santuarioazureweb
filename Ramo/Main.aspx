<%@ Page Title="Il ramo fiorito" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Ramo_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
<h2><%: Title %></h2><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
                        <h2>La rivista del Santuario</h2>
    <span class="float-right" ><br /><br />

    </span>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" >
        <AlternatingItemTemplate>
            <tr style="background-image: url('http://localhost:3517/santuarioazureweb/Images/SfondoTabellaNews.png')">
                <td>
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:dd MMMM yyyy}") %>' />
                </td>
                <td>
                        <asp:Repeater ID="lista" runat="server" 
                            DataSource='<%# System.IO.Directory.GetFiles(Server.MapPath("~/Ramo/"), Eval("id") + ".pdf") %>' 
                            EnableTheming="False">
                        <HeaderTemplate>
                            <div>
                            </div>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <a target="_blank" href='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>'>Leggi</a>
                        </ItemTemplate>
                        <FooterTemplate></ul></FooterTemplate>
                    </asp:Repeater>
                </td>
            </tr>
        </AlternatingItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:dd MMMM yyyy}") %>' />
                </td>
                <td>
                        <asp:Repeater ID="lista" runat="server" 
                            DataSource='<%# System.IO.Directory.GetFiles(Server.MapPath("~/Ramo/"), Eval("id") + ".pdf") %>' 
                            EnableTheming="False">
                        <HeaderTemplate>
                            <div>
                            </div>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <a target="_blank" href='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>'>Leggi</a>    

                        </ItemTemplate>
                        <FooterTemplate></ul></FooterTemplate>
                    </asp:Repeater>
                </td>
            </tr>
        </ItemTemplate>
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="">
                <tr>
                    <td>Non è stato restituito alcun dato.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Delete" Text="Elimina" />
                    <asp:LinkButton ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
        <LayoutTemplate>
            <table style="margin:auto" runat="server">
                <tr>
                    <td>
                        <h3  style="text-align:center">Tutti i numeri</h3>
                    </td>
                </tr>
                <tr id="Tr1" runat="server">
                    <td id="Td1" runat="server">
                        <table class="tbl2" id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="Tr2" runat="server" style="">
                                <th colspan="2" id="Th1" runat="server"><img src="../Images/Ramo1.pnG" /></th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr3" runat="server">
                    <td id="Td2" runat="server" style="text-align:center">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="48">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT * FROM [Ramo] ORDER BY [Data] DESC" >
    </asp:SqlDataSource>
</asp:Content>

