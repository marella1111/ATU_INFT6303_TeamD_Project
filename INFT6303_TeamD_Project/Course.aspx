<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="INFT6303_TeamD_Project.Course" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     Registration Form<br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Course ID</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbox_cid" runat="server" Width="290px"></asp:TextBox>
            </td>
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbox_cid" ErrorMessage="* Faculty ID should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Course Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbox_name" runat="server" Width="290px"></asp:TextBox>
            </td>
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtbox_name" ErrorMessage="* Course Name should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Department</td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="290px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>NT</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList2" ErrorMessage="* Department should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Course Description</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbox_desc" runat="server" TextMode="MultiLine" Width="290px"></asp:TextBox>
            </td>
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtbox_desc" ErrorMessage="* Course description should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Faculty</td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="290px" AutoPostBack="True">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>NT</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="* Faculty field should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                <input id="Reset1" type="reset" value="reset" /></td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
