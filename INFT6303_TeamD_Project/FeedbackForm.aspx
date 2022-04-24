<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FeedbackForm.aspx.cs" Inherits="INFT6303_TeamD_Project.FeedbackForm" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style3">Department</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="290px" OnselectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>NT</asp:ListItem>
                        <asp:ListItem>IT</asp:ListItem>
                    </asp:DropDownList>
            </td>
            <td class="auto-style4">Course</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Width="290px">
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" Text="Submit" />
    <br />
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 298px;
        }
    </style>
</asp:Content>

