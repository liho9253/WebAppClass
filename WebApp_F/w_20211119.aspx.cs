using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_F
{
    public partial class w_20211119 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e){
            // 無頁籤 => 沒有menu
        }

        protected void Button1_Click(object sender, EventArgs e){
            Panel1.Visible = !(Panel1.Visible);
        }
         
        protected void Button2_Click(object sender, EventArgs e){
            Panel2.Visible = !(Panel2.Visible);
        }

        protected void Button3_Click(object sender, EventArgs e){
            mv_Show.ActiveViewIndex = 1;
            mu_Tag.Items[1].Selected = true;
        }

        protected void Button4_Click(object sender, EventArgs e){
            mv_Show.ActiveViewIndex = 0;
            mu_Tag.Items[0].Selected = true;
        }

        protected void mu_Tag_MenuItemClick(object sender, MenuEventArgs e){
            mv_Show.ActiveViewIndex = Convert.ToInt32(mu_Tag.SelectedValue);
        }
    }
}