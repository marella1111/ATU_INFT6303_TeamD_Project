<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Faculty.aspx.cs" Inherits="INFT6303_TeamD_Project.Faculty" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
        <nav class="navbar navbar-expand-md navbar-dark bg-primary fixed-left">
            <a class="navbar-brand">
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
                        <asp:Button ID="btn_logout" runat="server" Text="Log Out" OnClick="btn_logout_Click" />
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</asp:Content>


