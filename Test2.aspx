<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test2.aspx.cs" Inherits="Test2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/jquery.colorbox.js"></script>
    <link href="Content/colorbox.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            //Examples of how to assign the Colorbox event to elements
            $(".group1").colorbox({ maxHeight: '100%', rel: 'group1', transition: 'fade' });
        });
		</script>
<%--    <table class="tblCamere">
        <tr>
            <td><a class="group1" href="NewsImg/2/2.jpg" title="Doppia matrimoniale superior"><img src="NewsImg/2/2.jpg" /></a>
                <a class="group1" href="NewsImg/2/musica.jpg" title="Doppia matrimoniale superior"> <img src="NewsImg/2/musica.jpg" /></a>
                <a class="group1" href="NewsImg/2/pilippini.jpg" title="Doppia matrimoniale superior"> <img src="NewsImg/2/pilippini.jpg" /></a>
                <a class="group1" href="NewsImg/2/Santa.jpg" title="Doppia matrimoniale superior"></a>
                <a class="group1" href="NewsImg/2/WP_20140814_002.jpg" title="Doppia matrimoniale superior"></a>
            </td>
        </tr>
    </table>--%>
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
                            <img style="border: thin solid #9C9C9C; margin: 8px;" src="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>" />
                        </a>
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>

            </td>
        </tr>
    </table>
    </form>
</body>
</html>
