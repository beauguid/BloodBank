<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SiteUsers.aspx.cs" Inherits="SiteUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Width="95%" BackColor="#B0C4DE">
        <h2>Site Users</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="site_user_id" DataSourceID="sdsSiteUsers">
            <Columns>
                <asp:BoundField DataField="site_user_id" HeaderText="site_user_id" InsertVisible="False" ReadOnly="True" SortExpression="site_user_id" Visible="False" />
                <asp:BoundField DataField="name" HeaderText="Name" ReadOnly="True" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="password_salt" HeaderText="Password Salt" SortExpression="password_salt" />
                <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                <asp:CheckBoxField DataField="account_active" HeaderText="Account Active" SortExpression="account_active" />
                <asp:BoundField DataField="created" HeaderText="Created" SortExpression="created" />
                <asp:BoundField DataField="updated" HeaderText="Updated" SortExpression="updated" />
                <asp:HyperLinkField DataNavigateUrlFields="site_user_id" DataNavigateUrlFormatString="~/SiteUser.aspx?site_user_id={0}" HeaderText="Edit" Text="edit" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sdsSiteUsers" runat="server" ConnectionString="<%$ ConnectionStrings:SE407_CS %>" SelectCommand="siteUsers_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <br /><br /><br />
    <asp:LinkButton ID="lbtnAdd" runat="server" Text="Add New" PostBackUrl="~/SiteUser.aspx" />
    </asp:Panel>
</asp:Content>

