<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Admin_Main" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <h3>Da qui puoi gestire tutte le parti dinamiche del sito.</h3>
   <ul>
        <li>News testo date e immagini
        
    </li>
        <li>Preghiere testi e abilitazione alla pubblicazione</li>
        <li>Pubblicazioni</li>
    </ul>
    <hr />
    <h3>Statistiche ultimo anno</h3><br />
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Palette="None" BackGradientStyle="Center" BackColor="#CCC1BA" BackImageTransparentColor="White" BackImageWrapMode="Scaled">
        <Series>
            <asp:Series Name="Series1" XValueMember='mese' YValueMembers="numero" XAxisType="Primary" IsXValueIndexed="True" XValueType="Auto" IsValueShownAsLabel="False" YValuesPerPoint="1" BackImageWrapMode="Tile" Enabled="True" ShadowOffset="5" YAxisType="Primary" IsVisibleInLegend="True">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1" Area3DStyle-Enable3D="False" BackGradientStyle="Center" IsSameFontSizeForAllAxes="True" BackColor="#CCC1BA"></asp:ChartArea>
        </ChartAreas>
        <Titles>
            <asp:Title Name="Titolo" Text="Trend invio preghiere per mese">
            </asp:Title>
        </Titles>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"/>
    <asp:Chart ID="ChartAccessi" runat="server" DataSourceID="SqlDataSource2">
        <Series>
            <asp:Series Name="Series1" XValueMember='mese' YValueMembers="numero" XAxisType="Primary" IsXValueIndexed="True" XValueType="Auto" IsValueShownAsLabel="False" YValuesPerPoint="1" ShadowOffset="5">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartAreaAccessi"></asp:ChartArea>
        </ChartAreas>
        <Titles>
            <asp:Title Name="Titolo" Text="Trend accesso area riservata per mese">
            </asp:Title>
        </Titles>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"/>
    <asp:Chart ID="ChartNuoviUtenti" runat="server" DataSourceID="SqlDataSource3">
        <Series>
            <asp:Series Name="Series1" XValueMember='mese' YValueMembers="numero" XAxisType="Primary" IsXValueIndexed="True" XValueType="Auto" IsValueShownAsLabel="False" YValuesPerPoint="1" ShadowOffset="5">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartAreaNuoviUtenti"></asp:ChartArea>
        </ChartAreas>
        <Titles>
            <asp:Title Name="Titolo" Text="Trend nuove iscrizioni per mese">
            </asp:Title>
        </Titles>
    </asp:Chart>
        <asp:SqlDataSource ID="SqlDSNL" runat="server"></asp:SqlDataSource>
    <asp:Chart ID="ChartNL" runat="server" DataSourceID="SqlDSNL" Palette="None" BackGradientStyle="Center" BackColor="204, 193, 186" BackImageTransparentColor="White" BackImageWrapMode="Scaled" >
        <Series>
            <asp:Series Name="Series1" XValueMember='Mese' YValueMembers="Numero" XAxisType="Primary" IsXValueIndexed="True" XValueType="Auto" IsValueShownAsLabel="False" YValuesPerPoint="1" BackImageWrapMode="Tile" Enabled="True" ShadowOffset="5">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1" Area3DStyle-Enable3D="False" BackGradientStyle="Center" IsSameFontSizeForAllAxes="True" BackColor="#CCC1BA"></asp:ChartArea>
        </ChartAreas>
        <Titles>
            <asp:Title Name="Titolo" Text="Trend iscrizione newsletter">
            </asp:Title>
        </Titles>
    </asp:Chart><hr />
    <h3>Statistiche generali dalla pubblicazione del sito</h3><br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"/>
        <asp:SqlDataSource ID="SqlDSStaPage" runat="server"></asp:SqlDataSource>
    <asp:Chart ID="ChartPage" runat="server" DataSourceID="SqlDSStaPage" Palette="None" BackGradientStyle="Center" BackColor="204, 193, 186" BackImageTransparentColor="White" BackImageWrapMode="Scaled" Width="1024px">
        <Series>
            <asp:Series Name="Series1" XValueMember='Pagina' YValueMembers="Numero" XAxisType="Primary" IsXValueIndexed="True" XValueType="Auto" IsValueShownAsLabel="True" YValuesPerPoint="1" BackImageWrapMode="Tile" Enabled="True" ShadowOffset="5">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1" Area3DStyle-Enable3D="False" BackGradientStyle="Center" IsSameFontSizeForAllAxes="True" BackColor="#CCC1BA"></asp:ChartArea>
        </ChartAreas>
        <Titles>
            <asp:Title Name="Titolo" Text="Pagine più significative, con accessi superiori a 3.000 unità">
            </asp:Title>
        </Titles>
    </asp:Chart>
</asp:Content>

