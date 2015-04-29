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
    /// 所有对数据库的修改操作,封装在这里
    /// </summary>
    public class AltOper
    {

        /// <summary>
        /// 更改用户密码,返回所影响的行数
        /// </summary>
        /// <param name="_userId"></param>
        /// <param name="_userPwd"></param>
        /// <returns></returns>
        public static int AltUserPwd(int _userId,string _userPwd)
        {
            string sql = "UPDATE [User] SET [User_Pwd] = @_userPwd WHERE User_Id = @_userId ";
            SqlParameter[] values = new SqlParameter[]
            {
                new SqlParameter("@New_Id",_userId)
            };
            return DBHelper.ExecuteCommand(sql, values);
 
        }
    }
}
