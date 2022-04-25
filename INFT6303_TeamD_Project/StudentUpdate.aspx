<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="StudentUpdate.aspx.cs" Inherits="INFT6303_TeamD_Project.StudentUpdate" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="leftmargin">
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

        <div class='bold-line'></div>
        <div class='container'>
            <div class='window'>
                <div class="overlay" style="height: 850px;">
                </div>
                <div class='content'>
                    <div class='welcome'>Hello There!</div>
                    <div class='subtitle'>We're almost done. Before using our services you need to create an account.</div>

                    <div class='input-fields'>
                        <table>
                            <tr>
                                <td>
                                    <label class="auto-style1">Tnumber</label></td>
                                <td>
                                    <asp:TextBox ID="txtbox_tno" runat="server" class="input-line" Width="240px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>

                        <table>
                            <tr>
                                <td>
                                    <label class="auto-style1">Full name</label></td>
                                <td>
                                    <asp:TextBox ID="txtbox_name" runat="server" class="input-line" Width="240px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtbox_name" ErrorMessage="* Name should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        <table>
                            <tr>
                                <td>
                                    <label class="auto-style1">Email ID</label></td>
                                <td>
                                    <asp:TextBox ID="txtbox_email" runat="server" class="input-line" Width="240px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <label class="auto-style1">Phone Number</label></td>
                                <td>
                                    <asp:TextBox ID="txtbox_phnno" runat="server" class="input-line" Width="240px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtbox_phnno" ErrorMessage="* Phone Number should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <table>
                            <tr>
                                <td>
                                    <label class="auto-style1">Address</label></td>
                                <td>
                                    <asp:TextBox ID="txtbox_address" TextMode="MultiLine" runat="server" class="input-line" Width="240px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtbox_address" ErrorMessage="* Address should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <table>
                            <tr>
                                <td>
                                    <label class="auto-style4">Departments</label></td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="input-line" AutoPostBack="True" Style="height: 50px; width: 240px;">
                                        <asp:ListItem style="color: black;">select department</asp:ListItem>
                                        <asp:ListItem Value="NT" style="color: black;">NT</asp:ListItem>
                                        <asp:ListItem Value="IT" style="color: black;">IT</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <label class="auto-style1">Courses Registered</label></td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" Width="240px" class="input-line"></asp:TextBox>
                                </td>
                            </tr>
                        </table>

                        <table>
                            <tr>
                                <td>
                                    <label class="auto-style1">Password</label></td>
                                <td>
                                    <asp:TextBox ID="txtbox_password" TextMode="Password" runat="server" class="input-line" Width="240px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtbox_retypepassword" ControlToValidate="txtbox_password" ErrorMessage="* Passwords are not same " ForeColor="Red"></asp:CompareValidator>

                        <table>
                            <tr>
                                <td>
                                    <label class="auto-style1">Retype Password</label></td>
                                <td>
                                    <asp:TextBox ID="txtbox_retypepassword" TextMode="Password" runat="server" class="input-line" Width="240px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtbox_password" ControlToValidate="txtbox_retypepassword" ErrorMessage="* Passwords are not same " ForeColor="Red"></asp:CompareValidator>
                        <br />

                    </div>
                    <div>
                        <table>
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="Register" class="ghost-round" OnClick="Button1_Click" /></td>
                                <td>
                                    <input id="Reset1" type="reset" class='ghost-round' value="reset" /></td>
                            </tr>
                        </table>
                       
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 90px;
        }
    </style>
</asp:Content>

