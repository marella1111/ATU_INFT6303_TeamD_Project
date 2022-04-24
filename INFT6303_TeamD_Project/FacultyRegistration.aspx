<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FacultyRegistration.aspx.cs" Inherits="INFT6303_TeamD_Project.FacultyRegistration" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Registration Form<br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Faculty ID</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbox_tno" runat="server" Width="290px"></asp:TextBox>
            </td>
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbox_tno" ErrorMessage="* Faculty ID should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Full Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbox_name" runat="server" Width="290px"></asp:TextBox>
            </td>
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtbox_name" ErrorMessage="* Name should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Email ID</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbox_email" runat="server" Width="290px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtbox_email" ErrorMessage="* Email should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtbox_email" ErrorMessage="* Email not valid format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Phone Number</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbox_phnno" runat="server" Width="290px"></asp:TextBox>
            </td>
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtbox_phnno" ErrorMessage="* Phone Number should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Address</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbox_address" runat="server" TextMode="MultiLine" Width="290px"></asp:TextBox>
            </td>
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtbox_address" ErrorMessage="* Address should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Department</td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="290px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>NT</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="* Department should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Courses Teaching </td>
            <td class="auto-style5">
                <asp:ListBox ID="ListBox1" runat="server" Width="290px" SelectionMode="Multiple"></asp:ListBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ListBox1" ErrorMessage="* Courses should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
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
