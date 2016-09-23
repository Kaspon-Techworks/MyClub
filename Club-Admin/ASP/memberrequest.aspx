<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="memberrequest.aspx.cs" Inherits="Club.memberrequest"  %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
  
     <nav class="navbar navbar-inverse" style="color:white">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><asp:Label ID="Label3" runat="server" Text="" style="color: #FFFFFF"></asp:Label></a>
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
  <div class="memberrequest"></div>
    <div class="home2">
           <div id="mainContainer" class="wrapper container" style="overflow-x:hidden">  
            <div>  
                    <div class="container">  
                        <div class="stats-icon stats-icon-lg"><i class="material-icons" style="font-size:150px;float:right;opacity:0.7;margin-right: 30px">people</i></div>
                        <div class="jumbotron">  
                            
                            <p class="text-danger"> Members Request </p>  
                            <span class="text-info"></span>  
                        </div> 
                       
                        <div class="row">  
                            <div class="col-lg-20 ">  
                                <div class="table-responsive" style="color:black">
      <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" CssClass="table table-striped table-bordered table-hover" >
<Columns>
    <asp:TemplateField HeaderText="Accept" >
        <ItemTemplate>
<asp:LinkButton ID="LinkButton1" runat="server" CommandName="accept" CommandArgument='<%# Bind("Id")%>'>Accept</asp:LinkButton>
           
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
          <Columns>
              <asp:TemplateField HeaderText="Reject">
                  <ItemTemplate>
                      <asp:LinkButton ID="LinkButton2" runat="server" CommandName="reject" CommandArgument='<%# Bind("Id")%>' >Reject</asp:LinkButton>
                  </ItemTemplate>
              </asp:TemplateField>
          </Columns>

          <Columns>
              <asp:TemplateField HeaderText="View">
                  <ItemTemplate>
                      <asp:LinkButton ID="LinkButton3" runat="server" CommandName="view" CommandArgument='<%# Bind("Id")%>'  >View</asp:LinkButton>
                     <%-- <asp:Button ID="Button1" runat="server" Text="view" CommandName="view" CommandArgument='<%# Bind("Id")%>' />--%>
                  </ItemTemplate>

              </asp:TemplateField>
          </Columns>

      </asp:GridView>
                                    <div style="display:none">

                                    <asp:Button ID="Button1" runat="server" Text="Button"  />

     </div>
     <asp:Label ID="Label1" runat="server"></asp:Label>

      <br />
      <asp:Label ID="Label2" runat="server"></asp:Label>

      <br />
      <asp:Label ID="Label4" runat="server"></asp:Label>
                                  </div>
                                </div>
                            </div>
                       </div>
 
                </div>
                </div>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>

  <!-- Modal content -->
  <div id="model" class="modal-content" style="width:100%">
    <span id="close" class="close">×</span>

      <asp:GridView ID="GridView2" runat="server" CssClass="table table-striped table-bordered table-hover"></asp:GridView>
  </div>

   <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" CancelControlID="close" PopupControlID="model" TargetControlID="Button1" ></asp:ModalPopupExtender>
   </div>
</asp:Content>
