using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSimple01
{
    public partial class pHeaders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("<br>Headers<br>");

            foreach (string header in Request.Headers)
            {
                Response.Write(header +" - "+ Request.Headers[header]+"<br>");
            }

            Response.Write("<br>Serve Variables<br>");

            foreach(string sv in Request.ServerVariables)
            {
                Response.Write(sv + " - " + Request.ServerVariables[sv]+ "<br>");
            }
        }
    }
}