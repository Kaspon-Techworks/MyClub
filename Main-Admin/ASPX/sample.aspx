<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sample.aspx.cs" Inherits="club_final.sample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
    <title>MY CLUB</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
   <link rel="stylesheet" type="text/css" href="css/css/sample.css">
     <style>
         .main-center{
 	margin-top: 30px;
 	margin: 0 auto;
 	width: 500px;
    padding: 40px 40px;
}
         .main{
 	margin-top: 0px;
}
     </style>

</head>
<body>
    <form id="form1" runat="server">
     <div class="container" style="background-color:black">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title" style="color:white">REGISTER</h1>
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form class="form-horizontal" method="post" action="#">
						
						<div class="form-group">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                            <label for="name" class="cols-sm-2 control-label">Your Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
									<%--<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>--%>
								</div>
							</div>
						</div>

						<div class="form-group">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator><label for="email" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                     <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
									<%--<input type="text" class="form-control" name="email" id="email"  placeholder="Enter your Email"/>--%>
								</div>
							</div>
						</div>

						<div class="form-group">
							<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator><label for="username" class="cols-sm-2 control-label">Username</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
									<%--<input type="text" runat="server" class="form-control" name="username" id="username"  placeholder="Enter your Username"/>--%>
								</div>
							</div>
						</div>

						<div class="form-group">
							<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator><label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
									<%--<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>--%>
								</div>
							</div>
						</div>

						<div class="form-group">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox5" ControlToCompare="TextBox2" ForeColor="Red"></asp:CompareValidator><label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                     <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
								<%--	<input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password"/>--%>
								</div>
							</div>
						</div>

						<div class="form-group ">
                            <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn-primary btn-lg btn-block login-button" OnClick="Button1_Click"/>

							<%--<button type="button" class="btn btn-primary btn-lg btn-block login-button">Register</button>--%>
						</div>
						<div class="login-register">
				            <a href="login1.aspx">Login</a>
				         </div>
					</form>
				</div>
			</div>
		</div>
    </form>
</body>
</html>
