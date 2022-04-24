<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyFeedback.aspx.cs" Inherits="INFT6303_TeamD_Project.FacultyFeedback" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                        <a class="nav-link" href="FacultyProfile.aspx">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="FacultyFeedbackForm.aspx">Feedback</a>
                    </li>
                    <li class="nav-item" style="right: -10px; position: absolute; bottom: 10px;">
                        <asp:Button ID="btn_logout" runat="server" Text="Log Out" class="btn btn-light" OnClick="btn_logout_Click" />
                    </li>
                </ul>
            </div>
        </nav>

        <h4>Feedback <asp:Label ID="Label3" runat="server"></asp:Label> </h4>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Teacher is good at explaining the subject matter" HeaderText="Teacher is good at explaining the subject matter" SortExpression="Teacher is good at explaining the subject matter" />
                <asp:BoundField DataField="Teacher is good at using innovative methods/ways" HeaderText="Teacher is good at using innovative methods/ways" SortExpression="Teacher is good at using innovative methods/ways" />
                <asp:BoundField DataField="Teacher is good at stimulating the interest in the course content" HeaderText="Teacher is good at stimulating the interest in the course content" SortExpression="Teacher is good at stimulating the interest in the course content" />
                <asp:BoundField DataField="Teacher is available and helpful during course hours" HeaderText="Teacher is available and helpful during course hours" SortExpression="Teacher is available and helpful during course hours" />
                <asp:BoundField DataField="Teacher has completed the whole course as per outline" HeaderText="Teacher has completed the whole course as per outline" SortExpression="Teacher has completed the whole course as per outline" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [q1] AS 'Teacher is good at explaining the subject matter', [q2] AS 'Teacher is good at using innovative methods/ways', [q3] AS 'Teacher is good at stimulating the interest in the course content', [q4] AS 'Teacher is available and helpful during course hours', [q5] AS 'Teacher has completed the whole course as per outline' FROM [Feedback] WHERE ([course_id] = @course_id)">
            <SelectParameters>
                <asp:SessionParameter Name="course_id" SessionField="cid" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
