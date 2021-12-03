using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_F
{
    public partial class w_20211203_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s_Name = "蒿蒿";
            string s_Id = "A1312321";
            Response.Redirect(("w_20211203_4?name=" +
                                Server.UrlEncode(s_Name) +"&"+
                                "id="+Server.UrlEncode(s_Id)
                                ),false);
            HttpContext.Current.ApplicationInstance.CompleteRequest();
        }
    }
}