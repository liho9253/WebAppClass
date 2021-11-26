using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_F{
    public partial class w_20211126_2 : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){
            //UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_Sumbit1_Click(object sender, EventArgs e){
            lb_Mag1.Text = tb_t1.Text;
        }

        protected void btn_Submit2_Click(object sender, EventArgs e){
            lb_Msg2.Text = "正確";
        }

        protected void but_Submit3_Click(object sender, EventArgs e){
            lb_Msg3.Text = tb_Num.Text;
        }

        protected void btn_Submit4_Click(object sender, EventArgs e){
            lb_Msg4.Text = "格式正確";
        }

        protected void cvr_id_ServerValidate(object source, ServerValidateEventArgs args){
            int i_Tmp = Convert.ToInt32(args.Value);
            if (i_Tmp % 2 == 0) {
                args.IsValid = true;
            }else{
                args.IsValid = true;
            }
        }

        protected void btn_Submit5_Click(object sender, EventArgs e){
            if (Page.IsValid) {
                lb_Msg5.Text = tb_Number.Text;
            }
        }
    }
}