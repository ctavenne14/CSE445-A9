using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Register : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ReturnClick(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }


    protected void RegisterClick(object sender, EventArgs e)
    {
        if (TextBox2.Text == TextBox3.Text)
        {
            string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Members.xml");
            XmlDocument xdoc = new XmlDocument();
            xdoc.Load(fLocation);
            //add a new node into the xml file
            XmlDocumentFragment nodeFrag = xdoc.CreateDocumentFragment();
            nodeFrag.InnerXml = @"<Member><Username>" + TextBox1.Text + "</Username>" + "<Password>" + TextBox2.Text + "</Password>" + "</Member>";
            xdoc.DocumentElement.AppendChild(nodeFrag);
            //Save the updated xml file
            xdoc.Save(fLocation);
            Label1.Text = "Successfully Registered.";
        }
        else
        {
            Label1.Text = "The passwords do not match";
        }
    }
}