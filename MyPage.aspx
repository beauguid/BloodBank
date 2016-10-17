<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyPage.aspx.cs" Inherits="MyPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="First"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox> </td>
            <td> <asp:RequiredFieldValidator ID="rfvFirst" runat="server" 
                ErrorMessage="RequiredFieldValidator" ControlToValidate="txtFirst"></asp:RequiredFieldValidator></td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Last"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtLast" runat="server"></asp:TextBox> </td>
            <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="RequiredFieldValidator" ControlToValidate="txtLast"></asp:RequiredFieldValidator></td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> </td>
            <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="RequiredFieldValidator" ControlToValidate="txtEmail">

                 </asp:RequiredFieldValidator></td>
        </tr>
        
       
    </table>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
</asp:Content>

