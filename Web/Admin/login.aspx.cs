using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MDL;
using BLL;
public partial class Admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string User_Name = Login1.UserName;
        string User_Pwd = Login1.Password;
        

        User user = new User();
        user.User_Name = User_Name;
        user.User_Pwd = User_Pwd;
        if (UserOper.CheckUser(user))
        {
            user =UserOper.getUser(user.User_Name);
            Session["User"] = user;   //将登陆的user用户添加到session中
            if (Session["User"] != null)
            {
                Response.Redirect("index.aspx");
            }
        }



    }
}
