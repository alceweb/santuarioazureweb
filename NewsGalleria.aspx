<%@ Page Title="Galleria fotografica" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NewsGalleria.aspx.cs" Inherits="NewsGalleria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/jquery.colorbox.js"></script>
    <link href="Content/colorbox.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h2><%= Title %></h2><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <script type="text/javascript">
        $(document).ready(function () {
            //Examples of how to assign the Colorbox event to elements
            $(".group1").colorbox({ maxHeight: '100%', rel: 'group1', transition: 'fade' });
        });
		</script>
    <table class="tbl3">
        <tr>
            <td>
                <asp:Repeater ID="lista" runat="server">
                    <HeaderTemplate>
                        <div class="galla">
                        </div>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <a class="group1" href="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>">
                            <img class="NewsImg" style="border: thin solid #9C9C9C; margin: 8px;" src="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>" />
                        </a>
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>

            </td>
        </tr>
    </table>
</asp:Content>

