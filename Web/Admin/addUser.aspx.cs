using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using MDL;
public partial class Admin_addUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {


    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        if (TextBox2.Text.Equals(TextBox3.Text))
        {
            Label2.Text = "";
        }
        else
        {
            Label2.Text = "两次输入的密码需要相同";
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        int pwdLenth = TextBox2.Text.Length;
        if (pwdLenth > 12 || pwdLenth < 6)
        {
            PwdLength.Text = "输入的长度不在允许的范围之内,请重新输入!(长度在6~12之间)";
        }
        else
        {
            PwdLength.Text = "";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        PwdLength.Text = "";
        Label1.Text = "";
        Label2.Text = "";
        Label3.Text = "";
        TextBox2_TextChanged(sender, e);
        TextBox3_TextChanged(sender,e);
 
            if (UserOper.CheckUserName(TextBox1.Text))  //检测用户名是否已经存在
            {
                Label1.Text = "已经存在该用户,请换个用户名";
            }
            else
            {
                Label1.Text = "";

                User _user = new User();
                MDL.User.setUserCommon(_user);  //设置为普通用户
                _user.User_Name = TextBox1.Text;
                _user.User_Pwd = TextBox2.Text;
                if (UserOper.AddUser(_user))
                {
                    Label3.Text = "创建用户成功";
                }
                else
                {
                    Label3.Text = "创建用户失败";
                }
            }
        
    }
}
