<%@ Page Title="" Language="C#" MasterPageFile="~/Program2/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AssignmentFive.Program2.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div>
            <table>
            <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>

                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="UserReg.aspx">Register</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    
</asp:Content>
