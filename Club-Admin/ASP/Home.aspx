<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Club.Home" %>
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
    <div class="homepage"></div>

    <div class="home2">
   <div class="row" style="width:92%;margin-left:8%" >
     <div class="col-md-2 col-sm-6" style="background-color: #607D8B;margin-top: 10px; margin-left: 20px;width: 20%; border-radius: 10px;" >
			        <div class="widget widget-stats bg-blue-grey">
			            <div class="stats-icon stats-icon-lg"><i class="material-icons" style="font-size:60px;float:right;opacity:0.2">people</i></div>
			            <div class="stats-title"><h6 style="color:white;font-size: x-large">Member Request</h6></div>
			            <div class="stats-number" style="font-size:36px;opacity:0.9"><span class="badge"><asp:Label ID="Label3" runat="server" Text="" style="font-size:36px"></asp:Label></span></div>
                        <br />
                         
			            
                        
			        </div>
			    </div>

    <div class="col-md-2 col-sm-6" style="background-color: #2196F3;margin-top: 10px; margin-left: 20px;width: 20%; border-radius: 10px;">
			        <div class="widget widget-stats bg-blue-grey">
			            <div class="stats-icon stats-icon-lg"><i class="material-icons" style="font-size:60px;float:right;opacity:0.2">event</i></div>
			            <div class="stats-title"><h6 style="color:white;font-size: x-large">Event Request</h6></div>
			            <div class="stats-number" style="font-size:36px;opacity:0.9"><span class="badge"><asp:Label ID="Label1" runat="server" Text="" style="font-size:36px"></asp:Label></span></div>
                        <br />
                        
			            
                        
			        </div>
			    </div>

    <div class="col-md-2 col-sm-6" style="background-color: #00BCD4;margin-top: 10px; margin-left: 20px;width: 20%; border-radius: 10px;">
			        <div class="widget widget-stats bg-blue-grey">
			            <div class="stats-icon stats-icon-lg"><i class="material-icons" style="font-size:60px;float:right;opacity:0.2">shopping_cart</i></div>
			            <div class="stats-title"><h6 style="color:white;font-size: x-large">No Of Facilities</h6></div>
			            <div class="stats-number" style="font-size:36px;opacity:0.9"><span class="badge"><asp:Label ID="Label4" runat="server" Text="" style="font-size:36px"></asp:Label></span></div>
                        <br />
                        
			            
                       
			        </div>
			    </div>
    <div class="col-md-2 col-sm-6" style="background-color: #673AB7;margin-top: 10px; margin-left: 20px;width: 20%; border-radius: 10px;">
			        <div class="widget widget-stats bg-blue-grey">
			            <div class="stats-icon stats-icon-lg"><i class="material-icons" style="font-size:60px;float:right;opacity:0.2">card_membership</i></div>
			            <div class="stats-title"><h6 style="color:white;font-size: x-large">No Of Members</h6></div>
			            <div class="stats-number" style="font-size:36px;opacity:0.9"><span class="badge"><asp:Label ID="Label5" runat="server" Text="" style="font-size:36px"></asp:Label></span></div>
                        <br />
                        
			            
                       
			        </div>
			    </div>
        </div>
    <br />
    <br />
    <br />
    <div style="clear:both"></div>
    <div style="margin-left:9%">
       <asp:Calendar ID="Calendar1" runat="server" Width="400px" Height="220px" BackColor="White" BorderColor="black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" NextPrevFormat="FullMonth" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" TitleFormat="Month" class="bootstrap-calendar" >
           <DayHeaderStyle BackColor="White" Font-Bold="True" Font-Size="7pt" ForeColor="#832C65" Height="10pt" />
           <DayStyle Width="14%" HorizontalAlign="Center"  />
           <NextPrevStyle Font-Size="8pt" ForeColor="White" />
           <OtherMonthDayStyle ForeColor="#999999" />
           <SelectedDayStyle BackColor="#CC3333" ForeColor="Black" />
           <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
           <TitleStyle BackColor="#0C908A" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
           <TodayDayStyle BackColor="#CCCC99" />
        </asp:Calendar>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Today's Event" Font-Names="Arial Black" Font-Size="Medium"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover" Width="400px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:Label ID="Label7" runat="server" Font-Names="Arial Unicode MS" Font-Size="Small"></asp:Label>
        </div>
      </div>

</asp:Content>

