using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApp_F{
    public partial class w_20211217 : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e)
        {

            string s_ConnStr = "Data Source=(localdb)\\MSSQLLocalDB;" +
                                "Initial Catalog = Test;" +
                                "Integrated Security = True;" +
                                "Connect Timeout = 30;" +
                                "Encrypt = False;" +
                                "TrustServerCertificate=False;" +
                                "ApplicationIntent =ReadWrite;" +
                                "MultiSubnetFailover =False;" +
                                "User ID = sa;Password = 12345;";
            if (!IsPostBack)
            {
                //string s_ConnStr = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;

                SqlConnection o_SQLcon = new SqlConnection(s_ConnStr);
                //string s_SQLEX = "INSERT INTO Users (Id, Name, Birthday) values (4, 'bbb', '2000/12/12')";
                //SqlCommand o_Com = new SqlCommand(s_SQLEX, o_SQLcon);
                SqlCommand o_Com = new SqlCommand("Select * from Users", o_SQLcon);
                o_SQLcon.Open();
                SqlDataReader o_R = o_Com.ExecuteReader();
                for (; o_R.Read();)
                {
                    Response.Write(o_R["Id"]);
                    Response.Write(o_R["Name"]);
                    Response.Write(o_R["Birthday"]);
                    Response.Write("<br/>");
                }
                o_SQLcon.Close();
            }
        }

        protected void btm1_Click(object sender, EventArgs e){
            string s_ConnStr = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;

            SqlConnection o_SQLcon = new SqlConnection(s_ConnStr);
            string s_SQLEX = "Insert into Users (Id, Name, Birthday) values (6, N'"+ tb_1.Text+"', '2000/12/12')"; 
            SqlCommand o_Com = new SqlCommand(s_SQLEX, o_SQLcon);
            o_SQLcon.Open();
            int i_F = o_Com.ExecuteNonQuery();
            o_SQLcon.Close();

            o_SQLcon = new SqlConnection(s_ConnStr);
            s_SQLEX = "Select * from Users";
            o_Com = new SqlCommand(s_SQLEX, o_SQLcon);
            o_SQLcon.Open();
            SqlDataReader o_R = o_Com.ExecuteReader();
            for (; o_R.Read();)
            {
                Response.Write(o_R["Id"]);
                Response.Write(o_R["Name"]);
                Response.Write(o_R["Birthday"]);
                Response.Write("<br/>");
            }
            o_SQLcon.Close();

        }
    }
}