<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Welcome" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Button ID="Sign_Out" runat="server" Text="Sign Out" onClick="Sign_Out_Click"/>
        </div>
    </form>
</body>
</html>
