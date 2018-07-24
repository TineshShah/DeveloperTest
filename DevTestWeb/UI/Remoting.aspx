<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" ValidateRequest="false" CodeBehind="Remoting.aspx.cs" Inherits="Wescale.DevTestWeb.UI.Remoting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<h2>.NET-Remoting</h2>
	<h4>Ping-Service</h4>
    <asp:Panel ID="Panel1" runat="server" Height="100px" Width="700px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
	<p>Einfacher Ping-Service zum generellen Test der Remoting-Aufrufe.</p>
	<table>
		<tr>
			<td>
				<asp:Button runat="server" Text="Ping senden" ID="_sendPing" OnCommand="_sendPing_Command" CausesValidation="False" />
			</td>
		</tr>
		<tr>
			<td>
				<asp:Label runat="server" ID="_pingReturn" />
			</td>
		</tr>
	</table>
	<br />
	<br />
    </asp:Panel>
	<h4>Math-Service4</h4>
    <asp:Panel ID="Panel2" runat="server" Height="158px" Width="700px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
	<p>Ein Service-Aufruf zur Addition zweier ganzer Zahlen.</p>
	<table>
		<tr>
			<td>Erste ganze Zahl </td>
			<td>
				<asp:TextBox runat="server" ID="_op1" />
                <%--RequiredFieldValidator added--%>
                <asp:RequiredFieldValidator runat="server" ID="_valRequired1" ErrorMessage="Bitte einen Nummer angeben." ControlToValidate="_op1" ForeColor="Red" />
				<asp:RegularExpressionValidator ID="_val1" ControlToValidate="_op1" runat="server" ErrorMessage="Bitte nur ganze Zahlen" ValidationExpression="\d+" ForeColor="Red" />
			</td>
		</tr>
        <tr>
            <td>Zweite ganze Zahl </td>
            <td>
                <asp:TextBox runat="server" ID="_op2" />
                <%-- controltovalidate property updated and Validation Expression corrected
                <%--RequiredFieldValidator added--%>
                <asp:RequiredFieldValidator runat="server" ID="_valRequired2" ErrorMessage="Bitte einen Nummer abgeben." ControlToValidate="_op2" ForeColor="Red" />
                <asp:RegularExpressionValidator ID="_val2" ControlToValidate="_op2" runat="server" ErrorMessage="Bitte nur ganze Zahlen" ValidationExpression="\d+" ForeColor="Red"/> 
            </td>   
        </tr>
		<tr>
			<td colspan="2">
				<asp:Button runat="server" Text="Addieren" ID="_add" OnCommand="_add_Command" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<br />
			</td>
		</tr>
		<tr>
			<td>Ergebnis: </td>
			<td>
				<asp:Label runat="server" ID="_addResult" />
			</td>
		</tr>
	</table>
        </asp:Panel>
</asp:Content>
