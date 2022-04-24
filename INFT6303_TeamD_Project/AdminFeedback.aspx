<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminFeedback.aspx.cs" Inherits="INFT6303_TeamD_Project.AdminFeedback" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
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
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [q1] AS 'Teacher is good at explaining the subject matter', [q2] AS 'Teacher is good at using innovative methods/ways', [q3] AS 'Teacher is good at stimulating the interest in the course content', [q4] AS 'Teacher is available and helpful during course hours', [q5] AS 'Teacher has completed the whole course as per outline' FROM [Feedback] WHERE ([course_id] = @course_id)">
        <SelectParameters>
            <asp:SessionParameter Name="course_id" SessionField="cid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>
    </p>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            width: 232px;
        }
        .auto-style3 {
            width: 107px;
        }
        .auto-style4 {
            width: 113px;
        }
    </style>
</asp:Content>

