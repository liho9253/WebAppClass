using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_F
{
    public partial class w_20211029 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e) {
            String temp = "";
            if (CheckBox1.Checked == true) temp += CheckBox1.Text + "\n";
            if (CheckBox2.Checked == true) temp += CheckBox2.Text + "\n";
            if (CheckBox3.Checked == true) temp += CheckBox3.Text + "\n";

            TextBox2.Text = temp;
        }

        protected void Button1_Click(object sender, EventArgs e) {
            String temp = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++) {
                if (CheckBoxList1.Items[i].Selected) {
                    temp += CheckBoxList1.Items[i].Value + "\n";
                }
                TextBox1.Text = temp;
            }
        }
        protected void RadioButton1_CheckedChanged(object sender, EventArgs e) {
            if (RadioButton1.Checked == true) {
                Label1.Text = RadioButton1.Text;
            }
        }
        protected void RadioButton2_CheckedChanged(object sender, EventArgs e) {
            if (RadioButton2.Checked == true) {
                Label1.Text = RadioButton2.Text;
            }
        }
        protected void RadioButtonList1_onselectedindexchanged(object sender, EventArgs e) {
            Label2.Text = RadioButtonList1.SelectedItem.Text;
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e) {
            Label3.Text = DropDownList1.SelectedItem.Value;
        }
    }
}