using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_F
{
    public partial class TicTacToe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int[,] ia_Map = new int[3, 3] { { 0, 0, 0 },{ 0, 0, 0 },{ 0, 0, 0 } };
            // O方
            int i_Ind = 3;
            int[] ia_2DIndx = mt_Get2DIndex(i_Ind);
            ia_Map[ia_2DIndx[0], ia_2DIndx[1]] = -1;
            for (int i_Ct = 0; i_Ct<3; i_Ct++)
            {
                for (int i_Ct2 = 0; i_Ct2<3;i_Ct2++){
                    Response.Write(ia_Map[i_Ct, i_Ct2]);
                }
                Response.Write("<br/>");
            }
        }
        public int[] mt_Get2DIndex(int i_Ind) {
            int[] ia_2DIndx = new int[2];
            ia_2DIndx[0] = i_Ind / 3;
            ia_2DIndx[1] = i_Ind % 3;
            return ia_2DIndx;
        }
    }
}