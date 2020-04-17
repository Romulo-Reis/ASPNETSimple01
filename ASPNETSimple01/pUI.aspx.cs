using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSimple01
{
    public partial class pUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            lblMsg.Text = txtNomeComponente.Text;
        }

        protected void btnComponente_Click(object sender, EventArgs e)
        {
            txtNomeComponente.Enabled = false;
            //btnComponente.Enabled = false;
            ((Button)sender).Enabled = false;
        }
    }
}