<%@ Page Title="Charts" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Charts.aspx.cs" Inherits="ASP_Kitchen_Sink.Charts" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="padding-top:5px; padding-bottom:5px;">
        <h1><%: Title %></h1>
        <p class="lead">This is an example of hard coding a chart object on the .aspx file but then being able to dynamically set the values in C#.  It would be really easy to add some SQL data and assign it in C# to the chart.</p>
    </div>
    <p><asp:Button class="btn btn-primary btn-lg" style="float:right;" ID="RandoBtn" OnClick="RandoBtn_Click" runat="server" Text="Randomize Data"/></p>
    <asp:Chart ID="Chart1" runat="server" Height="600px" Width="800px">
        <series>
            <asp:Series Name="Series1">
                <Points>
				    <asp:DataPoint AxisLabel="Test 1" YValues="10" />
				    <asp:DataPoint AxisLabel="Test 2" YValues="30" />
				    <asp:DataPoint AxisLabel="Test 3" YValues="20" />
				    <asp:DataPoint AxisLabel="Test 4" YValues="40" />
			    </Points>
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
</asp:Content>
