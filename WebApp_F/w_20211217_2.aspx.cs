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

        protected void dd1_sort_SelectedIndexChanged(object sender, EventArgs e){
            gv_show.Sort(dd1_sort.SelectedValue, SortDirection.Descending);
        }

        protected void gv_show_SelectedIndexChanged(object sender, EventArgs e){
            lb_Msg.Text = gv_show.SelectedRow.Cells[2].Text +
                            ((Label)gv_show.SelectedRow.Cells[3].FindControl("Label1")).Text +
                            gv_show.SelectedRow.Cells[4].Text;
        }


        protected void gv_show_RowCommand(object sender, GridViewCommandEventArgs e){
            if (e.CommandName == "Cal") {
                int i_Row = Convert.ToInt32(e.CommandArgument);
                DateTime o_DT = (DateTime.Parse(gv_show.Rows[i_Row].Cells[4].Text).AddDays(2));
                lb_Msg.Text = o_DT.ToString();
                                 
            }
        }
    }
}