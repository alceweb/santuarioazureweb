<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <EmptyDataTemplate>
            <span>Non è stato restituito alcun dato.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            <td style="">
                <a class="linkag" style="float:right" href='<%# "NewsGalleria.aspx?id=" + Eval("Id")  %>'>Galleria fotografica</a>
            <asp:Label ID="DataLabel" CssClass="NewsData" runat="server" Text='<%# Eval("Data", "{0:dddd dd-MM-yy}") %>' Font-Size="1.9em" />
            <br />
            <asp:Label ID="TitoloLabel" CssClass="NewsTitolo" runat="server" Text='<%# Eval("Titolo") %>' />
            <br />
            <asp:Label ID="DescrizioneBreveLabel" CssClass="NewDescrizioneBreve" runat="server" Text='<%# Eval("DescrizioneBreve") %>' /><br /><br />
                <a class="linka" href='<%# "NewsGalleria.aspx?id=" + Eval("Id")  %>'>
            <img class="NewsImg" style="float:left; margin-right: 20px;" src='<%# "NewsImg/" + Eval("ID") + "/" + Eval("ID") + ".jpg" %>' /></a>
                </a>
                    <asp:Label CssClass="NewsDescrizione" ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                <br /><br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table id="Table1" style="margin:auto" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td1" runat="server">
                        <table class="tbl3"  id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr3" runat="server">
                    <td id="Td2" runat="server" style="">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [News] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

