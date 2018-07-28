<%@ Page Title="DefaultForm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" ValidateRequest="false" CodeBehind="DefaultForm.aspx.cs" Inherits="Wescale.DevTestWeb.UI.DefaultForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <p>DefaultForm</p>

    <table>
        <tr>
            <td style="height: 129px">
                <table>
                    <tr>
                        <td class="labelCol">
                            <asp:Label runat="server" ID="_nameLbl" CssClass="myLabel">Name</asp:Label></td>
                        <td>
                            <asp:TextBox runat="server" ID="_nameText"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="_nameRequired" ErrorMessage="Bitte einen Namen angeben." ControlToValidate="_nameText" ForeColor="Red" />

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="_qtyLbl" CssClass="myLabel">Menge</asp:Label></td>
                        <td>
                            <asp:TextBox runat="server" ID="_qtyText"></asp:TextBox>
                            <%--validators added--%>
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="Bitte einen menge angeben." ControlToValidate="_qtyText" ForeColor="Red" />
                            <asp:RegularExpressionValidator ID="_val1" ControlToValidate="_qtyText" runat="server" ErrorMessage="Bitte nur ganze Zahlen" ValidationExpression="\d+" ForeColor="Red" />
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="_lblPrice" CssClass="myLabel">Preis</asp:Label></td>
                        <td>
                            <%--validators added--%>
                            <asp:TextBox runat="server" ID="_priceTxt"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ErrorMessage="Bitte einen price angeben." ControlToValidate="_priceTxt" ForeColor="Red" />
                            <asp:RegularExpressionValidator ID="_val2" ControlToValidate="_priceTxt" runat="server" ErrorMessage="Bitte korrigieren Sie den Preis" ValidationExpression="\d+\.{0,1}\d*" ForeColor="Red" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="_currencyLbl" CssClass="myLabel">Währung</asp:Label></td>
                        <td>
                            <asp:ListBox runat="server" ID="_currencyList" Rows="1">
                                <asp:ListItem Text="USD" Value="USD" />
                                <asp:ListItem Text="CHF" Value="CHF" />
                                <asp:ListItem Text="EUR" Value="EUR" />
                                <%--Value Corrected--%>
                                <asp:ListItem Text="YEN" Value="YEN" />
                            </asp:ListBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: right">
                            <%--Page_ClientValidate added to check client validations--%>
                            <asp:Button runat="server" Text="Eingabe absenden" ID="_sendInput" OnCommand="_sendInput_Command" OnClientClick="if(Page_ClientValidate())return MyAwesomeMethod();" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <h3>Angaben nach Absenden des Formulars</h3>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="_selectedNameLbl" Text="Name" />
            </td>
            <td>
                <asp:Label runat="server" ID="_selectedName" /></td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="_selectedQtyLbl" Text="Menge" />
            </td>
            <td>
                <asp:Label runat="server" ID="_selectedQty" /></td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="_selectedPriceLbl" Text="Preis" />
            </td>
            <td>
                <asp:Label runat="server" ID="_selectedPrice" /></td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="_selectedCurrencyLbl" Text="Wähung (Wert)" />
            </td>
            <td>
                <asp:Label runat="server" ID="_selectedCurrency" /></td>
        </tr>
    </table>

    <script type="text/javascript">
        function MyAwesomeMethod() { 
            return confirm('Sicher, dass das abgesendet werden soll?'); //removed the negation
        }

    </script>
</asp:Content>
