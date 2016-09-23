<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vertical.aspx.cs" Inherits="club_final.vertical" %>

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
    <!-- jQuery -->
    <script src="vertical/js/jquery-1.11.2.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="vertical/js/bootstrap.min.js"></script>
    <style>
        /*.group a {
    background-color: #000;
}*/
.group a:hover {
    background-color: #fff;
}
.active a {
    background-color: #fff;
}
    </style>
    <script type="text/javascript">
        $('li').click(function () {
            $(this).addClass("active"); // add the class to the element that's clicked.
            $(this).siblings().removeClass('active'); // remove the class from siblings. 
        });
    </script>
</head>
<body>
    <form runat="server">
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
			<div class="col-sm-9 col-sm-push-3 contentAreaStyle" style="height:600px">
				<%--CONTENT AREA--%>
                 <div class="row" style="width:100%;margin-left: 08%;" >
      <a href="request1.aspx"><div class="col-md-2 col-sm-6" style="background-color: #607D8B;margin-top: 10px; margin-left: 20px;width: 20%; border-radius: 10px;">
			       <div class="widget widget-stats bg-blue-grey">
			            <div class="stats-icon stats-icon-lg"><i class="material-icons" style="font-size:60px;float:right;opacity:0.2">people</i></div>
			            <div class="stats-title"><h6 style="color:white;font-size: x-large">Member Request</h6></div>
			            <div class="stats-number" style="font-size:36px;opacity:0.9"><span class="badge"><asp:Label ID="Label3" runat="server" Text="4" style="font-size:36px"></asp:Label></span></div>
                        <br />                       
			        </div>
			    </div></a>
                   <a href="customer2.aspx">   <div class="col-md-2 col-sm-6" style="background-color:cornflowerblue;margin-top: 10px; margin-left: 20px;width: 20%; border-radius: 10px;">
			        <div class="widget widget-stats bg-blue-grey">
			            <div class="stats-icon stats-icon-lg"><i class="material-icons" style="font-size:60px;float:right;opacity:0.2">card_membership</i></div>
			            <div class="stats-title"><h6 style="color:white;font-size: x-large">No Of Members</h6></div>
			            <div class="stats-number" style="font-size:36px;opacity:0.9"><span class="badge"><asp:Label ID="Label5" runat="server" Text="5" style="font-size:36px"></asp:Label></span></div>
                        <br />
                        
			            
                       
			        </div>
			    </div></a>
                     </div>
             
			</div>
			
			<!-- sidebar area start -->
			<div class="col-sm-3 col-sm-pull-9 sidebarStyle" style="margin-top:10px">
				<div class="text-xs-center text-sm-left ">			
					<ul class="nav nav-pills nav-stacked group">
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
   
        </form>
</body>
</html>

