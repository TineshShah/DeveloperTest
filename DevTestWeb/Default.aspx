<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Wescale.DevTestWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>WPSM Developer Test</h1>
        <p class="lead">Diese Anwendung ist zum Test eines Developers gedacht. Es sind einige Fehler eingebaut und Optimierungsmöglichkeiten geschaffen worden.</p>
        <p><a href="About" class="btn btn-primary btn-lg">Mehr infos &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Uuuuund los - oder doch nicht?</h2>
            <p>
                Das folgende Formular zeigt dir wie ein Standardformular bei uns im System aussieht, bzw. aussehen kann. Hier ist ja alles einstellbar, oder war das doch woanders?
            </p>
            <p>
                <a class="btn btn-default" href="UI/DefaultForm">Mehr infos &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>.NET-Remoting</h2>
            <p>
                Auf der folgenden Seite wird mit Remoting gearbeitet, dass wir zur Kommunikation zwischen Web und Dienst verwenden.
            </p>
            <p>
                <a class="btn btn-default" href="UI/Remoting">Mehr infos &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Database</h2>
            <p>
                On the following page you will find some database interaction with hibernate and sqllite.
            </p>
            <p>
                <a class="btn btn-default" href="UI/Database">Mehr infos &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
