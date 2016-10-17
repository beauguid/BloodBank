<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Donations.aspx.cs" Inherits="Donations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Panel ID="Panel1" runat="server" Width="95%" BackColor="#B0C4DE">
        <h2>Donations</h2>
        <asp:GridView ID="GridView2" runat="server" DataSourceID="sdsGetAllDonations" AutoGenerateColumns="False" DataKeyNames="donation_id">
            <Columns>
                <asp:BoundField DataField="donation_id" HeaderText="donation_id" InsertVisible="False" ReadOnly="True" SortExpression="donation_id" Visible="False" />
                <asp:BoundField DataField="donor_id" HeaderText="Donor ID" SortExpression="donor_id" />
                <asp:BoundField DataField="donor_location_id" HeaderText="Donor Loc ID" SortExpression="donor_location_id" />
                <asp:BoundField DataField="blood_group_id" HeaderText="Blood Group" SortExpression="blood_group_id" />
                <asp:BoundField DataField="blood_type_id" HeaderText="Blood Type" SortExpression="blood_type_id" />
                <asp:BoundField DataField="collection_date" HeaderText="Collection Date" SortExpression="collection_date" />
                <asp:CheckBoxField DataField="tested" HeaderText="Tested" SortExpression="tested" />
                <asp:HyperLinkField DataNavigateUrlFields="donation_id" DataNavigateUrlFormatString="~/Donation.aspx?donation_id={0}" HeaderText="Edit" Text="edit" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sdsGetAllDonations" runat="server" ConnectionString="<%$ ConnectionStrings:SE407_CS %>" SelectCommand="donations_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <br /><br /><br />
    <asp:LinkButton ID="lbtnAdd" runat="server" Text="Add New" PostBackUrl="~/Donation.aspx" />
    </asp:Panel>
</asp:Content>

