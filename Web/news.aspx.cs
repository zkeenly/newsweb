using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
public partial class news : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        Label1.Text = NewOper.selNewTitle((int)Session["new_id"]);
        Label2.Text = NewOper.selNewContent((int)Session["new_id"]);
    }
}
