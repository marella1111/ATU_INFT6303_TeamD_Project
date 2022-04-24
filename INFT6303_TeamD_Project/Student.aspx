﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="INFT6303_TeamD_Project.WebForm2" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                        <a class="nav-link" href="StudentProfile.aspx">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="StudentFeedback.aspx">Feedback</a>
                    </li>
                    <li class="nav-item" style="right: -10px; position: absolute; bottom: 10px;">
                        <asp:Button ID="btn_logout" runat="server" Text="Log Out" class="btn btn-light" OnClick="btn_logout_Click" />
                    </li>
                </ul>
            </div>
        </nav>

        <div class="jumbotron">
            <h1 class="display-4">Hello, <asp:Label ID="Label3" runat="server"></asp:Label>!</h1>
            <p class="lead">Welcome back </p>
            <hr class="my-4">
            <p>
                Students feedback is managed using the Online Student Feedback System. As the students feedbacks can be tempered for wrong reasons in case of paper based feedbacks wherein this project will always ensure safety of feedbacks privacy.
The system also reduces the burden of efforts and burden of keeping and maintaining the records on a manual base, it requires a lot of space and safety to keep up such records. Students can use the Online Student Feedback System to provide feedback on a
specific subject or teacher.Student feedback is a part of the university’s self assessment and the education quality assurance system.
                The feedback is utilised systematically in the management of teaching activities, decision making and the development of teaching.
            </p>
            
            <p>Developed By TeamD Project.</br>
            For any issues please contact us</p>
            <p class="lead">
                <a class="btn btn-primary btn-lg" href="#" role="button">Mail Us!</a>
                </br> &copy; TeamD Project
            </p>
        </div>

    </div>

</asp:Content>
