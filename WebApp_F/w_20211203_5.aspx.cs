using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_F{
    public partial class w_20211203_5 : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){
            string s_Name = "蒿蒿";
            string s_Id = "A123456789";
            Session["name"] = s_Name;
            Session["id"] = s_Id;
            Response.Write("Session已註冊, 保存資訊有2<br/>");
            Response.Write("保存客戶端姓名"+s_Name+"<br/>");
            Response.Write("保存客戶端ID"+s_Id+"<br/>");
            Response.Write("會議室ID"+Session.SessionID+"<br/>");
            Response.Write("生命週期" + Session.Timeout.ToString() + "分鐘");
        }
    }
}