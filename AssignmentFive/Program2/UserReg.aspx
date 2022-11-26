<%@ Page Title="" Language="C#" MasterPageFile="~/Program2/Site1.Master" AutoEventWireup="true" CodeBehind="UserReg.aspx.cs" Inherits="AssignmentFive.Program2.UserReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
<div>
<table>
                    <tr>
                        <td>
                            Registration Form
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>

                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="E-mail"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter E-Mail" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                        
                        
                    </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Phone"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Phone" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                        
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="gender" />
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="gender"/>
                        <asp:RadioButton ID="RadioButton3" runat="server" Text="Others" GroupName="gender"/>
                    </td>
                        
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="DOB"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                        
                </tr>
                <tr>
            <td class="auto-style8">Age</td>
            <td>  <asp:TextBox ID="age" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="age" ErrorMessage="Age should be in between 18 to 30" ForeColor="#CC0000" MaximumValue="30" MinimumValue="18"></asp:RangeValidator>
            </td>
        </tr>
                
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Username"></asp:Label>

                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                        
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Home.aspx">Login</asp:HyperLink>
                    </td>
                </tr>
            </table>
</div>


</asp:Content>
