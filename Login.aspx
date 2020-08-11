<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
<%@ Register TagPrefix="user" TagName="LoginControl" src="~/Login.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
	<body>
    		<h1>User Control Demonstration</h1>
		<hr>
   		 <form runat="server">
     			 <user:LoginControl ID="MyLogin" BackColor="#ccccff" RunAt="server" />
    		</form>
		<hr>
    		<h3><asp:Label ID="Output" RunAt="server" /></h3>
 	</body>
</html>

