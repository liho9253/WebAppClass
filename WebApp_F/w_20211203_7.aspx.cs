using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_F{
    public partial class w_20211203_7 : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){
            int i_counter = 0;
            Application.Lock();

            if (Application["name"] != null) {
                i_counter = (int)Application["Counter"];
                i_counter++;
                Application["Counter"] = i_counter;
            }else{
                i_counter++;
                Application["Counter"] = i_counter;
            }
            Application.UnLock();
            Response.Write("目前有多少連線已對該網頁產生請求(request) &nbsp;"+i_counter.ToString());
        }
    }
}