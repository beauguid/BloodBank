<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DeviceType.aspx.cs" Inherits="DeviceType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Type Name"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtTypeName" runat="server" ></asp:TextBox> </td>
            <td> <asp:RequiredFieldValidator ID="rfvTypeName" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="txtTypeName"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Type Description"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtTypeDesc" runat="server" ></asp:TextBox> </td>
            <td> <asp:RequiredFieldValidator ID="rfvTypeDesc" runat="server" 
                ErrorMessage="Required Field" ControlToValidate="txtTypeDesc"></asp:RequiredFieldValidator></td>
        </tr>


    </table>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
    <br />
    <asp:Label ID="lblResult" runat="server" Text="" />
</asp:Content>

