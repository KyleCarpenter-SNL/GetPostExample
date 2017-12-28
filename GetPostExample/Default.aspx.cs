using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            string[] numbers = new string[] { "one", "two", "three", "four", "five" };
            DD.DataSource = numbers;
            DD.DataBind();

            DD.SelectedIndex = 0;
        }
    }

    protected void button_Click(object sender, EventArgs e)
    {
        label.Text = DD.SelectedValue;
    }
}