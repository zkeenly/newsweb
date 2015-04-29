using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using MDL;

namespace BLL
{
    /// <summary>
    /// 对新闻类的操作都封装在这里
    /// </summary>
    public class NewOper
    {


        /// <summary>
        /// 由新闻的ID删除一个新闻
        /// </summary>
        /// <param name="_New_Id"></param>
        /// <returns></returns>
        public static bool DelNew(int _New_Id)
        {
            return (DelOper.DelNew(_New_Id) > 0);
        }
        /// <summary>
        /// 检查新闻的Id是否存在.如果存在,返回true
        /// </summary>
        /// <param name="_NewId"></param>
        /// <returns></returns>
        public static bool CheckNew_Id(int _NewId)
        {
            return (SelectOper.GetNew_Id(_NewId) > 0);

        }
        /// <summary>
        /// 查询按照逆向排序的第_order个,并且新闻类型为_newType 查询其新闻Id
        /// </summary>
        /// <param name="_order"></param>
        /// <returns></returns>
        public static int selNewTitleOrder(int _order,int _newType)
        {
            New news = new New();
            news = SelectOper.selNewOrder(_order, _newType);
            int id = news.New_Id;
            return id;
        }


        /// <summary>
        /// 检索这个新闻类型一共有几条新闻
        /// </summary>
        /// <param name="_newType"></param>
        /// <returns></returns>
        public static int selNewTypeCount(int _newType)
        {
            return SelectOper.selNewTypeCount(_newType);
        }


        
        /// <summary>
        /// 返回是否插入新闻成功
        /// </summary>
        /// <param name="_new"></param>
        /// <returns></returns>
        public static bool insertNew(New _new)
        {
            _new.Create_Time = DateTime.Now;
            
            return AddOper.insertNew(_new) > 0;        
        }
        /// <summary>
        /// 根据新闻ID查询新闻内容,返回到调用者
        /// </summary>
        /// <param name="_newId"></param>
        /// <returns></returns>
        public static string selNewContent(int _newId)
        {
            New news = new New();
            news = SelectOper.getNew(_newId);

            string newContent = news.New_Content;
            return newContent;
        }
        /// <summary>
        /// 根据新闻ID查找新闻的标题
        /// </summary>
        /// <returns></returns>
        public static string selNewTitle(int _newId)
        {
            New news = new New();
            news = SelectOper.getNew(_newId);

            string newTitle =news.New_Title;
            


            return newTitle;
        }
        /// <summary>
        /// 查找改新闻的发布日期
        /// </summary>
        /// <param name="_newId"></param>
        /// <returns></returns>
        public static string selNewTime(int _newId)
        {
            string time = "";
            New news = new New();
            news = SelectOper.getNew(_newId);

            DateTime newTime = news.Create_Time;
            time =  newTime.ToShortDateString().ToString();//2005-11-5


            return time;
        }
        

    }
    
}
