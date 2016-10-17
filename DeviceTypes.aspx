<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DeviceTypes.aspx.cs" Inherits="DeviceTypes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Panel ID="Panel1" runat="server" Width="95%" BackColor="#B0C4DE">
        <h2>Device Types</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="device_type_id" DataSourceID="sdsDeviceTypes">
            <Columns>
                <asp:BoundField DataField="device_type_id" HeaderText="device_type_id" InsertVisible="False" ReadOnly="True" SortExpression="device_type_id" Visible="False" />
                <asp:BoundField DataField="type_name" HeaderText="Type Name" SortExpression="type_name" />
                <asp:BoundField DataField="type_desc" HeaderText="Type Description" SortExpression="type_desc" />
                <asp:HyperLinkField DataNavigateUrlFields="device_type_id" DataNavigateUrlFormatString="~/DeviceType.aspx?device_type_id={0}" HeaderText="Edit" Text="edit" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sdsDeviceTypes" runat="server" ConnectionString="<%$ ConnectionStrings:SE407_CS %>" SelectCommand="storageDeviceTypes_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <br /><br /><br />
    <asp:LinkButton ID="lbtnAdd" runat="server" Text="Add New" PostBackUrl="~/DeviceType.aspx" />
    </asp:Panel>
</asp:Content>

