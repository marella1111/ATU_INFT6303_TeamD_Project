<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminFeedback.aspx.cs" Inherits="INFT6303_TeamD_Project.AdminFeedback" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="q1" HeaderText="q1" SortExpression="q1" />
            <asp:BoundField DataField="q2" HeaderText="q2" SortExpression="q2" />
            <asp:BoundField DataField="q3" HeaderText="q3" SortExpression="q3" />
            <asp:BoundField DataField="q4" HeaderText="q4" SortExpression="q4" />
            <asp:BoundField DataField="q5" HeaderText="q5" SortExpression="q5" />
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
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [q1], [q2], [q3], [q4], [q5] FROM [Feedback] WHERE ([course_id] = @course_id)">
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

