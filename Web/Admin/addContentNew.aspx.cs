using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using MDL;
public partial class Admin_addNewContent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        New _new = new New();
        _new.New_Title = NewTitle.Text;
        _new.New_Content = NewContent.Text;
        _new.New_Type_Id = int.Parse(DropDownList1.SelectedValue);  //设置新闻类型ID
        _new.Is_Show = int.Parse(RadioButtonList1.SelectedValue);//设置新闻是否显示出来
        if (FileUpload1.FileName.Length != 0 && FileUpload1.FileName !=null)
        {
            string file = FileUpload1.FileName;   //将上传的文件名字赋值到文件名,
            FileUpload1.SaveAs(MapPath("~/newimage/" + file));  //将文件保存到服务器路径
            _new.New_Image = file;
        }
        else
            _new.New_Image = "";
        if (NewOper.insertNew(_new))
        {
            Label1.Text = "发布成功";
        }
    }
}
