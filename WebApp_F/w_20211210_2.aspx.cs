using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace WebApp_F{
    public partial class w_20211210_2 : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){
            string s_ConnStr = "Data Source=(localdb)\\MSSQLLocalDB;" +
                                "Initial Catalog = Test;" +
                                "Integrated Security = True;" +
                                "Connect Timeout = 30;"+
                                "Encrypt = False;" +
                                "TrustServerCertificate=False;" +
                                "ApplicationIntent =ReadWrite;" +
                                "MultiSubnetFailover =False;" +
                                "User ID = sa;Password = 12345;";

            try {
                SqlConnection o_Conn = new SqlConnection(s_ConnStr);
                SqlDataAdapter o_A = new SqlDataAdapter("Select * from Users", o_Conn);
                DataSet o_d = new DataSet();
                o_A.Fill(o_d, "ds_Res");
                gv_DataShow.DataSource = o_d;
                gv_DataShow.DataBind();
                o_Conn.Close();
            } catch (Exception ex) {
                Response.Write(ex.ToString());
            }
        }
    }
}