<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="StudentUpdate.aspx.cs" Inherits="INFT6303_TeamD_Project.StudentUpdate" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
    <nav class="navbar navbar-expand-md navbar-dark bg-primary fixed-left">
        <a class="navbar-brand" style="color: azure">
            <asp:Label ID="Label1" runat="server"></asp:Label></br><asp:Label ID="Label2" runat="server"></asp:Label></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
            aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="StudentProfile.aspx">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="StudentFeedback.aspx">Feedback</a>
                </li>
                <li class="nav-item" style="right: -10px; position: absolute; bottom: 10px;">
                    <asp:Button ID="btn_logout" runat="server" Text="Log Out" class="btn btn-light" OnClick="btn_logout_Click" />
                </li>
            </ul>
        </div>
    </nav>


    Registration Form<br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Tnumber</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbox_tno" runat="server" Width="290px"></asp:TextBox>
            </td>
            <td>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Full Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbox_name" runat="server" Width="290px"></asp:TextBox>
            </td>
            <td>
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
            <td>&nbsp;<br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Phone Number</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbox_phnno" runat="server" Width="290px"></asp:TextBox>
            </td>
            <td>
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtbox_address" ErrorMessage="* Address should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Department</td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="290px">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>NT</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Courses Registered</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server" Width="290px"></asp:TextBox>
            </td>
            <td>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbox_password" runat="server" TextMode="Password" Width="290px"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtbox_retypepassword" ControlToValidate="txtbox_password" ErrorMessage="* Passwords are not same " ForeColor="Red"></asp:CompareValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Retype Password</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbox_retypepassword" runat="server" Width="290px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtbox_password" ControlToValidate="txtbox_retypepassword" ErrorMessage="* Passwords are not same " ForeColor="Red"></asp:CompareValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </div>

</asp:Content>
