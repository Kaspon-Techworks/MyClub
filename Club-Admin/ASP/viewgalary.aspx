<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewgalary.aspx.cs" Inherits="Club.viewgalary" %>
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
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color: #FFFFFF">Galary</a>
        <ul id="Ul3" class="dropdown-menu" runat="server" >
          <li ><a href="galary.aspx">Add Galary</a></li>
          <li ><a href="viewgalary.aspx">View</a></li>
            
        </ul>
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
    <div id="mainContainer" class="wrapper container" style="overflow-x:hidden">  
            <div>  
                    <div class="container">
                        <div class="stats-icon stats-icon-lg"><i class="material-icons" style="font-size:130px;float:right;opacity:0.7;margin-right: 30px">galary</i></div>  
                        <div class="jumbotron">  
                            <p class="text-danger"> Galary </p>  
                            <span class="text-info"></span>  
                        </div> 
                       
                        <div class="row">  
                            <div class="col-lg-20 ">  
                                <div class="table-responsive" style="color:black">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView1_RowCommand" >
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
           <%-- <asp:BoundField DataField="ClubName" HeaderText="ClubName" SortExpression="ClubName" />--%>
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:TemplateField HeaderText="file">
                    <ItemTemplate>
                        <img src="Handler1.ashx?Id=<%# Eval("Id")  %>" style="height:100px;width:100px" />

                    </ItemTemplate>

                </asp:TemplateField>
            <asp:TemplateField HeaderText="Accept" >
        <ItemTemplate>
            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" CommandArgument='<%# Bind("Id")%>'><center><h3><span style="text-align:center;color:red" class="glyphicon glyphicon-trash "></span></h3></center></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
        </Columns>
        

    </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
        </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:clubConnectionString2 %>" SelectCommand="SELECT * FROM [Sample] WHERE ([ClubName] = @ClubName)" DeleteCommand="DELETE [Sample] WHERE ([Id] = @Id)">
    <SelectParameters>
        <asp:SessionParameter Name="ClubName" SessionField="name" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
