<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Register.ascx.cs" Inherits="Register" %>
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
        Re-enter Password</td> <td>
            <asp:TextBox ID="TextBox3" TextMode="Password" runat="server"></asp:TextBox>
        </td> </tr>
    <tr> <td>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td> <td><asp:Button Text="Register" RunAt="server" OnClick="RegisterClick" /></td> </tr>
    <tr> <td>Return to Home Page</td> <td><asp:Button Text="Return" RunAt="server" OnClick="ReturnClick" /></td> </tr>
</table>