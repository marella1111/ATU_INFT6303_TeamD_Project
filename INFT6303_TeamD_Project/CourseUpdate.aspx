<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CourseUpdate.aspx.cs" Inherits="INFT6303_TeamD_Project.CourseUpdate" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="leftmargin">
     <nav class="navbar navbar-expand-md navbar-dark bg-primary fixed-left">
            <a class="navbar-brand" style="color: azure">Welcome
                <asp:Label ID="Label2" runat="server"></asp:Label></a>
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
            <div class="overlay" style="height: 600px;">
            </div>
            <div class='content'>
                <div class='welcome'>Course Form</div>
                <div class='subtitle'>Update the courses here</div>

                <div class='input-fields'>
                    <table>
                        <tr>
                            <td>
                                <label class="auto-style1">Course ID</label></td>
                            <td>
                                <asp:TextBox ID="txtbox_cid" runat="server" class="input-line" Width="240px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
             
                    <table>
                        <tr>
                            <td>
                                <label class="auto-style1">Course name</label></td>
                            <td>
                              <asp:TextBox ID="txtbox_name" runat="server" class="input-line" Width="240px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtbox_name" ErrorMessage="* Name should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                     <table>
                        <tr>
                            <td>
                                <label class="auto-style1">Department</label></td>
                            <td>
								<asp:TextBox ID="txtbox_dep" runat="server" class="input-line" Width="240px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
				
					<table>
                        <tr>
                            <td>
                                <label class="auto-style1">Course Description</label></td>
                            <td>
                                <asp:TextBox ID="txtbox_desc" TextMode="MultiLine" runat="server" class="input-line" Width="240px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtbox_desc" ErrorMessage="* Course description should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
				   <table>
                        <tr>
                            <td>
                                <label class="auto-style1">Faculty</label></td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" class="input-line" Style="height: 50px; width: 240px;">									
								</asp:DropDownList>
                            </td>
                        </tr>
                    </table>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="* Faculty field should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
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

