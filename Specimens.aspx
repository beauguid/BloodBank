<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Specimens.aspx.cs" Inherits="Specimens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Width="95%" BackColor="#B0C4DE">
        <h2>Specimens</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="specimen_id" DataSourceID="sdsGetSpecimens">
            <Columns>
                <asp:BoundField DataField="specimen_id" HeaderText="specimen_id" InsertVisible="False" ReadOnly="True" SortExpression="specimen_id" Visible="False" />
                <asp:BoundField DataField="donation_id" HeaderText="Donation ID" SortExpression="donation_id" />
                <asp:BoundField DataField="specimen_type_id" HeaderText="Specimen Type ID" SortExpression="specimen_type_id" />
                <asp:BoundField DataField="storage_device_id" HeaderText="Storage Dev ID" SortExpression="storage_device_id" />
                <asp:BoundField DataField="volume" HeaderText="Volume" SortExpression="volume" />
                <asp:BoundField DataField="storage_date" HeaderText="Storage Date" SortExpression="storage_date" />
                <asp:CheckBoxField DataField="specimen_destroyed" HeaderText="Spec Destroyed" SortExpression="specimen_destroyed" />
                <asp:HyperLinkField DataNavigateUrlFields="specimen_id" DataNavigateUrlFormatString="~/Specimen.apx?specimen_id={0}" HeaderText="Edit" Text="edit" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sdsGetSpecimens" runat="server" ConnectionString="<%$ ConnectionStrings:SE407_CS %>" SelectCommand="specimens_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <br /><br /><br />
    <asp:LinkButton ID="lbtnAdd" runat="server" Text="Add New" PostBackUrl="~/Specimen.aspx" />
    </asp:Panel>
</asp:Content>

