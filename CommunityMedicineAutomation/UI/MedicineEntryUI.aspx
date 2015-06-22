<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MedicineEntryUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.MedicineEntryUI" %>

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
                 <asp:Label ID="medicineNamelbl" runat="server" Text="Name of Medicine"></asp:Label></td>
             <td>
                 <asp:TextBox ID="MedicineTextBox" runat="server" Width="160px"></asp:TextBox></td>
         </tr>
        <tr>
            <td> </td> 
            <td align="right">
                <asp:Button ID="saveButton" runat="server" Text="Save" Width="66px" OnClick="saveButton_Click" /> </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Label ID="messageShowLabel" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
     </table>
    </div>
        <div>
            <asp:GridView ID="medicineGridView" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
