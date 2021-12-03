using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_F{
    public partial class w_20211203_2 : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){
            //Response.Redirect("https://google.com/",false);
            //HttpContext.Current.ApplicationInstance.CompleteRequest();
            Response.BufferOutput = false;//true
            for (int i = 0; i < 10; i++) {
                Response.Write(i.ToString() +
                    "QWERTYUIOPASDFGHJKLZXCVBNM" + "<br/>");
                System.Threading.Thread.Sleep(400); 
            }
            double d_Chin = 85;
            double d_Math = 100;
            double d_Eng = 70;
            Response.Write("國文:" + d_Chin.ToString()+"<br/>");
            Response.Write("數學:" + d_Math.ToString() + "<br/>");
            Response.Write("英文:" + d_Eng.ToString() + "<br/>");
            Response.Flush(); HttpContext.
            Current.Response.SuppressContent = true;
            HttpContext.Current.ApplicationInstance.CompleteRequest();
            double avg = (d_Eng + d_Math + d_Eng) / 3;
            Response.Write("平均:" + avg.ToString());
        }
        
    }
}