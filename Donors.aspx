<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Donors.aspx.cs" Inherits="Donors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%--Define a panel to control the rendering of form elements--%>
<asp:Panel ID="Panel1" runat="server" Width="95%" BackColor="#B0C4DE">
     <h2>Donors</h2>      
<%--Define your grid properties  Datakeynames = Your Primary key from the dataset--%>
<%--emptydatatext = What displays when the grid data source is empty--%>


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="donor_id" DataSourceID="getAllDonors">
        <Columns>
            <asp:BoundField ConvertEmptyStringToNull="False" DataField="donor_id" HeaderText="donor_id" InsertVisible="False" ReadOnly="True" SortExpression="donor_id" Visible="False" />
            <asp:BoundField DataField="donorName" HeaderText="Name" ReadOnly="True" SortExpression="donorName" />
            <asp:BoundField DataField="address_1" HeaderText="Address 1" SortExpression="address_1" />
            <asp:BoundField DataField="address_2" HeaderText="Address 2" SortExpression="address_2" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state_id" HeaderText="State" SortExpression="state_id" />
            <asp:BoundField DataField="zip_code" HeaderText="Zip" SortExpression="zip_code" />
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:CheckBoxField DataField="can_contact" HeaderText="Can Contact" SortExpression="can_contact" />
            <asp:HyperLinkField DataNavigateUrlFields="donor_id" DataNavigateUrlFormatString="~/Donor.aspx?donor_id={0}" HeaderText="Edit" Text="edit" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="getAllDonors" runat="server" ConnectionString="<%$ ConnectionStrings:SE407_CS %>" SelectCommand="donors_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


<br /><br /><br />
    <asp:LinkButton ID="lbtnAdd" runat="server" Text="Add New" PostBackUrl="~/Donor.aspx"/>
    </asp:Panel> 
</asp:Content>

