<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="club_final.login1" %>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>MY CLUB</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
       
    </head>

    <body>
    <form runat="server">
        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="row" >
                        <div class="col-sm-8 col-sm-offset-2 text">
                        <h1><strong>KASPON</strong> Login Form</h1>
                            <%--<div class="description">
                            	<p>
	                            	This is a free responsive login form made with Bootstrap. 
	                            	Download it on <a href="http://azmind.com"><strong>AZMIND</strong></a>, customize and use it as you like!
                            	</p>
                            </div>--%>
                        </div>
                    </div>
                <div class="container">
                    
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login to our site</h3>
                            		<p>Enter your username and password to log on:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<%--<label class="sr-only" for="form-username">Username</label>--%>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter your username"></asp:TextBox>
			                        	<%--<input type="text" name="form-username" placeholder="Username..." class="form-username form-control" id="form-username">--%>
			                        </div>
			                        <div class="form-group">
			                        	<%--<label class="sr-only" for="form-password">Password</label>--%>
                                             <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
			                        	<%--<input type="password" name="form-password" placeholder="Password..." class="form-password form-control" id="form-password">--%>
			                        <asp:Label ID="Label1" runat="server" Text="*Enter Valid Credentials" ForeColor="Red" Visible="False"></asp:Label>
                                    </div>
                                     <asp:Button ID="Button1" runat="server" Text="Sign in!" CssClass="form-control" BackColor="DarkOrange" ForeColor="White" OnClick="Button1_Click" />
			                      
                                     <%--<button type="submit" class="btn">Sign in!</button>--%>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/sample.aspx" Style="margin:400px" Font-Bold="True" Font-Underline="True">Register</asp:HyperLink>
			                    </form>
		                    </div>
                        </div>
                    </div>                    
                </div>
            </div>
            
        </div>

</form>
        

    </body>

</html>
