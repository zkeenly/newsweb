using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MDL;
using BLL;
public partial class Admin_altUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        User users = new User();
        users = (User)Session["User"];
        Label1.Text = users.User_Name;
    }


    protected void Button1_Click2(object sender, EventArgs e)
    {
        MDL.User user = new User();
        MDL.User user1 = new User();  //输入老密码所得到的用户
        user = (User)Session["User"];
        int id = user.User_Id;
        string oldPaw = TextBox1.Text;
        string newPaw = TextBox2.Text;
        if (oldPaw != UserOper.GetUserPwd(id) && UserOper.GetUserPwd(id) != "0") //验证老密码是否正确
        {

            if (UserOper.AltUserPwd(id, newPaw))//如果更改密码成功
            {
                Label2.Text = "更改成功";
            }


            else
            {
                Label2.Text = "更改失败";
            }


        }
        else { Label2.Text = "输入原密码错误"; }
    }

}
