<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StorageDevice.aspx.cs" Inherits="StorageDevice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Device Type"></asp:Label> </td>
            <td>
                <!--Drop down list is populated by results of sql stored procedure that gets the device type name as display and device type id as value -->
                <asp:DropDownList ID="ddlDeviceType" runat="server" DataSourceID="sdsDeviceType" DataTextField="type_name" DataValueField="device_type_id"></asp:DropDownList>
                <asp:SqlDataSource ID="sdsDeviceType" runat="server" ConnectionString="<%$ ConnectionStrings:SE407_CS %>" SelectCommand="storageDeviceTypes_getddl" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </td>
            <td> <asp:RequiredFieldValidator ID="rfvDeviceType" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="ddlDeviceType"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Storage Location"></asp:Label> </td>
            <td>
                <asp:DropDownList ID="ddlStorageLocation" runat="server" DataSourceID="sdsStorageLocation" DataTextField="name" DataValueField="storage_location_id"></asp:DropDownList>
                <asp:SqlDataSource ID="sdsStorageLocation" runat="server" ConnectionString="<%$ ConnectionStrings:SE407_CS %>" SelectCommand="storageLocations_getddl" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </td>
            <td> <asp:RequiredFieldValidator ID="rfvStorageLocation" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="ddlStorageLocation"></asp:RequiredFieldValidator></td>
        </tr>

         <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Manufacturer"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtMfg" runat="server" ></asp:TextBox> </td>
            <td><!--This field is required --> 
                <asp:RequiredFieldValidator ID="rfvMfg" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="txtMfg"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Model"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtModel" runat="server" ></asp:TextBox> </td>
            <td> <!--This field is required --> <asp:RequiredFieldValidator ID="rfvModel" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="txtModel"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtDesc" runat="server" ></asp:TextBox> </td>
            <td> <!--This field is required --> <asp:RequiredFieldValidator ID="rfvDesc" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="txtDesc"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="In Use?"></asp:Label> </td>
            <td>
                <asp:CheckBox ID="cbInUse" runat="server" Text="in use"/> </td>
            <td> </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Device Monitored?"></asp:Label> </td>
            <td>
                <asp:CheckBox ID="cbDevMonitored" runat="server" Text="monitored"/> </td>
            <td> </td>
        </tr>

        

       
    </table>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
    <br />
    <asp:Label ID="lblResult" runat="server" Text="" />
</asp:Content>

