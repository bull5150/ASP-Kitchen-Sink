<%@ Page Title="Forms" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="E500.aspx.cs" Inherits="ASP_Kitchen_Sink.E500" %>

    <asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

        <div class="jumbotron">
            <h1><%: Title %></h1>
            <p class="lead">General Error page but really only happens when the insert on the forms gets messedup</p>
        </div>
        <asp:Label ID="lblErrorMsg" runat="server"></asp:Label>
    </asp:Content>
