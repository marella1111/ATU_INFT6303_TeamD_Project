<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_page.aspx.cs" Inherits="INFT6303_TeamD_Project.Login_page" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class='bold-line'></div>
    <div class='container'>
        <div class='window'>
            <div class="overlay">
            </div>
            <div class='content'>
                <div class='welcome'>Login Here!</div>
                <div class='subtitle'>Enter email and Password to login.</div>
                <div class='input-fields'>
                    <table>
                        <tr>
                            <td>
                                <label class="auto-style3">Select a role</label></td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" class="input-line" Height="50px" Width="234px">
                                    <asp:ListItem style="color:black;">Admin</asp:ListItem>
                                    <asp:ListItem style="color:black;">Faculty</asp:ListItem>
                                    <asp:ListItem style="color:black;">Student</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                    </br>
                    <table>
                        <tr>
                            <td>
                                <label class="auto-style3">Email</label></td>
                            <td>
                                <asp:TextBox ID="email" runat="server" class="input-line" Width="240px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ErrorMessage="*Email Required to login" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="email" runat="server" ErrorMessage="*Email not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>

                    <br />
                    <table>
                        <tr>
                            <td>
                                <label class="auto-style4">Password</label></td>
                            <td>
                                <asp:TextBox ID="password" TextMode="Password" runat="server" class="input-line" Width="240px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="*Password is Required to login" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />

                </div>
                <div>
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Log In" class="ghost-round" OnClick="Login_ID_Click" /></td>
                            <td>
                                <input id="Reset1" type="reset" class='ghost-round' value="reset" /></td>
                        </tr>
                    </table>
                    &nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" href="Registration.aspx">Register Here</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style3 {
            float: left;
            width: 67px;
            height: 19px;
            margin-right: 8px;
        }
        .auto-style4 {
            float: left;
            width: 73px;
        }
    </style>
</asp:Content>
