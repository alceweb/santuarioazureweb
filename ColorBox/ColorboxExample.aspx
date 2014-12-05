<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ColorboxExample.aspx.cs" Inherits="ColorBox_ColorboxExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<%--Adding colorbox.css link--%>
    <link href="ColorBox/colorbox.css" rel="stylesheet" type="text/css" />

    <%--Adding jQuery Script--%>
    <script src="../Scripts/jquery-2.1.1.min.js" type="text/javascript"></script>
    <%--Adding Colorbox Script--%>
    <script src="ColorBox/jquery.colorbox.js" type="text/javascript" ></script>

    <%--All the Hyperlinks having rel=example is been sent to colorbox, when clicked SlideShow will start with the popup window width and height as 500px--%>


</head>
<body>
    <form id="form1" runat="server">
    <div>
        <a class="example1" href="images/2.JPG" ><img  src="images/2.JPG" /></a>
        <a class="example1" href="images/musica.jpg"><img src="images/musica.jpg" /></a>
    <script type="text/javascript">
        $(document).ready(function () {
            $("a[rel='example1']").colorbox({ slideshow: true, width: 500, height: 500 });
        });
    </script>

    </div>
    </form>
</body>
</html>
