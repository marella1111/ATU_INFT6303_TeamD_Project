<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyFeedback.aspx.cs" Inherits="INFT6303_TeamD_Project.FacultyFeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Teacher is good at explaining the subject matter" HeaderText="Teacher is good at explaining the subject matter" SortExpression="Teacher is good at explaining the subject matter" />
                <asp:BoundField DataField="Teacher is good at using innovative methods/ways" HeaderText="Teacher is good at using innovative methods/ways" SortExpression="Teacher is good at using innovative methods/ways" />
                <asp:BoundField DataField="Teacher is good at stimulating the interest in the course content" HeaderText="Teacher is good at stimulating the interest in the course content" SortExpression="Teacher is good at stimulating the interest in the course content" />
                <asp:BoundField DataField="Teacher is available and helpful during course hours" HeaderText="Teacher is available and helpful during course hours" SortExpression="Teacher is available and helpful during course hours" />
                <asp:BoundField DataField="Teacher has completed the whole course as per outline" HeaderText="Teacher has completed the whole course as per outline" SortExpression="Teacher has completed the whole course as per outline" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [q1] AS 'Teacher is good at explaining the subject matter', [q2] AS 'Teacher is good at using innovative methods/ways', [q3] AS 'Teacher is good at stimulating the interest in the course content', [q4] AS 'Teacher is available and helpful during course hours', [q5] AS 'Teacher has completed the whole course as per outline' FROM [Feedback] WHERE ([course_id] = @course_id)">
            <SelectParameters>
                <asp:SessionParameter Name="course_id" SessionField="cid" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
