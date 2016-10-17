<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Donation.aspx.cs" Inherits="Donation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <table style="width: 100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Donor"></asp:Label> </td>
            <td>
                <asp:DropDownList ID="ddlDonor" runat="server" DataSourceID="sdsDonors" DataTextField="donorName" DataValueField="donor_id"></asp:DropDownList></td>
            <td> <asp:RequiredFieldValidator ID="rfvFirst" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="ddlDonor"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Donor Location"></asp:Label> </td>
            <td>
                <asp:DropDownList ID="ddlDonorLocation" runat="server" DataSourceID="sdsDonorLocation" DataTextField="location_name" DataValueField="donor_location_id"></asp:DropDownList></td>
            <td> <asp:RequiredFieldValidator ID="rfvDonorLocation" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="ddlDonorLocation"></asp:RequiredFieldValidator></td>
        </tr>

         <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Blood Group"></asp:Label> </td>
            <td>
                <asp:DropDownList ID="ddlBloodGroup" runat="server" DataSourceID="sdsBloodGroup" DataTextField="blood_group_id" DataValueField="blood_group_id">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList> </td>
            <td> <asp:RequiredFieldValidator ID="rfvBloodGroup" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="ddlBloodGroup"></asp:RequiredFieldValidator></td>
        </tr>

         <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Blood Type"></asp:Label> </td>
            <td>
                <asp:DropDownList ID="ddlBloodType" runat="server" DataSourceID="sdsBloodType" DataTextField="type_desc" DataValueField="blood_type_id"></asp:DropDownList> </td>
            <td> <asp:RequiredFieldValidator ID="rfvBloodType" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="ddlBloodType"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Collection Date"></asp:Label> </td>
            <td>
                <asp:Calendar ID="dtpCollectionDate" runat="server"></asp:Calendar> </td>
            <td> </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Is Tested?"></asp:Label> </td>
            <td>
                <asp:CheckBox ID="cbIsTested" runat="server" Text="tested"/> </td>
            <td> </td>
        </tr>

        

       
    </table>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
    <br />
    <asp:Label ID="lblResult" runat="server" Text="" />
    <asp:SqlDataSource ID="sdsDonors" runat="server" ConnectionString="<%$ ConnectionStrings:SE407_CS %>" SelectCommand="donors_getddl" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
     <asp:SqlDataSource ID="sdsBloodType" runat="server" ConnectionString="<%$ ConnectionStrings:SE407_CS %>" SelectCommand="blood_type_getddl" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
     <asp:SqlDataSource ID="sdsDonorLocation" runat="server" ConnectionString="<%$ ConnectionStrings:SE407_CS %>" SelectCommand="donor_location_getddl" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
     <asp:SqlDataSource ID="sdsBloodGroup" runat="server" ConnectionString="<%$ ConnectionStrings:SE407_CS %>" SelectCommand="blood_groups_getddl" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>

