<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASP_Kitchen_Sink._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET Kitchen Sink</h1>
        <p class="lead">This is an ASP.Net app used to demonstrate various ASP.Net Design Elements to be later refereneced on future builds.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2><span class="fa fa-bold"></span> Bootstrap</h2>
            <p>
                I changed the bootstrap theme using bootswatch and updated it to verions 4.0
            </p>
            <p>
                <a class="btn btn-default" href="https://bootswatch.com/">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2><span class="fa fa-flag"></span> Font Awesome</h2>
            <p>
                I am using font awesome for all of the logos on this site.
            </p>
            <p>
                <a class="btn btn-default" href="https://fontawesome.com/">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2><span class="fa fa-github"></span> GitHub</h2>
            <p>
                This repo is stored on github, under my account and can be accessed from anywhere for furture builds.
            </p>
            <p>
                <a class="btn btn-default" href="https://github.com/bull5150">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
