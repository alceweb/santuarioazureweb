<%@ Page Title="Virtual tour" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="VirtualTour_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h2><%: Title %></h2><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table>
        <thead>
        </thead>
        <tr>
            <td ><h3>Dall'altare</h3>
                        <div id="dmd_pano_dIxWmE"></div>
                <script type="text/javascript">
                    var dmdEmbeds = dmdEmbeds || [], dIxWmE_w = '400', dIxWmE_h = '200';
                    (function () { dmdEmbeds.push('dIxWmE'); })();
                </script>
                <script type="text/javascript" src="http://static.dermandar.com/js/embed.js.php?v=88.78.59"></script>
            </td>
            <td ><h3>Dal Sacro Speco</h3>
                            <div id="dmd_pano_bJnMGk"></div>
                <script type="text/javascript">
                    var dmdEmbeds = dmdEmbeds || [], bJnMGk_w = '400', bJnMGk_h = '200';
                    (function () { dmdEmbeds.push('bJnMGk'); })();
                </script>
                <script type="text/javascript" src="http://static.dermandar.com/js/embed.js.php?v=88.78.59"></script>
            </td>
        </tr>
        <tr>
            <td ><h3>Dall'altare esterno</h3>
                            <div id="dmd_pano_bQyDrt"></div>
                <script type="text/javascript">
                    var dmdEmbeds = dmdEmbeds || [], bQyDrt_w = '400', bQyDrt_h = '200';
                    (function () { dmdEmbeds.push('bQyDrt'); })();
                </script>
                <script type="text/javascript" src="http://static.dermandar.com/js/embed.js.php?v=88.78.59"></script>
            </td>
            <td ><h3>Dalla fontana</h3>
                            <div id="dmd_pano_dQahzq"></div>
                <script type="text/javascript">
                    var dmdEmbeds = dmdEmbeds || [], dQahzq_w = '400', dQahzq_h = '200';
                    (function () { dmdEmbeds.push('dQahzq'); })();
                </script>
                <script type="text/javascript" src="http://static.dermandar.com/js/embed.js.php?v=88.78.59"></script>
            </td>
        </tr>
    </table>
</asp:Content>

