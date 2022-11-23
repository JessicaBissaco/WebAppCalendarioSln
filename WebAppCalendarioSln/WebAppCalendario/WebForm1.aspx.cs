using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCalendario
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBoxData.Text = Calendar1.SelectedDate.Date.ToShortDateString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }
    }
}