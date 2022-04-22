<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyProfile.aspx.cs" Inherits="INFT6303_TeamD_Project.FacultyProfile" MasterPageFile="~/MasterPage.Master" %> 

<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h3 class="card-title"><asp:Label ID="Label1" runat="server"></asp:Label></h3>
 <div class="card" style="width: 50rem;">
  <div class="card-body">
    <h4 class="card-title ">Personal Details</h4>
    <h5 class="card-title ">School ID</h5>
    <h6 class="card-subtitle mb-2 text-muted "><asp:Label ID="Label2" runat="server"></asp:Label></h6>
    <h5 class="card-title ">Email Id</h5>
    <h6 class="card-subtitle mb-2 text-muted "><asp:Label ID="Label3" runat="server"></asp:Label></h6>
    <h5 class="card-title ">Phone</h5>
    <h6 class="card-subtitle mb-2 text-muted "><asp:Label ID="Label4" runat="server"></asp:Label></h6>
    <h5 class="card-title ">Mailing Address</h5>
    <h6 class="card-subtitle mb-2 text-muted "><asp:Label ID="Label5" runat="server"></asp:Label></h6>
    </div>
</div>
<div class="card" style="width: 50rem;">
  <div class="card-body">
    <h4 class="card-title">Academic Details</h4>
    <h5 class="card-title">Department</h5>
    <h6 class="card-subtitle mb-2 text-muted"><asp:Label ID="Label6" runat="server"></asp:Label></h6>
    <h5 class="card-title">Courses Registered</h5>
    <h6 class="card-subtitle mb-2 text-muted"><asp:Label ID="Label7" runat="server"></asp:Label></h6>
  </div>
</div>
<div class="card" style="width: 50rem;">
  <div class="card-body">
      <asp:Button ID="btn_update" runat="server" Text="Update Profile" class="btn btn-primary" OnClick="btn_update_Click" />
  </div>
</div>
</asp:Content>

