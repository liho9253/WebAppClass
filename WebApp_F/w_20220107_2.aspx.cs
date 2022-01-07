using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_F
{
    public partial class w_20200107_2 : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){
            if (!IsPostBack) { 
                lb_In.Text = "裡面";
                lb_Out.Text = "外面";
            }
        }

        protected void btn_Sub_Click(object sender, EventArgs e){
            lb_In.Text = "小叮噹";
            lb_Out.Text = "ㄤㄤㄤ";

        }
    }
}