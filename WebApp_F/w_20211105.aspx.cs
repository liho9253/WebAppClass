using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_F{ 
    public partial class w_20211105 : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e){
            Label1.Text = "您剛選擇的日期為: " + Calendar1.SelectedDate; 
        }
    }
}