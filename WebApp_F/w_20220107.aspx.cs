using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_F
{
    public partial class _20220107 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dd1_Users_SelectedIndexChanged(object sender, EventArgs e){
            lb_txt.Text = "你選擇了" + dd1_Users.SelectedValue; 
        }
    }
}