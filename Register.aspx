<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>
<%@ Register TagPrefix="reg" TagName="RegisterControl" src="~/Register.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Register a User</h1>
		<hr>
   		 <form runat="server">
     			 <reg:RegisterControl ID="MyRegister" BackColor="#ccccff" RunAt="server" />
    		</form>
		<hr>
    		<h3><asp:Label ID="Output" RunAt="server" /></h3>
</body>
</html>
