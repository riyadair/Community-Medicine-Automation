<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DiseaseEntryUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.DiseaseEntryUI" %>

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
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label> </td>
                    <td> <asp:TextBox ID="diseaseNameTextBox" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label> </td>
                    <td> <asp:TextBox ID="descriptionTextBox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Treatment Procedure"></asp:Label> </td>
                    <td> <asp:TextBox ID="treatmentTextBox" runat="server"></asp:TextBox></td>
                    <td> <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" /></td>
                </tr>
                <tr>
                    <td> </td>
                    <td> <asp:Label ID="messageShowLabel" runat="server" Text=" "></asp:Label></td>
                </tr>
            </table>
        </div>
        <div>
            <asp:GridView ID="diseaseGridView" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
