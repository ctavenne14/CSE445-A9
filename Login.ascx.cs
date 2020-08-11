using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Login : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie myCookies = Request.Cookies["myCookieId"];
        if (myCookies != null)
        {
            Session["Username"] = myCookies["Username"];
            Session["Password"] = myCookies["Password"];
        }
    }

    protected void LogIN(object sender, EventArgs e)
    {
        HttpCookie myCookies = new HttpCookie("myCookieId");
        bool open = false;
        //taken from lecture notes
        string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Members.xml");
        if (File.Exists(fLocation))
        {
            FileStream FS = new FileStream(fLocation, FileMode.Open);
            XmlDocument xd = new XmlDocument();
            xd.Load(FS);
            XmlNode node = xd;
            XmlNodeList children = node.ChildNodes;
            foreach (XmlNode child in children.Item(1))
            {
                if (TextBox1.Text == child.FirstChild.InnerText)
                {
                    if (TextBox2.Text == child.LastChild.InnerText)
                    {
                        Session["Username"] = TextBox1.Text;
                        Session["Password"] = TextBox2.Text;
                        myCookies["Username"] = TextBox1.Text;
                        myCookies["Password"] = TextBox2.Text;
                        myCookies.Expires = DateTime.Now.AddMonths(2);
                        Response.Cookies.Add(myCookies);
                        Response.Redirect("Protected/Member.aspx");
                        open = true;
                    }
                }
            }
            FS.Close();
        }

        if(!open)
        {
            Label1.Text = "The username or password entered is incorrect.";
        }
    }

    protected void ReturnClick(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void RegisterClick(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}