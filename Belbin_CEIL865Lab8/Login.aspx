<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="E-mail Address:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="UserEmail" runat="server" width="300px" TextMode="SingleLine"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="EmailFieldValidator" runat="server" ErrorMessage="Please Enter an Email" ControlToValidate="UserEmail" Text="Cannot be empty" ForeColor="#E71D36"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="UserPass" runat="server" width="300px" TextMode="SingleLine"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter a Password" ControlToValidate="UserPass" Text="Cannot be empty" ForeColor="#E71D36"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Remember Me?"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="Persist" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="BtnLogon" runat="server" Text="Log On" OnClick="BtnLogon_Click" />
                    </td>
                    <td>
                        <asp:Button ID="BtnLogonWebConfig" runat="server" Text="Log On - Web.config"  OnClick="BtnLogonWebConfig_Click"/>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Label ID="Message" runat="server" Text="" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
