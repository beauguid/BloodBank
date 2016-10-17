<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Specimen.aspx.cs" Inherits="Specimen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Donation ID"></asp:Label> </td>
            <td>
                <asp:DropDownList ID="ddlDonationID" runat="server" DataSourceID="sdsGetDonationID" DataTextField="donation_id" DataValueField="donation_id"></asp:DropDownList>
                <asp:SqlDataSource ID="sdsGetDonationID" runat="server" ConnectionString="<%$ ConnectionStrings:SE407_CS %>" SelectCommand="donations_getddl" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </td>
            <td> </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Specimen Type"></asp:Label> </td>
            <td>
                <asp:DropDownList ID="ddlSpecimenType" runat="server" DataSourceID="sdsGetSpecimenTypes" DataTextField="type_name" DataValueField="specimen_type_id"></asp:DropDownList>
                <asp:SqlDataSource ID="sdsGetSpecimenTypes" runat="server" ConnectionString="<%$ ConnectionStrings:SE407_CS %>" SelectCommand="specimen_types_getddl" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </td>
            <td> </td>
        </tr>

         <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Storage Device"></asp:Label> </td>
            <td>
                <asp:DropDownList ID="ddlStorageDevice" runat="server" DataSourceID="sdsGetStorageDevices" DataTextField="deviceDesc" DataValueField="storage_device_id"></asp:DropDownList> 
                <asp:SqlDataSource ID="sdsGetStorageDevices" runat="server" ConnectionString="<%$ ConnectionStrings:SE407_CS %>" SelectCommand="storageDevices_getddl" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
             </td>
            <td> </td>
        </tr>

         <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Volume"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtVolume" runat="server" ></asp:TextBox> </td>
            <td> <asp:RequiredFieldValidator ID="rfvVolume" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="txtVolume"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Storage Date"></asp:Label> </td>
            <td>
                <asp:Calendar ID="dtpStorageDate" runat="server"></asp:Calendar> </td>
            <td> </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Specimen Destroyed?"></asp:Label> </td>
            <td>
                <asp:CheckBox ID="cbIsDestroyed" runat="server" Text="destroyed"/> </td>
            <td> </td>
        </tr>

        

       
    </table>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
    <br />
    <asp:Label ID="lblResult" runat="server" Text="" />

</asp:Content>

