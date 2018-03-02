using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Kitchen_Sink
{
    public partial class E500 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Error"].ToString() != null)
            {
                lblErrorMsg.Text = Session["Error"].ToString();
            }
        }
    }
}