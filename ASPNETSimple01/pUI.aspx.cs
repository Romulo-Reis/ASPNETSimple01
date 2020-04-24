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
            if (!IsPostBack)
            {
                ListItem li = new ListItem("Verde", "4");
                DropDownList1.Items.Add(li);

                Literal1.Text = hdValor.Value;
            }
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

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            lblChk.Text = CheckBox1.Checked.ToString();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblDrop.Text = DropDownList1.SelectedItem.Value + " - " + DropDownList1.SelectedItem.Text;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
        }

        protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            txtDate.Text = String.Empty;
        }
    }
}