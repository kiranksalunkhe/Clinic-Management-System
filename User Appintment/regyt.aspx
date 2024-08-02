<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regyt.aspx.cs" Inherits="EHospitalMS.User_Appintment.regyt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-position: center center; font-family: 'baskerville Old Face'; font-size: x-large; color: #FF0000; background-image: url('../Assets/Images/Hospital.jpg'); background-attachment: scroll; background-repeat: inherit;">
    
        REGISTER<br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="USERNAME"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="PASSWORD"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" OnClick="Button1_Click" Text="REGISTER" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/User Appintment/Loginpgyt.aspx">Back to LoginPage</asp:HyperLink>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
