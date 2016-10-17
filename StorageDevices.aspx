<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StorageDevices.aspx.cs" Inherits="StorageDevices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Width="95%" BackColor="#B0C4DE">
        <h2>Storage Devices</h2>
         <!--gets storage device data from storage device table as a data source using the get all stored procedure --> 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="storage_device_id" DataSourceID="sdsStorageDevices">
            <Columns>
                <asp:BoundField DataField="storage_device_id" HeaderText="storage_device_id" InsertVisible="False" ReadOnly="True" SortExpression="storage_device_id" Visible="False" />
                <asp:BoundField DataField="device_type_id" HeaderText="Device Type ID" SortExpression="device_type_id" />
                <asp:BoundField DataField="storage_location_id" HeaderText="Storage Loc ID" SortExpression="storage_location_id" />
                <asp:BoundField DataField="mfg" HeaderText="Mfg" SortExpression="mfg" />
                <asp:BoundField DataField="moldel" HeaderText="Model" SortExpression="moldel" />
                <asp:BoundField DataField="desc" HeaderText="Description" SortExpression="desc" />
                <asp:CheckBoxField DataField="in_use" HeaderText="In Use" SortExpression="in_use" />
                <asp:CheckBoxField DataField="device_monitored" HeaderText="Monitored" SortExpression="device_monitored" />
                <asp:HyperLinkField DataNavigateUrlFields="storage_device_id" DataNavigateUrlFormatString="~/StorageDevice.aspx?storage_device_id={0}" HeaderText="Edit" Text="edit" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sdsStorageDevices" runat="server" ConnectionString="<%$ ConnectionStrings:SE407_CS %>" SelectCommand="storageDevices_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <br /><br /><br />
    <asp:LinkButton ID="lbtnAdd" runat="server" Text="Add New" PostBackUrl="~/StorageDevice.aspx" />
    </asp:Panel>
</asp:Content>

