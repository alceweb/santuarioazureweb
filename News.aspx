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
            <span class="NewsItem" style="">
                <a class="linkag" style="float:right" href='<%# "NewsGalleria.aspx?id=" + Eval("Id")  %>'>Galleria fotografica</a>
            <asp:Label ID="DataLabel" CssClass="NewsData" runat="server" Text='<%# Eval("Data", "{0:dddd dd-MM-yy}") %>' Font-Size="1.9em" />
            <br />
            <asp:Label ID="TitoloLabel" CssClass="NewsTitolo" runat="server" Text='<%# Eval("Titolo") %>' />
            <br />
            <asp:Label ID="DescrizioneBreveLabel" CssClass="NewDescrizioneBreve" runat="server" Text='<%# Eval("DescrizioneBreve") %>' /><br /><br />
            <img class="NewsImg" style="float:left; margin-right: 20px;" src='<%# "NewsImg/" + Eval("ID") + "/" + Eval("ID") + ".jpg" %>' /></a>
                <asp:Label CssClass="NewsDescrizione" ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                <br />
<br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" >
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [News] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

