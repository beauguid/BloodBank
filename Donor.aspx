<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Donor.aspx.cs" Inherits="Donor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox> </td>
            <td> <asp:RequiredFieldValidator ID="rfvFirst" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="txtFirst"></asp:RequiredFieldValidator></td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtLast" runat="server"></asp:TextBox> </td>
            <td> <asp:RequiredFieldValidator ID="rfvLast" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="txtLast"></asp:RequiredFieldValidator></td>
        </tr>

         <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Address 1"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox> </td>
            <td> <asp:RequiredFieldValidator ID="rfvAddress1" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="txtAddress1"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Address 2"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox> </td>
            <td> </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="City"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox> </td>
            <td> <asp:RequiredFieldValidator ID="rfvCity" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="txtCity"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="State"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox> </td>
            <td> <asp:RequiredFieldValidator ID="rfvState" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="txtState"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Zip Code"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtZip" runat="server"></asp:TextBox> </td>
            <td> <asp:RequiredFieldValidator ID="rfvZip" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="txtZip">
                
                 </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revZip" runat="server" ControlToValidate="txtZip" ValidationExpression="\d{5}" ErrorMessage="Must be a five-digit U.S. zip code.">
                    </asp:RegularExpressionValidator>

            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Phone Number"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox> </td>
            <td> <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ValidationExpression= "((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ErrorMessage="Must be a valid U.S. phone number."></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> </td>
            <td> <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ErrorMessage="Invalid email.">
                    </asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Can Contact"></asp:Label> </td>
            <td>
                <asp:CheckBox ID="cbCanContact" runat="server" Text="Can Contact?"/> </td>
            <td> </td>
        </tr>

       
    </table>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
    <br />
    <asp:Label ID="lblResult" runat="server" Text="" />

</asp:Content>

