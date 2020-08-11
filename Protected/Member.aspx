<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member.aspx.cs" Inherits="Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form runat="server">
    <div>
        <h3>
            As a Member you have access to these services below.
        </h3>

        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>

    </div>
    <h3>Solar Energy Service</h3>
            <h4>Returns the annual average sunshine index of a given position (latitude, longitude)</h4>
            <p>
                Method Name: SolarIntensity()<br/>
                Input parameter: decimal (latitude, longitude)<br/>
                Return type: decimal</p>
            <p>
                Enter a valid latitude and longitude:&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:TextBox ID="txtBox_1" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtBox_2" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btn_submit1" runat="server" OnClick="btn_submit_Click" Text="Submit" />
            </p>
            <p>
                <asp:Label ID="lbl_info" runat="server"></asp:Label>  
            </p>
            <p>
                *Note information about the average sunshine is gathered from https://developer.nrel.gov</p>
    <p>&nbsp;</p>

    <div class="jumbotron">
        <h3>Find Nearest Store Service</h3>
    </div>
    <h4>Returns the address of the closest store (zipcode, store name)</h4>
            <p>
                Method Name: FindNearestStore()<br/>
                Input parameters: Zipcode and store name <br/>
                Return type: string of the address of the closest store</p>
            <p>
    <p>Please enter Zipcode:
        <asp:TextBox ID="txtInput" runat="server" Width="200px"></asp:TextBox>
    </p>
    <p>Please enter Store Name:
        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
        <asp:Button ID="button1" runat="server" onclick="btn1" Text="Submit" /> 
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        The address of the closest store is:

        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    </p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Return" />

    </p>
                </form>
</body>
</html>
