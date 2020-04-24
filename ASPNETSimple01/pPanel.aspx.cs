using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSimple01
{
    public partial class pPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSwitch_Click(object sender, EventArgs e)
        {
            Panel1.Visible = !Panel1.Visible;
            Panel2.Visible = !Panel2.Visible;
        }
    }
}