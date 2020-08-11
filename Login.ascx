<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Login.ascx.cs" Inherits="Login" %>
<table id="MyTable" cellpadding="4" RunAt="server">
  	<tr> <td>User Name:</td>
         	<td><asp:TextBox ID="TextBox1" RunAt="server" />
		</td>
	</tr>
         <tr>	<td>Password:</td> 
               	<td><asp:TextBox ID="TextBox2" TextMode="password" RunAt="server" />  
		</td>
  	</tr>
  	<tr> <td>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td> <td><asp:Button Text="Log In" RunAt="server" OnClick="LogIN" /></td> </tr>
    <tr> <td>New Member? Register Now!</td> <td><asp:Button Text="Register" RunAt="server" OnClick="RegisterClick" /></td> </tr>
    <tr> <td>Return to Home Page</td> <td><asp:Button Text="Return" RunAt="server" OnClick="ReturnClick" /></td> </tr>
</table>
