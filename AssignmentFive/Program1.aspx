<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program1.aspx.cs" Inherits="AssignmentFive.Program1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmployeeId" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone Number" />
                    <asp:BoundField DataField="Age" HeaderText="Age" />
                    <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                    <asp:HyperLinkField DataNavigateUrlFields="EmployeeId" DataNavigateUrlFormatString="view.aspx?ID={0}" HeaderText="HyperLink" Text="GO" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
