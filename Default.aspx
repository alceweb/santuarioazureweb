<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="HeadContent" ContentPlaceHolderID="HeadContent">
    <link href="Slideshow/css/demo.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="Slideshow/css/style.css" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Playfair+Display:400italic' rel='stylesheet' type='text/css' />
		<noscript>
			<link rel="stylesheet" type="text/css" href="Slideshow/css/noscript.css" />
		</noscript>
</asp:Content>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
     <div class="wrapper">
         <div id="ei-slider" class="ei-slider">
            <ul class="ei-slider-large">
                <li>
                    <img src="Slideshow/images/large/6.jpg" />
                    <div class="ei-title">
                        <a href="#nogo">
                            <h2></h2>
                            <h3></h3>
                        </a>
                    </div>
                </li>
                <li>
                    <img src="Slideshow/images/large/1.jpg" />
                    <div class="ei-title">
                        <h2></h2>
                        <h3></h3>
                    </div>
                </li>
                <li>
                    <img src="Slideshow/images/large/2.jpg" />
                    <div class="ei-title">
                        <h2></h2>
                        <h3></h3>
                    </div>
                </li>
                <li>
                    <img src="Slideshow/images/large/3.jpg" />
                    <div class="ei-title">
                        <h2></h2>
                        <h3></h3>
                    </div>
                </li>
                <li>
                    <img src="Slideshow/images/large/4.jpg" />
                    <div class="ei-title">
                        <h2></h2>
                        <h3></h3>
                    </div>
                </li>
                <li>
                    <img src="Slideshow/images/large/5.jpg" />
                    <div class="ei-title">
                        <h2></h2>
                        <h3></h3>
                    </div>
                </li>
                <li>
                    <img src="Slideshow/images/large/7.jpg" />
                    <div class="ei-title">
                        <h2></h2>
                        <h3 ></h3>
                    </div>
                </li>
            </ul>
            <!-- ei-slider-large -->
            <ul class="ei-slider-thumbs">
                <li class="ei-slider-element">Current</li>
                <li><a href="#">Slide 6</a><img src="Slideshow/images/thumbs/6.jpg" alt="thumb06" /></li>
                <li><a href="#">Slide 1</a><img src="Slideshow/images/thumbs/1.jpg" alt="thumb01" /></li>
                <li><a href="#">Slide 2</a><img src="Slideshow/images/thumbs/2.jpg" alt="thumb02" /></li>
                <li><a href="#">Slide 3</a><img src="Slideshow/images/thumbs/3.jpg" alt="thumb03" /></li>
                <li><a href="#">Slide 4</a><img src="Slideshow/images/thumbs/4.jpg" alt="thumb04" /></li>
                <li><a href="#">Slide 5</a><img src="Slideshow/images/thumbs/5.jpg" alt="thumb05" /></li>
                <li><a href="#">Slide 7</a><img src="Slideshow/images/thumbs/7.jpg" alt="thumb07" /></li>
            </ul>
            <!-- ei-slider-thumbs -->
        </div>
        <!-- ei-slider -->
    </div>
    <!-- wrapper -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
        <script type="text/javascript" src="Slideshow/js/jquery.eislideshow.js"></script>
        <script type="text/javascript" src="Slideshow/js/jquery.easing.1.3.js"></script>
        <script type="text/javascript">
            $(function () {
                $('#ei-slider').eislideshow({
                    animation: 'center',
                    autoplay: true,
                    slideshow_interval: 3000,
                    titlesFactor: 0
                });
            });
        </script>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
        <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <span class="NewsItems">
                    <asp:Label ID="DataLabel" CssClass="NewsData" runat="server" Text='<%# Eval("Data", "{0:dddd dd-MMM-yy}") %>' />
                    <br />
                    <asp:Label ID="TitoloLabel" CssClass="NewsTitolo" runat="server" Text='<%# Eval("Titolo") %>' />
                    <br /><br />
                    <a href='News.aspx?ID=<%# Eval("Id") %>' class="NewsA">
                        <img class="NewsImg" src='<%# "NewsImg/" + Eval("ID") + "/" + Eval("id") + ".jpg" %>' /></a>
                    <br />
                    <span>
                        <asp:Label ID="DescrizioneBreveLabel" CssClass="NewsDescrizione" runat="server" Text='<%# Eval("DescrizioneBreve") %>' />
                    </span>
                    <br />
                </span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <div id="itemPlaceholder" runat="server" style="">
                    </div>
                </div>
            </LayoutTemplate>
            <EmptyItemTemplate>
                <p id="P1" runat="server"></p>
            </EmptyItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
            SelectCommand='SELECT * FROM [News] WHERE ([DataInizio] <= { fn NOW() } AND [DataFine] >= { fn NOW() })'></asp:SqlDataSource>
</asp:Content>
