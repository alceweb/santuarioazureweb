<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ColorBox.aspx.cs" Inherits="ColorBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Scripts/jquery-2.1.1.min.js"></script>
        <script src="jquery.colorbox.js"></script>
    <link href="Content/colorbox.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            //Examples of how to assign the Colorbox event to elements
            $(".group1").colorbox({ maxHeight: '100%', rel: 'group1', transition: 'fade' });
            $(".group2").colorbox({ maxHeight: '100%', rel: 'group2', transition: 'fade' });
            $(".group3").colorbox({ maxHeight: '100%', rel: 'group3', transition: 'fade' });
            $(".group4").colorbox({ maxHeight: '100%', rel: 'group4', transition: 'fade' });
            $(".group5").colorbox({ maxHeight: '100%', rel: 'group5', transition: 'fade' });
            $(".group6").colorbox({ maxHeight: '100%', rel: 'group6', transition: 'fade' });
            $(".group7").colorbox({ maxHeight: '100%', rel: 'group7', transition: 'fade' });
            $(".group8").colorbox({ maxHeight: '100%', rel: 'group8', transition: 'fade' });
        });
		</script>
    <table class="tblCamere">
        <tr>
           <td >
                <h3>Doppia/matrimoniali superior <span><em>- € 87,00</em></span></h3>
                <p>
                    climatizzatore a controllo individuale,<br />
                    t/v color con ricezione satellitare,<br />
                    telefono,<br />
                    frigo bar
                </p>
            </td>  
            <td><a class="group6" href="Images/MSup.jpg" title="Doppia matrimoniale superior">
                <img src="Images/MSup-s.jpg" /></a>
                <a class="group6" href="Images/BasilicaRilievo.png" title="Doppia matrimoniale superior"> <img src="Images/BasilicaRilievo.png" /></a>
                <a class="group6" href="Images/ioeal.jpg" title="Doppia matrimoniale superior"> <img src="Images/ioeal.jpg" /></a>
                <a class="group6" href="Images/messa.jpg" title="Doppia matrimoniale superior"></a>
                <a class="group6" href="Images/offerte.jpg" title="Doppia matrimoniale superior"></a>
                <a class="group6" href="Images/Madonna.png" title="Doppia matrimoniale superior"></a>
            </td>
           
        </tr>
        <tr>
            
            <td >
                <p>
                    Prezzi per camera, colazione inclusa 

                </p>
            </td><td></td>
        </tr>
    </table>
    </form>
</body>
</html>
