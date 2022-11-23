<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AssignmentFive.Program2.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body><div style="float:right;">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Home.aspx">Logout</asp:HyperLink>
      </div>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" Text="Name : "></asp:Label>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Email : ">
            </asp:Label><asp:Label ID="Label4" runat="server" Text="">
            <br />
            </asp:Label><asp:Label ID="Label5" runat="server" Text="Phone Number : ">
            </asp:Label><asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Gender : "></asp:Label>
            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Date of Birth : "></asp:Label>
            <asp:Label ID="Label10" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
