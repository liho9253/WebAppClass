﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_F{
    public partial class w_20211203_4 : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){
            Response.Write("名子:" + Request.QueryString["name"] + "<br/>");
            Response.Write("證號:" + Request.QueryString["id"] + "<br/>");

        }
    }
}