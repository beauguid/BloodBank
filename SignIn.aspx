<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%;">
        
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
    <asp:Button ID="btnLogIn" runat="server" Text="Log In" OnClick="btnLogIn_Click" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click"/>
    <br />
    <asp:Label ID="lblResult" runat="server" Text="" />
</asp:Content>

