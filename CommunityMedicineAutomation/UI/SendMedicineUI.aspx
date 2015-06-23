<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendMedicineUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.SendMedicineUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 73px;
        }
    </style>
</head>
<body>
    <form id="sendMedicineForm" runat="server">
        <div>
            <table>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="districtLabel" runat="server" Text="District"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DistrictDropDownList" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="DistrictDropDownList_SelectedIndexChanged1" Width="179px"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="ThanaLabel" runat="server" Text="Thana"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="ThanaDropDownList" runat="server" Width="180px" AutoPostBack="True" OnSelectedIndexChanged="ThanaDropDownList_SelectedIndexChanged"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="centerLabel" runat="server" Text="Center"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="CenterDropDownList" runat="server" Width="180px"></asp:DropDownList></td>
                </tr>
            </table>
        </div>
        <div>
            <asp:Label ID="addmedicinLabel" runat="server" Text="Add Medicine"></asp:Label>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="selectMedicineLabel" runat="server" Text="Select Medicine"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="MedicineDropDownList" runat="server" Width="157px"></asp:DropDownList></td>
                    <td>
                        <asp:Label ID="quantityLabel" runat="server" Text="Quantity"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="quantityTextBox" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="addButton" runat="server" Text="Add" OnClick="addButton_Click" /></td>
                </tr>
                </table>
        </div>
        <div>
            <asp:GridView ID="MedicineGridView" runat="server"></asp:GridView>
            <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" />
        </div>
    </form>
</body>
</html>
