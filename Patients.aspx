<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Patients.aspx.cs" Inherits="Patients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--- Server-Side content pane declaration---%>
    <table style="width: 100%;">
        <tr>
            <td>
                Location Name:
            </td>
            <td>
                <asp:TextBox ID="txtLocName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvLocName" runat="server" 
                ErrorMessage="Location Name Required" Display="static" ControlToValidate="txtLocName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Location Desc:
            </td>
            <td>
                <asp:TextBox ID="txtLocDesc" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvLocDesc" runat="server" 
                ErrorMessage="Location Desc Required" Display="static" ControlToValidate="txtLocDesc"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Is Active:
            </td>
            <td>
                <asp:CheckBox ID="cbxIsActive" runat="server" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr><td colspan="3" style="text-align:center;"><asp:LinkButton ID="lbtnSave" runat="server" Text="Save"/></td></tr>
         <tr><td colspan="3" style="text-align:center;"><asp:LinkButton ID="lbtnCancel" 
                 runat="server" Text="Cancel" CausesValidation="false" 
                 onclick="lbtnCancel_Click"/></td></tr>
    </table>

</asp:Content>

