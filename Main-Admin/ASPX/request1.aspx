<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="request1.aspx.cs" Inherits="club_final.request1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="Ajax" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	<title>MY CLUB</title>

	<link rel="shortcut icon" href="assets1/images/gt_favicon.png">
	
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets1/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets1/css/font-awesome.min.css">

	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="assets1/css/bootstrap-theme.css" media="screen" >
	<link rel="stylesheet" href="assets1/css/main.css">
    <link rel="stylesheet" href="fonts/glyphicons-halflings-regular.woff2">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets1/js/html5shiv.js"></script>
	<script src="assets1/js/respond.min.js"></script>
	<![endif]-->
    
		<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets1/js/headroom.min.js"></script>
	<script src="assets1/js/jQuery.headroom.min.js"></script>
	<script src="assets1/js/template.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip({
                placement:'bottom'
            });
        });
</script>
</head>

<body class="home">
	<form id="form1" runat="server">
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top headroom" style="background-color:darkorange">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
		         </div>
              <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                  <li class="active"><a href="vertical.aspx">Home</a></li>
                  <li class="active"><a href="request1.aspx">View Requests <span class="badge"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></span></a></li>
                  <li class="active"><a href="customer2.aspx">View Members <span class="badge"><asp:Label ID="Label2" runat="server" Text=""></asp:Label></span></a></li>
                   
              </ul>
            
              <ul class="nav navbar-nav navbar-right">
     
           <li class="active"><a href="login1.aspx" onclick="signout()"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
     
           </ul>
          </div>			
		</div>
	</div> 
	<!-- /.navbar -->
    <asp:GridView ID="GridView1" runat="server" style="margin:200px 0px 0px 350px" AutoGenerateColumns="False" DataKeyNames="clubName" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" CssClass="table" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="50%">
            
        <AlternatingRowStyle BackColor="White" />
            
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ClubId" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="clubName" HeaderText="ClubName" ReadOnly="True" SortExpression="clubName" />
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
                <%--<asp:TemplateField HeaderText="Reject">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkReject" runat="server" CommandName="myReject" CommandArgument='<%# Bind("clubName")%>'>Reject</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>--%>
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>

	
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:clubConnectionString9 %>" SelectCommand="SELECT [id], [clubName], [adminName], [adrs], [city], [stat], [pin], [phone], [email], [typeofclub] FROM [ClubRegister] WHERE ([stas] = @stas)">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="stas" Type="Byte" />
            </SelectParameters>
        </asp:SqlDataSource>
        
    </form>
</body>
</html>
