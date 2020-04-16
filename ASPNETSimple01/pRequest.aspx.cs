using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSimple01
{
    public partial class pRequest1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = Request.QueryString["s"];
            Response.Write(s);
            Response.Write(Request.Path + "<br>");
            Response.Write(Request.PhysicalPath + "<br>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write(Request.Form["text"]);
        }
    }
}