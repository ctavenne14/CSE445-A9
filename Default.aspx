<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <div>

          <h1>Assignment 9 TryIt Page</h1>  
        </div>
        <div>
            <h3>The components tested are a login user control and xml file manipulation.</h3>
        </div>
        <div>
            <h3>The remote services are finding the nearest store and a solar service.</h3>
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Member Login" OnClick="Button1_Click" />
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="Member Page" OnClick="Button2_Click" />
        </p>
</asp:Content>
