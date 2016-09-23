<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newcustomer.aspx.cs" Inherits="club_final.newcustomer" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MY CLUB</title>
    <!-- Bootstrap Core CSS -->
    <link href="vertical/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="vertical/css/CustomStyle.css" rel="stylesheet">
    <link href="vertical/fonts/glyphicons-halflings-regular.woff" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   <script type="text/javascript">
       $(document).ready(function () {
           $('[data-toggle="tooltip"]').tooltip({
               placement: 'bottom'
           });
       });
</script>

</head>
<body>
    <form id="Form1" runat="server">
    <div class="container-fluid ">
		<div class="row">		
			<%--<!-- header area start -->
			<div class="headerStyle">
				<img src="vertical/Images/kaspon logo.png" alt="KASPON" class="img-responsive"/>
			</div>
			<!-- header area end -->--%>
			
			<!-- menubar area start -->
			<nav class="navbar navbar-inverse navbar-fixed-top headroom">
			  <div class="container-fluid">
				<!-- navbar for mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>

				<!-- navbar for desktop display -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				  <ul class="nav navbar-nav">
					<li class="active"><a href="vertical.aspx">Home</a></li>
					<li class="active"><a href="request1.aspx">View Requests <span class="badge"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></span></a></li>					
					<li class="active"><a href="customer2.aspx">View Members <span class="badge"><asp:Label ID="Label2" runat="server" Text=""></asp:Label></span></a></li>
                      </ul>
                    <ul class="nav navbar-nav navbar-right" >
                       <li class="active"><a href="login1.aspx" onclick="signout()"><span class="glyphicon glyphicon-log-out" ></span> Logout</a></li>     
                    </ul>				 
				</div><!-- /.navbar-collapse -->
			  </div><!-- /.container-fluid -->
			</nav>
			<!-- menubar area end -->
			
            <div class="jumbotron" style="margin-bottom:0px">
                <h1 align="center">MY CLUB!</h1>
                <p align="center">ALL KINDS OF CLUBS UNDER ONE ROOF......</p>
            </div>			
			<div class="col-sm-9 col-sm-push-3 contentAreaStyle" style="height:600px;text-align:left">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="clubName" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" CssClass="table" style="margin:100px 0px 0px 250px" Width="50%" OnRowCommand="GridView1_RowCommand">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="clubName" HeaderText="clubName" ReadOnly="True" SortExpression="clubName" />
                        <asp:TemplateField HeaderText="Details">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkView" runat="server" CommandName="myView" CommandArgument='<%# Bind("clubName")%>'>View Details</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>           
            <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkAccept" runat="server" CommandName="myAccept" CommandArgument='<%# Bind("clubName")%>'><span class="glyphicon glyphicon-ok-sign" style="color:green" data-toggle="tooltip" data-original-title="Accept"></span></asp:LinkButton>
                        <asp:LinkButton ID="LinkReject" runat="server" CommandName="myReject" CommandArgument='<%# Bind("clubName")%>'><span class="glyphicon glyphicon-remove-sign" style="color:red" data-toggle="tooltip" data-original-title="Reject"></span></asp:LinkButton>
                    </ItemTemplate>
                
                </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
             
			    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:clubConnectionString16 %>" SelectCommand="SELECT [id], [clubName] FROM [ClubRegister] WHERE (([stas] = @stas) AND ([typeofclub] = @typeofclub))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="0" Name="stas" Type="Byte" />
                        <asp:SessionParameter Name="typeofclub" SessionField="request" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
             
			</div>
			
			<!-- sidebar area start -->
			<div class="col-sm-3 col-sm-pull-9 sidebarStyle" style="margin-top:10px">
				<div class="text-xs-center text-sm-left ">			
					<ul class="nav nav-pills nav-stacked">
						<li class="active"><a href="#"><span class="glyphicon glyphicon-off"></span>  Requests</a></li>
						<li><asp:LinkButton runat="server" ID="alumni" OnClick="alumni_Click"><span class="glyphicon glyphicon-user"></span>  Alumni</asp:LinkButton></li>
						<li><asp:LinkButton runat="server" ID="laughter" OnClick="laughter_Click"><span class="glyphicon glyphicon-lock"></span>  Laughter</asp:LinkButton></li>
						<li><asp:LinkButton runat="server" ID="sports" OnClick="sports_Click"><span class="glyphicon glyphicon-pawn"></span>  Sports</asp:LinkButton></li>
                        <li><asp:LinkButton runat="server" ID="health" OnClick="health_Click"><span class="glyphicon glyphicon-plus-sign"></span>  Health</asp:LinkButton></li>
						<li><asp:LinkButton runat="server" ID="entreprenur" OnClick="entreprenur_Click"><span class="glyphicon glyphicon-lock"></span>  Entreprenur</asp:LinkButton></li>
						<li><asp:LinkButton runat="server" ID="music" OnClick="music_Click"><span class="glyphicon glyphicon-headphones"></span>  Music</asp:LinkButton></li>
					</ul>
					<ul class="nav nav-pills nav-stacked">
						<li class="active"><a href="#"><span class="glyphicon glyphicon-off"></span>  Members</a></li>
						<li><asp:LinkButton runat="server" ID="alumni1" OnClick="alumni1_Click"><span class="glyphicon glyphicon-user"></span>  Alumni</asp:LinkButton></li>
						<li><asp:LinkButton runat="server" ID="laughter1" OnClick="laughter1_Click"><span class="glyphicon glyphicon-lock"></span>  Laughter</asp:LinkButton></li>
						<li><asp:LinkButton runat="server" ID="sports1" OnClick="sports1_Click"><span class="glyphicon glyphicon-pawn"></span>  Sports</asp:LinkButton></li>
                        <li><asp:LinkButton runat="server" ID="health1" OnClick="health1_Click"><span class="glyphicon glyphicon-plus-sign"></span>  Health</asp:LinkButton></li>
						<li><asp:LinkButton runat="server" ID="entreprenur1" OnClick="entreprenur1_Click"><span class="glyphicon glyphicon-lock"></span>  Entreprenur</asp:LinkButton></li>
						<li><asp:LinkButton runat="server" ID="music1" OnClick="music1_Click"><span class="glyphicon glyphicon-headphones"></span>  Music</asp:LinkButton></li>
					</ul>
					<%--<ul class="nav nav-pills nav-stacked">
						<li class="active"><a href="#"><span class="glyphicon glyphicon-off"></span>  Support</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-comment"></span>  Chat</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-earphone"></span>  Contacts</a></li>
					</ul>--%>
				</div>
			</div>
			<!-- sidebar area end -->
			
			<div class="clearfix">
			</div>
			<div class="col-sm-4 col-md-3 col-lg-4 footer1Style">
				FOOTER PART 1
			</div>
			<div class="col-sm-4 col-md-3 col-lg-4 footer2Style">
				FOOTER PART 2
			</div>
			<div class="hidden-xs col-sm-4 col-md-3 col-lg-4 footer1Style">
				FOOTER PART 3
			</div>
			<div class="col-md-3 visible-md col-lg-4 footer2Style">
				FOOTER PART 4
			</div>
			<div class="clearfix">
			</div>
			<div class="footerCopyRightStyle">
				FOOTER COPY RIGHTS
			</div>
		</div>
    </div>
    <!-- jQuery -->
    <script src="vertical/js/jquery-1.11.2.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="vertical/js/bootstrap.min.js"></script>
        </form>
</body>
</html>

