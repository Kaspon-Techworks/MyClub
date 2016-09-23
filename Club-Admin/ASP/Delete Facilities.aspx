<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Delete Facilities.aspx.cs" Inherits="Club.Delete_Facilities" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        
      <nav class="navbar navbar-inverse" style="color:white">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><asp:Label ID="Label14" runat="server" Text="" style="color: #FFFFFF"></asp:Label></a>
    </div>
    <ul class="nav navbar-nav" >
      <li><a href="Home.aspx" style="color: #FFFFFF">Home</a></li>
          <li><a href="EditHome.aspx" style="color: #FFFFFF">Edit Home</a></li>
      <li><a href="memberrequest.aspx" style="color: #FFFFFF">Member Request</a></li>
      <li><a href="eventrequest.aspx" style="color: #FFFFFF">Event Request</a></li> 
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color: #FFFFFF">Facilities</a>
        <ul id="Ul1" class="dropdown-menu" runat="server" >
          <li ><a href="facilities.aspx">Add</a></li>
          <li ><a href="modifyfacilities.aspx">Modify</a></li>
            <li ><a href="Delete Facilities.aspx">Delete</a></li>
            <li ><a href="viewfacilities.aspx">View</a></li>
        </ul></li>
         <li><a href="displayreport.aspx" style="color: #FFFFFF">View Members</a></li> 
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li class="dropdown" style="color: #FFFFFF"><a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color: #FFFFFF"><span class="glyphicon glyphicon-user">
        <asp:Label ID="Label15" runat="server" Text=""></asp:Label></span></a>
        <ul id="Ul2" class="dropdown-menu" runat="server" >
             <li ><a href="passwordreset.aspx" >Reset Password</a></li>
             <li><a href="logout.aspx" ><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
            </ul></li>
     
    </ul>
  </div>
</nav>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

 

    <center>

 
       <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" class="btn btn-default dropdown-toggle"></asp:DropDownList>



    <br />
    <br />
       <asp:Label ID="Label1" runat="server" Text="Name" Width="150px"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Width="150px"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Capacity" Width="150px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Width="150px"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="No'S" Width="150px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Width="150px"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Text="From" Width="150px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Width="150px"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label9" runat="server" Text="To" Width="150px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" Width="150px"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label11" runat="server" Text="Descripition" Width="150px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label12" runat="server" Width="150px"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click" class="btn btn-default"/>
      <br />
      <br />
      <asp:Label ID="Label13" runat="server"></asp:Label>
     
    </center>
</asp:Content>
