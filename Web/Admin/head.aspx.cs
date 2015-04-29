using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MDL;
public partial class Admin_head : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Label1.Text = "请先登录";

        }
        else
        {
            User user = (User)Session["User"];
            Label1.Text = "欢迎您:"+user.User_Name;
        }
    }
}
