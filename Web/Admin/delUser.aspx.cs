using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using MDL;
public partial class Admin_altUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int user_Id = 0;
        try
        {
            user_Id = int.Parse(TextBox1.Text);
        }
        catch
        {
            Label1.Text = "请注意您输入的字符是否为整数";
        }

        if (UserOper.CheckUser_Id(user_Id))  //检查用户ID是否存在
        {
            if (!UserOper.CheckUser_Admin(int.Parse(user_Id.ToString())))  //如果要删除的用户不是管理员
            {
                if (UserOper.DelUser(int.Parse(TextBox1.Text)))   //判断是否删除成功
                {
                    Label1.Text = "删除用户成功!";
                }
                else
                {
                    Label1.Text = "删除用户失败!";
                }
            }
            else
            {
                Label1.Text = "您不可以删除管理员用户,谢谢!";
            }

        }
        else { Label1.Text = Label1.Text+"该用户不存在"; }

        
    }
}
