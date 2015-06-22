<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CenterEnrtyUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.CenterEnrtyUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 77px;
        }
    </style>
</head>
<body>
    <form id="centerForm" runat="server">
    <div>
    <table>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="CenterNameLabel" runat="server" Text="Name"></asp:Label></td>
            <td>
                <asp:TextBox ID="CenterNameTextBox" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="DistrictLabel" runat="server" Text="District"></asp:Label></td>
            <td>
                <asp:DropDownList ID="DistrictDropDownList" runat="server" Width="117px" AutoPostBack="True" OnSelectedIndexChanged="DistrictDropDownList_SelectedIndexChanged"></asp:DropDownList></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="ThanaLabel" runat="server" Text="Thana"></asp:Label></td>
            <td>
                <asp:DropDownList ID="ThanaDropDownList" runat="server" Height="16px" Width="117px"></asp:DropDownList></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="showMessageLabel" runat="server" Text=" "></asp:Label></td>
            <td align="right">
                <asp:Button ID="SaveCenterButton" runat="server" Text="Save" OnClick="SaveCenterButton_Click" /></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
