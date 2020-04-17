using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSimple01
{
    public partial class pSettings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(System.Web.Configuration.WebConfigurationManager.AppSettings["SERVER"]);
            //Response.Write(WebConfigurationManager.AppSettings["DEFAULTLANGUAGE"]);
            Response.Write(HttpContext.GetGlobalResourceObject("Main","MOEDA"));
        }
    }
}