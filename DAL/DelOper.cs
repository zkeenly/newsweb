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
    /// 数据库的删除操作都封装在这里
    /// </summary>
    public class DelOper
    {


        /// <summary>
        /// 根据新闻的Id,来判断删除新闻的条数,返回给调用者
        /// </summary>
        /// <param name="?"></param>
        /// <returns></returns>
        public static int DelNew(int _New_Id)
        {
            string sql = "delete  from [New] where [New_Id] = @New_Id";
            SqlParameter[] values = new SqlParameter[]
            {
                new SqlParameter("@New_Id",_New_Id)
            };
            return DBHelper.ExecuteCommand(sql, values);
 
        }
        /// <summary>
        /// 根据用户的Id删除用户,返回所影响的行数
        /// </summary>
        /// <param name="User_Id"></param>
        /// <returns></returns>
        public static int DelUser(int User_Id)
        {
            string sql = "delete  from [User] where [User_Id] = @User_Id";
            SqlParameter[] values = new SqlParameter[]
            {
                new SqlParameter("@User_Id",User_Id)
            };
            return DBHelper.ExecuteCommand(sql, values);
            
        }
    }
}
