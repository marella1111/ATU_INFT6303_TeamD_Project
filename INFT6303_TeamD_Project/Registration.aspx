<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="INFT6303_TeamD_Project.Registration" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class='bold-line'></div>
    <div class='container'>
        <div class='window'>
            <div class="overlay" style="height: 1050px;">
            </div>
            <div class='content'>
                <div class='welcome'>Hello There!</div>
                <div class='subtitle'>We're almost done. Before using our services you need to create an account.</div>

                <div class='input-fields'>
                    <table>
                        <tr>
                            <td>
                                <label class="auto-style4">Tnumber</label></td>
                            <td>
                                <asp:TextBox ID="txtbox_tno" runat="server" class="input-line" Width="240px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtbox_tno" ErrorMessage="* Tnumber should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <table>
                        <tr>
                            <td>
                                <label class="auto-style4">Full name</label></td>
                            <td>
                              <asp:TextBox ID="txtbox_name" runat="server" class="input-line" Width="240px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtbox_name" ErrorMessage="* Name should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <table>
                        <tr>
                            <td>
                                <label class="auto-style4">Email ID</label></td>
                            <td>
                                <asp:TextBox ID="txtbox_email" runat="server" class="input-line" Width="240px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbox_email" ErrorMessage="* Email should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtbox_email" ErrorMessage="* Email not valid format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <table>
                        <tr>
                            <td>
                                <label class="auto-style4">Phone Number</label></td>
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
                                <label class="auto-style4">Address</label></td>
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
                                <asp:DropDownList ID="DropDownList1" runat="server" class="input-line" OnselectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" Style="height: 50px; width: 240px;">
                                    <asp:ListItem style="color: black;">select department</asp:ListItem>
                                    <asp:ListItem Value="NT" style="color: black;">NT</asp:ListItem>
                                    <asp:ListItem Value="IT" style="color: black;">IT</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="* Department should not be empty" ForeColor="Red" InitialValue="select department"></asp:RequiredFieldValidator>
                   <table>
                        <tr>
                            <td>
                                <label class="auto-style4">Courses Registered</label></td>
                            <td>
                                <asp:ListBox ID="ListBox1" runat="server" Width="240px" class="input-line" SelectionMode="Multiple"></asp:ListBox>
                            </td>
                        </tr>
                    </table>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ListBox1" ErrorMessage="* Courses should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <table>
                        <tr>
                            <td>
                                <label class="auto-style4">Password</label></td>
                            <td>
                                <asp:TextBox ID="txtbox_password" TextMode="Password" runat="server" class="input-line" Width="240px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtbox_password" ErrorMessage="* Password should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <table>
                        <tr>
                            <td>
                                <label class="auto-style4">Retype Password</label></td>
                            <td>
                                <asp:TextBox ID="txtbox_retypepassword" TextMode="Password" runat="server" class="input-line" Width="240px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtbox_retypepassword" ErrorMessage="* Retype Password should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
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
                    &nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" href="Login_page.aspx">Login Here</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style4 {
            float: left;
            width: 79px;
        }
    </style>
</asp:Content>

