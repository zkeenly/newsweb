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
    /// 查询类操作都封装在这里
    /// </summary>
    public  class SelectOper
    {




        /// <summary>
        /// 获取指定新闻ID的条数
        /// </summary>
        /// <param name="?"></param>
        /// <returns></returns>
        public static int GetNew_Id( int _NewId)
        {
        string sql = "select * from [New] where New_Id = @New_Id";
            SqlParameter[] values = new SqlParameter[]
            {
                new SqlParameter("New_Id",_NewId)
            };
            return DBHelper.getResultCount(sql, values);
        }


/// <summary>
///查询最大New_Id的第_order个的新闻类型为_newType 的New类
/// </summary>
/// <param name="_order"></param>
/// <param name="_newType"></param>
/// <returns></returns>
        public static New selNewOrder(int _order,int _newType)
        {
            New news = new New();
            string sql = "select * from New where New_Type_Id='"+_newType+"' Order By New_Id desc";
            SqlDataReader reader = DBHelper.GetReader(sql);
            for (int i = 0; i<_order;i++ )
            {
                reader.Read();  
            }
            news.Create_Time = (DateTime)reader["Create_Time"];
            news.Is_Show = (int)reader["Is_Show"];
            news.New_Content = (string)reader["New_Content"];
            news.New_Id = (int)reader["New_Id"];
            news.New_Image = (string)reader["New_Image"];
            news.New_Title = (string)reader["New_Title"];
            news.New_Type_Id = (int)reader["New_Type_Id"];
            DBHelper.ColseReader();
            return news;
             
        }

        /// <summary>
        /// 检索这个新闻类型一共有几条新闻
        /// </summary>
        /// <param name="_newType"></param>
        /// <returns></returns>
        public static int selNewTypeCount(int _newType)
        {
            string sql = "select count(*) from New where New_Type_Id = '"+_newType+"'";
            int count = DBHelper.GetScalar(sql);
           
            return count;

        }
        /// <summary>
        /// 根据新闻的Id获取新闻类
        /// </summary>
        /// <param name="_newId"></param>
        /// <returns></returns>
        public static New getNew(int _newId)
        {
            New news = new MDL.New();
            string sql = "select * from [New] where [New_Id]='" +_newId+"'";
            SqlDataReader reader = DBHelper.GetReader(sql);

            while (reader.Read())
            {
                news.Create_Time = (DateTime)reader["Create_Time"];
                news.Is_Show = (int)reader["Is_Show"];
                news.New_Content = (string)reader["New_Content"];
                news.New_Id = _newId;
                news.New_Image = (string)reader["New_Image"];
                news.New_Title = (string)reader["New_Title"];
                news.New_Type_Id = (int)reader["New_Type_Id"];


            }
            DBHelper.ColseReader();
            return news;
        }


        /// <summary>
        /// 根据传进去的用户Id返回一个用户类.如果没有查找到该用户,那么就返回null的用户类
        /// </summary>
        /// <param name="_user_Id"></param>
        /// <returns></returns>
        public static User getUser(int _user_Id)
        {
            User user = new User();
            string sql = "select * from [User] where [User_Id] ='" + _user_Id + "'";
            SqlDataReader reader = DBHelper.GetReader(sql);

            while (reader.Read())
            {
                user.User_Id = (int)reader["User_Id"];
                user.User_Name = (string)reader["User_Name"];
                user.User_Pwd = (string)reader["User_Pwd"];
                user.User_Admin = (int)reader["User_Admin"];

            }
            DBHelper.ColseReader();
            return user;

 
        }
        /// <summary>
        /// 获取指定用户Id的条数
        /// </summary>
        /// <param name="_user_Id"></param>
        /// <returns></returns>
        public static int GetUser_Id(int _user_Id)
        {
            string sql = "select * from [User] where User_Id = @User_Id";
            SqlParameter[] values = new SqlParameter[]
            {
                new SqlParameter("User_Id",_user_Id)
            };
            return DBHelper.getResultCount(sql, values);
        }

        /// <summary>
        /// 根据用户的名字获取用户的所有信息,保存在User类中,返回至调用者,如果没有查到返回null
        /// </summary>
        /// <param name="_user_Name"></param>
        /// <returns></returns>
        public static User getUser(string _user_Name)
        {
            User user = new User();
            string sql = "select * from [User] where [User_Name] ='"+_user_Name+"'";
            SqlDataReader reader = DBHelper.GetReader(sql);
            
            while(reader.Read())
            {
                user.User_Id = (int)reader["User_Id"];
                user.User_Name = (string)reader["User_Name"];
                user.User_Pwd = (string)reader["User_Pwd"];
                user.User_Admin = (int)reader["User_Admin"];

            }
            DBHelper.ColseReader();
            return user;

        }
        /// <summary>
        /// 获取符合条件的用户名的个数
        /// </summary>
        /// <param name="_userName"></param>
        /// <returns></returns>
        public static int selUserName(string _userName)
        {
            string sql = "select * from [User] where [User_Name] =@_userName ";
            SqlParameter[] values = new SqlParameter[]
            {
                new SqlParameter("@_userName",_userName)
            };

            return  DBHelper.getResultCount(sql,values);
        }
        
        /// <summary>
        /// 返回用户名密码符合要求的个数
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public static int selUser(User user)
        {
            string sql = "select * from [User] where [User_Name] = @User_Name and [User_Pwd] = @User_Pwd";
            SqlParameter[] values = new SqlParameter[]
            {
                new SqlParameter("@User_Name",user.User_Name),
                new SqlParameter("@User_Pwd",user.User_Pwd)
            };
            
                
            int i = DBHelper.getResultCount(sql, values);
            DBHelper.ColseReader();
            return i;
        }
    }
}
