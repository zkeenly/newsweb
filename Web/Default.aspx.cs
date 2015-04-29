using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
public partial class _Default : System.Web.UI.Page
{
    int [] news_id = {0,0,0,0,0,0};
    protected void Page_Load(object sender, EventArgs e)
    {
        int _newId = 0;
        int _new_Type = 1;
        int newConut = 0;
      
         newConut =  NewOper.selNewTypeCount(_new_Type); //查询符合_newType类型的新闻数量有newCount个
         for (int _order = 1; _order <= newConut && _order <= 5; _order++)
         {
             _newId = NewOper.selNewTitleOrder(_order, _new_Type);
            
             switch (_order)  //将新闻标题逐行显示
             {
                 case 1: LinkButton1.Text = NewOper.selNewTitle(_newId);
                     news_id[1] = _newId;
                     LinkButton1.Visible = true;
                     Label1.Text = NewOper.selNewTime(_newId);break;
                 case 2: LinkButton2.Text = NewOper.selNewTitle(_newId);
                     news_id[2] = _newId;
                     LinkButton2.Visible = true;
                     Label2.Text = NewOper.selNewTime(_newId); break;
                 case 3: LinkButton3.Text = NewOper.selNewTitle(_newId);
                     news_id[3] = _newId;
                     LinkButton3.Visible = true;
                     Label3.Text = NewOper.selNewTime(_newId); break;
                 case 4: LinkButton4.Text = NewOper.selNewTitle(_newId);
                     news_id[4] = _newId;
                     LinkButton4.Visible = true;
                     Label4.Text = NewOper.selNewTime(_newId); break;
                 case 5: LinkButton5.Text = NewOper.selNewTitle(_newId);
                     news_id[5] = _newId;
                     LinkButton5.Visible = true;
                     Label5.Text = NewOper.selNewTime(_newId); break;
             }

             

         }




    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["new_id"] = news_id[1];
        Response.Redirect("news.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["new_id"] = news_id[2];
        Response.Redirect("news.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["new_id"] = news_id[3];
        Response.Redirect("news.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session["new_id"] = news_id[4];
        Response.Redirect("news.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Session["new_id"] = news_id[5];
        Response.Redirect("news.aspx");
    }
}
