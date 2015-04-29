using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MDL
{
    /// <summary>
    /// 用户类,-->[User_Id]/[User_Name]/[User_Pwd]/[User_Admin]
    /// </summary>
    public class User
    {
        private int _User_Id;
        /// <summary>
        /// 用户id
        /// </summary>
        public  int User_Id
        {
            get { return _User_Id; }
            set { _User_Id = value; }
        }
        private string _User_Name;
        /// <summary>
        /// 用户名字
        /// </summary>
        public string User_Name
        {
            get { return _User_Name; }
            set { _User_Name = value; }
        }
        private string _User_Pwd;

        /// <summary>
        /// 用户密码
        /// </summary>
        public string User_Pwd
        {
            get { return _User_Pwd; }
            set { _User_Pwd = value; }
        }
        private int _User_Admin;
        /// <summary>
        /// 用户是否是管理员,如果是,则值为1
        /// </summary>
        public int User_Admin
        {
            get { return _User_Admin; }
            set { _User_Admin = value; }
        }
        /// <summary>
        /// 设置用户为管理员用户
        /// </summary>
        /// <param name="user"></param>
        public static void setUserAdmin(User user)
        {
            user.User_Admin = 1;
        }
        /// <summary>
        /// 设置为普通用户
        /// </summary>
        /// <param name="user"></param>
        public static void setUserCommon(User user)
        {
            user.User_Admin = 0;
        }
        
    }
}
