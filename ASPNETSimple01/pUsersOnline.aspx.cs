using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSimple01
{
    public partial class pUsersOnline : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Users Online: ");
            Response.Write(Application["ONLINE"]);
            Response.Write("<BR><BR>");
            Response.Write(HttpContext.GetGlobalResourceObject("Main", "MOEDA"));
        }
    }
}