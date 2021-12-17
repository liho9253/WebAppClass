using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_F{
    public partial class w_20211217_2 : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){

        }

        protected void dd1_Sort_SelectedIndexChanged(object sender, EventArgs e){
            gv_Show.Sort(dd1_Sort.SelectedValue, SortDirection.Descending);
        }


    }
}