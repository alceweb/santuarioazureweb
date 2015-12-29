<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Grafico.aspx.cs" Inherits="Chart_Grafico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
		<script src="../Chart.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDSStaPage" runat="server"></asp:SqlDataSource>
		<div style="width: 50%">
<asp:Button ID="Button1" runat="server" Text="Button" />
			<canvas id="canvas" onmouseover="Canval_Load" height="450" width="600">
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
	<script>
	    var randomScalingFactor = function () { return Math.round(Math.random() * 100) };
	    
	    var miografico = {
	        labels: ["uno", "due", "tre"],
	        datasets: [{ data: ["1", "2", "3"] }, { data: [<%: num %>, "12", "15"] }]
	    }

	    var barChartData = {
	                        labels: [<%String[] dati = { "January", "February", "March", "April", "May", "June", "July" };%>],
	                        datasets: [
                                        {
                                            fillColor: "rgba(220,220,220,0.5)",
                                            strokeColor: "rgba(220,220,220,0.8)",
                                            highlightFill: "rgba(220,220,220,0.75)",
                                            highlightStroke: "rgba(220,220,220,1)",
                                            data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
                                        },
                                        {
                                            fillColor: "rgba(151,187,205,0.5)",
                                            strokeColor: "rgba(151,187,205,0.8)",
                                            highlightFill: "rgba(151,187,205,0.75)",
                                            highlightStroke: "rgba(151,187,205,1)",
                                            data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
                                        }
	                                   ]
                    	    }
	    window.onload = function () {
	        var ctx = document.getElementById("canvas").getContext("2d");
	        window.myBar = new Chart(ctx).Bar(miografico, {
	            responsive: true
	        });
	    }

	</script>
    </canvas>
		</div>
</asp:Content>

