<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FacultyFeedbackForm.aspx.cs" Inherits="INFT6303_TeamD_Project.FacultyFeedbackForm" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="w-100">
        <tr>
            <td class="auto-style4">Course</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Width="290px">
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" />
    <br />
</asp:Content>
