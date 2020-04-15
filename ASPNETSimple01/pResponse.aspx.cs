using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSimple01
{
    public partial class pRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("OK");

            //Response.AddHeader("APPLICATION_INFORMATION","HELLO TEST");
            //Response.Redirect("http://www.google.com");
            Response.End();
            Response.Write("OK2");
        }
    }
}