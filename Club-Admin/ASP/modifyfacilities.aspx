<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="modifyfacilities.aspx.cs" Inherits="Club.modifyfacilities" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
     <nav class="navbar navbar-inverse" style="color:white">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><asp:Label ID="Label2" runat="server" Text="" style="color: #FFFFFF"></asp:Label></a>
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
        </ul>
         <li><a href="displayreport.aspx" style="color: #FFFFFF">View Members</a></li> 
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li class="dropdown" style="color: #FFFFFF"><a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color: #FFFFFF"><span class="glyphicon glyphicon-user">
        <asp:Label ID="Label8" runat="server" Text=""></asp:Label></span></a>
        <ul id="Ul2" class="dropdown-menu" runat="server" >
             <li ><a href="passwordreset.aspx" >Reset Password</a></li>
             <li><a href="logout.aspx" ><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
            </ul>
     
    </ul>
  </div>
</nav>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <center> <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" class="btn btn-default dropdown-toggle" ></asp:DropDownList>
 <br />
            <br />
</center>
    <center>
        <div>

            <asp:TextBox ID="TextBox1" runat="server" Width="200px"  placeholder="Name" class="form-control"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Width="200px"  placeholder="Capacity" class="form-control"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Width="200px"  placeholder="No's" class="form-control"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox4" runat="server" Width="200px" TextMode="Time" class="form-control"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox5" runat="server" Width="200px"  TextMode="Time" class="form-control"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Width="200px" placeholder="Description" class="form-control"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" class="btn btn-default" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />

        </div>
    </center>
</asp:Content>
