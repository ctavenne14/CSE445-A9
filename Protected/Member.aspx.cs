using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie myCookies = Request.Cookies["myCookieId"];
        if (myCookies != null)
        {
            Session["Username"] = myCookies["Username"];
        }
        if (Session.Count == 0)
        {
            Response.Redirect("~/Login.aspx");
        }
        else
        {
            Label4.Text = "Welcome, " + (string)Session["Username"];
        }

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        //string data;
        // string ans;
        if (!String.IsNullOrWhiteSpace(txtBox_1.Text) && !String.IsNullOrWhiteSpace(txtBox_2.Text))
        {
            string lat = txtBox_1.Text;
            string lon = txtBox_2.Text;
            using (var webClient = new WebClient())
            {
                string json = webClient.DownloadString("http://webstrar12.fulton.asu.edu/Page6/Service1.svc/solar?lat=" + lat + "&lon=" + lon);
                //ans = JSON.parse(json);
                lbl_info.Text = "The annual average solar intensity at the location given is: " + json;
            }


        }
        else
        {
            lbl_info.Text = "Please enter a valid latitude and longitude.";
        }
    }
    protected void btn1(object sender, EventArgs e)
    {
        ServiceReference1.Service1Client client = new ServiceReference1.Service1Client(); // Makes sure both text boxes are full

        string zipcode = txtInput.Text; // obtains ZIP code from the text box
        string data = ""; // to store data

        if (!String.IsNullOrWhiteSpace(txtInput.Text) && !String.IsNullOrWhiteSpace(TextBox1.Text)) // checks if both text boxes have data
        {


            data = client.findNearestStore(zipcode, TextBox1.Text); // finds the nearest store 
            Label1.Text = "Store Address: " + data;
        }
        else
        {
            Label3.Text = "Please enter data in both boxes."; // prompts user to enter data in both boxes
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Clear();

        HttpCookie myCookies = Request.Cookies["myCookieId"];
        if (myCookies != null)
        {
            myCookies.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(myCookies);
        }
        Response.Redirect("~/Default.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}