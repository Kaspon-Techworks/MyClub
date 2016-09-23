<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewdetails1.aspx.cs" Inherits="club_final.viewdetails1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head id="Head1" runat="server">
    <title>MY CLUB</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
    <link rel="stylesheet" type="text/css" href="css/css/sample.css">
     <style>
         .main-center{
 	margin-top: 30px;
 	margin: 0 auto;
 	width: 800px;
    padding: 20px 20px;
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
	               		<h1 class="title" style="color:white">CLUB DETAILS</h1>
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form class="form-horizontal" method="post" action="#">		
                        <div class="row">
                            <div class="col-sm-6">		
						<div class="form-group">
                             <label for="name" class="cols-sm-2 control-label">CLUB ID</label>
                            <div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class=" fa fa-anchor fa" aria-hidden="true"></i></span>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="70%" ReadOnly="true"></asp:TextBox>
									<%--<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>--%>
								</div>
                                </div>
							</div>
						</div>
                            <div class="col-sm-6">
                        <div class="form-group">
                             <label for="name" class="cols-sm-2 control-label">CLUB NAME</label>
                            <div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="70%" ReadOnly="true"></asp:TextBox>
									<%--<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>--%>
								</div>
							</div>
                            </div>
                                </div>
						</div>
                        <div class="row">
                            <div class="col-sm-6">
                        <div class="form-group">
                             <label for="name" class="cols-sm-2 control-label">ADMIN NAME</label>
                            <div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Width="70%" ReadOnly="true"></asp:TextBox>
									<%--<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>--%>
								</div>
							</div>
                            </div>
						</div>
                            
                            <div class="col-sm-6">
                        <div class="form-group">
                             <label for="name" class="cols-sm-2 control-label">ADDRESS</label>
                            <div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Width="70%" ReadOnly="true"></asp:TextBox>
									<%--<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>--%>
								</div>
                                </div>
                            </div>
							</div>
						</div>
                        <div class="row">
                            <div class="col-sm-6">
                        <div class="form-group">
                             <label for="name" class="cols-sm-2 control-label">CITY</label>
                            <div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-home fa" aria-hidden="true"></i></span>
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Width="70%" ReadOnly="true"></asp:TextBox>
									<%--<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>--%>
								</div>
                                </div>
							</div>
						</div>
                            
                            <div class="col-sm-6">
                        <div class="form-group">
                             <label for="name" class="cols-sm-2 control-label">STATE</label>
                            <div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-home fa" aria-hidden="true"></i></span>
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Width="70%" ReadOnly="true"></asp:TextBox>
									<%--<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>--%>
								</div>
							</div>
                            </div>
                                </div>
						</div>
                        <div class="row">
                            <div class="col-sm-6">
                        <div class="form-group">
                             <label for="name" class="cols-sm-2 control-label">PIN-CODE</label>
                            <div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-home fa" aria-hidden="true"></i></span>
                                    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Width="70%" ReadOnly="true"></asp:TextBox>
									<%--<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>--%>
								</div>
							</div>
                            </div>
						</div>
                            
                            <div class="col-sm-6">
                        <div class="form-group">
                             <label for="name" class="cols-sm-2 control-label">CONTACT NUMBER</label>
                            <div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-phone fa" aria-hidden="true"></i></span>
                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" Width="70%" ReadOnly="true"></asp:TextBox>
									<%--<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>--%>
								</div>
							</div>
						</div>
                                </div>
                            </div>
                        <div class="row">
                            <div class="col-sm-6">
                        <div class="form-group">
                             <label for="name" class="cols-sm-2 control-label">EMAIL-ID</label>
                            <div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                    <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" Width="70%" ReadOnly="true"></asp:TextBox>
									<%--<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>--%>
								</div>
							</div>
						</div>
                                </div>
                            
                            <div class="col-sm-6">
                         <div class="form-group">
                             <label for="name" class="cols-sm-2 control-label">CLUB TYPE</label>
                            <div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-home fa" aria-hidden="true"></i></span>
                                    <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" Width="70%" ReadOnly="true"></asp:TextBox>
									<%--<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>--%>
								</div>
							</div>
						</div>
                                </div>
                            </div>
                        <div class="form-group ">
                            <asp:Button ID="Button1" runat="server" Text="OK" class="btn btn-primary btn-block login-button btn-sm" OnClick="Button1_Click" Style="margin:10px 0px 0px 200px" Width="50%"/>

							</div>					
					</form>
				</div>
			</div>
		</div>
    </form>
</body>
</html>