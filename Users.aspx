<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

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
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> </td>
            <td> <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="txtEmail"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox> </td>
            <td> <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="txtPassword"></asp:RequiredFieldValidator></td>
        </tr>



        
       
    </table>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

</asp:Content>

