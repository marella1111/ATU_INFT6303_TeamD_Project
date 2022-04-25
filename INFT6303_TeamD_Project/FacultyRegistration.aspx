<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FacultyRegistration.aspx.cs" Inherits="INFT6303_TeamD_Project.FacultyRegistration" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="leftmargin">

        <nav class="navbar navbar-expand-md navbar-dark bg-primary fixed-left">
            <a class="navbar-brand" style="color: azure">Welcome
                <asp:Label ID="Label3" runat="server"></asp:Label></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
                aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="Studentlist.aspx">Student</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Faculty</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="FacultyRegistration.aspx">Add Faculty</a>
                            <a class="dropdown-item" href="FacultyList.aspx">Manage Faculty</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Courses</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="Course.aspx">Add Course</a>
                            <a class="dropdown-item" href="CourseList.aspx">Manage Courses</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="FeedbackForm.aspx">View Feedback</a>
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
                    <div class='welcome'>Faculty Form</div>
                    <div class='subtitle'>Form to add faculty details</div>

                    <div class='input-fields'>
                        <table>
                            <tr>
                                <td>
                                    <label class="auto-style1">Faculty ID</label></td>
                                <td>
                                    <asp:TextBox ID="txtbox_tno" runat="server" class="input-line" Width="240px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbox_tno" ErrorMessage="* Faculty ID should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                        <table>
                            <tr>
                                <td>
                                    <label class="auto-style1">Full name</label></td>
                                <td>
                                    <asp:TextBox ID="txtbox_name" runat="server" class="input-line" Width="240px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtbox_name" ErrorMessage="* Name should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        <table>
                            <tr>
                                <td>
                                    <label class="auto-style1">Email ID</label></td>
                                <td>
                                    <asp:TextBox ID="txtbox_email" runat="server" class="input-line" Width="240px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtbox_email" ErrorMessage="* Email should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtbox_email" ErrorMessage="* Email not valid format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
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
                                    <label class="auto-style1">Departments</label></td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="input-line" AutoPostBack="True" Style="height: 50px; width: 240px;">
                                        <asp:ListItem style="color: black;">select department</asp:ListItem>
                                        <asp:ListItem Value="NT" style="color: black;">NT</asp:ListItem>
                                        <asp:ListItem Value="IT" style="color: black;">IT</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="* Department should not be empty" ForeColor="Red" InitialValue="select department"></asp:RequiredFieldValidator>

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

