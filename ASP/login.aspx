<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Club.login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div style="float:right">
        
        
    </div>
    <div style="clear:both"></div>
  
        <div class="body"> </div>
		<div class="grad"></div>
		<div class="header">
			<div>My<span>Club</span></div>
		</div>
		<br/>
		<div class="login">
   <%-- <asp:Label ID="Label1" runat="server" Text="User Name" Width="150px"></asp:Label>--%>
    <asp:TextBox ID="TextBox1" runat="server" Width="200px" placeholder="UserName" ></asp:TextBox>
       <br />
       <br />
    <%--<asp:Label ID="Label2" runat="server" Text="Password" Width="150px" ></asp:Label>--%>
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="200px" placeholder="Password" ></asp:TextBox>
    <br />
         <br />
             <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Black">Forgot Password?</asp:LinkButton>&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Login"  OnClick="Button1_Click"  class="btn btn-default" Width="80px"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
             <br />
            New User Click here to <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Black"  ><a href="register.aspx" style="color:red" >Register</a></asp:LinkButton>
            <br />
           
            <asp:Label ID="Label1" runat="server" ForeColor="Red" Font-Size="Medium"></asp:Label>
       <br />
         <br />
           <%-- //-----------------------------------------------------------------------------------------------%>
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>

            <div id="model" class="modal-content" style="width:50%;background-color:black;height:200px;width:400px" >
    <span id="close" class="close">×</span>
                <center>
                    <br />
                    <br />
                     <br />
                    
                <asp:TextBox ID="TextBox3" runat="server" ForeColor="White" placeholder="Enter Your Mail" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                <br />
                    <br />
                <asp:Button ID="Button2" runat="server" Text="Check" class="btn btn-default" OnClick="Button2_Click" />
                    </center>
  </div>

            <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="model" TargetControlID="LinkButton2" CancelControlID="close"></asp:ModalPopupExtender>


           <%-- <asp:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server"></asp:ToolkitScriptManager>--%>


            <div id="Div1" class="modal-content" style="width:50%;background-color:black;height:200px;width:400px" >
    <span id="Span1" class="close">×</span>
                <center>
                    <br />
                    <br />
                     <br />
                    <asp:Label ID="Label2" runat="server" Text="Club Name" ForeColor="White" Width="150"></asp:Label>
                     <asp:Label ID="Label3" runat="server" Text="" ForeColor="White" Width="150"></asp:Label>
                    <br />
                    <br />
                <asp:Button ID="Button3" runat="server" Text="Reset" class="btn btn-default" OnClick="Button3_Click"  />
                    <br />
                    <asp:Label ID="Label4" runat="server" ForeColor="White"></asp:Label>
                    <div style="display:none">
                    <asp:Button ID="Button4" runat="server" Text="Button" ></asp:Button></div>
                    </center>
  </div>


            <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server" TargetControlID="Button4" PopupControlID="Div1" CancelControlID="Span1" ></asp:ModalPopupExtender>

            <div id="Div2" class="modal-content" style="width:50%;background-color:black;height:auto;width:400px" >
    <span id="Span2" class="close">×</span>
                <p style="color:white;font-weight:bolder">Your password is send to your register Email</p>
                </div>

            <asp:ModalPopupExtender ID="ModalPopupExtender3" runat="server" TargetControlID="Button4" PopupControlID="Div2" CancelControlID="Span2"></asp:ModalPopupExtender>



            </div>
           
      


</asp:Content>
