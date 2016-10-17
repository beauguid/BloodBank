<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StorageLocations.aspx.cs" Inherits="StorageLocations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Width="95%" BackColor="#B0C4DE">
        <h2>Storage Locations</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="storage_location_id" DataSourceID="sdsStorageLocations">
            <Columns>
                <asp:BoundField DataField="storage_location_id" HeaderText="storage_location_id" InsertVisible="False" ReadOnly="True" SortExpression="storage_location_id" Visible="False" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="desc" HeaderText="Description" SortExpression="desc" />
                <asp:BoundField DataField="add_1" HeaderText="Address1" SortExpression="add_1" />
                <asp:BoundField DataField="add_2" HeaderText="Address 2" SortExpression="add_2" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="state_id" HeaderText="State" SortExpression="state_id" />
                <asp:BoundField DataField="zip_code" HeaderText="Zip" SortExpression="zip_code" />
                <asp:BoundField DataField="point_of_contact" HeaderText="Point of Contact" SortExpression="point_of_contact" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                <asp:BoundField DataField="fax" HeaderText="Fax" SortExpression="fax" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:CheckBoxField DataField="in_use" HeaderText="In Use" SortExpression="in_use" />
                <asp:HyperLinkField DataNavigateUrlFields="storage_location_id" DataNavigateUrlFormatString="~/StorageLocation.aspx?storage_location_id={0}" HeaderText="Edit" Text="edit" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sdsStorageLocations" runat="server" ConnectionString="<%$ ConnectionStrings:SE407_CS %>" SelectCommand="storageLocations_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <br /><br /><br />
    <asp:LinkButton ID="lbtnAdd" runat="server" Text="Add New" PostBackUrl="~/StorageLocation.aspx" />
    </asp:Panel>
</asp:Content>

