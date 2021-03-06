<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FacultyList.aspx.cs" Inherits="INFT6303_TeamD_Project.FacultyList" %>

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

    <h4>Manage Faculty</h4>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="faculty_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="faculty_id" HeaderText="faculty_id" ReadOnly="True" SortExpression="faculty_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="phone_no" HeaderText="phone_no" SortExpression="phone_no" />
            <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
            <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" 
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [faculty_id], [name], [email_id], [address], [phone_no], [department] FROM [Faculty]"
        DeleteCommand="DELETE FROM [Faculty] WHERE [faculty_id] = @faculty_id">
        <DeleteParameters>
            <asp:Parameter Name="faculty_id" />
        </DeleteParameters>
        </asp:SqlDataSource>
</div>
</asp:Content>
