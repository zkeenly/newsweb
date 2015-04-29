using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MDL;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
namespace DAL
{
    /// <summary>
    /// 增加数据类操作都封装在这里
    /// </summary>
    public class AddOper
    {
        /// <summary>
        /// 插入一条用户数据,返回所影响的行数
        /// </summary>
        /// <param name="_user"></param>
        /// <returns></returns>
        public static int addUser(User _user)
        {
            string sql = "insert into [User]([User_Name],[User_Pwd],[User_Admin])"+
                         "values(@User_Name,@User_Pwd,@User_Admin)";
            SqlParameter[] values = new SqlParameter[]
            {
                
                new SqlParameter("@User_Name",_user.User_Name),
                new SqlParameter("@User_Pwd",_user.User_Pwd),
                new SqlParameter("@User_Admin",_user.User_Admin)
            };
            int i = DBHelper.ExecuteCommand(sql, values);
                DBHelper.ColseReader();
            return i;

        }
        /// <summary>
        /// 传入New类对象,将一条新闻插入数据库.返回所影响的行数
        /// </summary>
        /// <param name="?"></param>
        /// <returns></returns>
        public static int insertNew(New _new)
        {
            string sql = "insert into [New]([New_Title],[New_Content],[New_Type_Id],[New_Image],[Create_Time],[Is_Show]) "+
                         "values(@New_Title,@New_Content,@New_Type_Id,@New_Image,@Create_Time,@Is_Show)";
            SqlParameter[] values = new SqlParameter[]
            {
                new SqlParameter("@New_Title",_new.New_Title),
                new SqlParameter("@New_Content",_new.New_Content),
                new SqlParameter("@New_Type_Id",_new.New_Type_Id),
                new SqlParameter("@New_Image",_new.New_Image),
                new SqlParameter("@Create_Time",_new.Create_Time),
                new SqlParameter("@Is_Show",_new.Is_Show)

            };
            return DBHelper.ExecuteCommand(sql, values);

            
        }
    }
}
