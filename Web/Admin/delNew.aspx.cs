using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
public partial class Admin_delNew : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        int new_Id = 0;
        try
        {
            new_Id = int.Parse(TextBox1.Text);
        }
        catch
        {
            Label1.Text = "请注意您输入的字符是否为整数";
        }

        if (NewOper.CheckNew_Id(new_Id))  //检查用户ID是否存在
        {
            
                if (NewOper.DelNew(int.Parse(TextBox1.Text)))   //判断是否删除成功
                {
                    Label1.Text = "删除新闻成功!";
                }
                else
                {
                    Label1.Text = "删除新闻失败!";
                }
            


        }
        else { Label1.Text = Label1.Text + "该新闻不存在"; }
    }
}
