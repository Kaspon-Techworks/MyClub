<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Club.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <center>
        <h1>Register Your Club</h1>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
   <%-- <asp:Label ID="Label1" runat="server" Text="Club Name" Width="150px"></asp:Label>--%>
<asp:TextBox ID="TextBox1" runat="server" Width="200px" class="form-control" placeholder="Club Name"></asp:TextBox>
<br />
<br />
<%--<asp:Label ID="Label2" runat="server" Text="Select Type of club" Width="150px"></asp:Label>--%>
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="200px" class="btn btn-default dropdown-toggle">
</asp:DropDownList>
<br />
<br />
<%--<asp:Label ID="Label3" runat="server" Text="Admin Name" Width="150px"></asp:Label>--%>
<asp:TextBox ID="TextBox2" runat="server" Width="200px" class="form-control" placeholder="Admin Name"></asp:TextBox>
<br />
<br />
<%--<asp:Label ID="Label4" runat="server" Text="Address" Width="150px"></asp:Label>--%>
<asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="200px" class="form-control" placeholder="Address"></asp:TextBox>
<br />
<br />
<%--<asp:Label ID="Label5" runat="server" Text="City" Width="150px"></asp:Label>--%>
<asp:TextBox ID="TextBox4" runat="server" Width="200px" class="form-control" placeholder="City"></asp:TextBox>
<br />
<br />
<%--<asp:Label ID="Label6" runat="server" Text="State" Width="150px"></asp:Label>--%>
<asp:TextBox ID="TextBox5" runat="server" Width="200px" class="form-control" placeholder="State"></asp:TextBox>
<br />
<br />
<%--<asp:Label ID="Label7" runat="server" Text="Pin-Code" Width="150px"></asp:Label>--%>
<asp:TextBox ID="TextBox6" runat="server" Width="200px" class="form-control" placeholder="Pin-Code"></asp:TextBox>
<br />
<br />
<%--<asp:Label ID="Label8" runat="server" Text="Phone Number" Width="150px" ></asp:Label>--%>
<asp:TextBox ID="TextBox7" runat="server" TextMode="Phone" Width="200px" class="form-control" placeholder="Phone Number"></asp:TextBox>
<br />
<br />
<%--<asp:Label ID="Label9" runat="server" Text="Email" Width="150px"></asp:Label>--%>
<asp:TextBox ID="TextBox8" runat="server" TextMode="Email" Width="200px" class="form-control" placeholder="Email"></asp:TextBox>
<br />
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" class="btn btn-default" />
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label10" runat="server"></asp:Label>
<br />
<br />
        </center>
    

</asp:Content>
