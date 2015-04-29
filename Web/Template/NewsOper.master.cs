using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Template_NewsOper : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)  //如果用户没有登陆则跳转到错误页面
        {
            Response.Redirect("login.aspx"); 
        }
    }

}
