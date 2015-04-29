using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace DAL
{
    /// <summary>
    /// 数据帮助类
    /// </summary>
    public static class DBHelper
    {
        /// <summary>
        /// 数据库连接字符串
        /// </summary>
        private static SqlConnection connection;
        private static SqlDataReader reader;
        public static SqlConnection Connection
        {
            get
            {
                
                string connectionString = System.Configuration.ConfigurationManager.AppSettings["xtwstr"];
                if (connection == null)
                {
                    connection = new SqlConnection(connectionString);
                    connection.Open();
                }
                else if (connection.State == System.Data.ConnectionState.Closed)
                {
                    connection.Open();
                }
                else if (connection.State == System.Data.ConnectionState.Broken)
                {
                    connection.Close();
                    connection.Open();
                }
                return connection;
            }
        }
        /// <summary>
        /// 关闭SqlDataReader对象
        /// </summary>
        public static void ColseReader()
        {
            reader.Close();
        }
        /// <summary>
        /// 获取查询结果的数量,传递一个SQL语句参数
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static int getResultCount(string sql)
        {
            reader = DBHelper.GetReader(sql);
            int i = 0;
            while (reader.Read())
            {
                i++;
            }
            return i;
        }
        /// <summary>
        /// 获取查询结果的条目数量
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="values"></param>
        /// <returns></returns>
        public static int getResultCount(string sql, params SqlParameter[] values)
        {
            reader =  DBHelper.GetReader(sql, values);
            int i = 0;
            while (reader.Read())
            {
                i++;
            }
            DBHelper.ColseReader();
            return i;
 
        }
        /// <summary>
        /// 执行一条sql语句,返回insert|updata|delete所影响的条数
        /// </summary>
        /// <param name="safeSql"></param>
        /// <returns></returns>
        public static int ExecuteCommand(string safeSql)
        {
            SqlCommand cmd = new SqlCommand(safeSql, Connection);
            int result = cmd.ExecuteNonQuery();
            return result;
        }
        /// <summary>
        /// 执行一条sql语句,返回insert|updata|delete所影响的条数.并有sql参数的传递
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="values"></param>
        /// <returns></returns>
        public static int ExecuteCommand(string sql, params SqlParameter[] values)
        {
            SqlCommand cmd = new SqlCommand(sql, Connection);
            cmd.Parameters.AddRange(values);
            return cmd.ExecuteNonQuery();
        }
        /// <summary>
        /// 执行查询sql语句返回结果集的第一行,第一列
        /// </summary>
        /// <param name="safeSql"></param>
        /// <returns></returns>
        public static int GetScalar(string safeSql)
        {
            SqlCommand cmd = new SqlCommand(safeSql, Connection);
            int result = Convert.ToInt32(cmd.ExecuteScalar());
            return result;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="values"></param>
        /// <returns></returns>
        public static int GetScalar(params SqlParameter[] values)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Connection;
            cmd.CommandText = "Pro_InsertOrder";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddRange(values);
            int result = Convert.ToInt32(cmd.ExecuteScalar());
            return result;
        }
        /// <summary>
        /// 执行查询sql语句返回结果集的第一行,第一列,并传递sql参数
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="values"></param>
        /// <returns></returns>
        public static int GetScalar(string sql, params SqlParameter[] values) 
        {
            SqlCommand cmd = new SqlCommand(sql, Connection);
            cmd.Parameters.AddRange(values);
            int result = Convert.ToInt32(cmd.ExecuteScalar());
            return result;
        }
        /// <summary>
        /// 返回查询结果第一行第一列的Object类型数据
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="values"></param>
        /// <returns></returns>
        public static Object getScalar(string sql, params SqlParameter[] values)
        {
            SqlCommand cmd = new SqlCommand(sql, Connection);
            cmd.Parameters.AddRange(values);
            return cmd.ExecuteScalar();
        }
        /// <summary>
        /// 获取sql语句查询结果
        /// </summary>
        /// <param name="safeSql"></param>
        /// <returns></returns>
        public static SqlDataReader GetReader(string safeSql)
        {
            SqlCommand cmd = new SqlCommand(safeSql, Connection);
            reader = cmd.ExecuteReader();
            return reader;
        }
        /// <summary>
        /// 获取sql语句查询结果,并传递SQL参数
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="values"></param>
        /// <returns></returns>
        public static SqlDataReader GetReader(string sql, params SqlParameter[] values)
        {
            SqlCommand cmd = new SqlCommand(sql, Connection);
            cmd.Parameters.AddRange(values);
            reader = cmd.ExecuteReader();
            
            return reader;
        }
        /// <summary>
        /// 获取查询结果,并返回DataTable结果.
        /// </summary>
        /// <param name="safeSql"></param>
        /// <returns></returns>
        public static DataTable GetDataSet(string safeSql)
        {
            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand(safeSql, Connection);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            return ds.Tables[0];
        }
        /// <summary>
        /// 获取查询结果,返回DataTable结果集,并传递SQL参数
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="values"></param>
        /// <returns></returns>
        public static DataTable GetDataSet(string sql, params SqlParameter[] values)
        {
            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand(sql, Connection);
            cmd.Parameters.AddRange(values);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            return ds.Tables[0];
        }
    }

}
