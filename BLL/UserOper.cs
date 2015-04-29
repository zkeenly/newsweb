using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using MDL;
namespace BLL
{
   
    /// <summary>
    /// 对用户进行的操作都封装在这里
    /// </summary>
    public class UserOper
    {

        /// <summary>
        /// 更改用户的密码,如果更改成功,则返回true ,否则返回false
        /// </summary>
        /// <param name="_userId"></param>
        /// <param name="_userPwd"></param>
        /// <returns></returns>
        public static bool AltUserPwd(int _userId,string _userPwd)
        {
            return (AltOper.AltUserPwd(_userId, _userPwd)==1);
        }
        /// <summary>
        ///  根据用户的Id获取用户的密码
        /// </summary>
        /// <param name="_userId"></param>
        /// <returns></returns>
        public static string GetUserPwd(int _userId)
        {
            string userPwd = SelectOper.getUser(_userId).User_Pwd;
            if (userPwd != null)
            {
                return userPwd;
            }
            else
            {
                return "0";
            }

        }
        /// <summary>
        /// 检查用户是否为管理员用户
        /// </summary>
        /// <param name="_user_Id"></param>
        /// <returns></returns>
        public static bool CheckUser_Admin(int _user_Id)
        {
            User user = SelectOper.getUser(_user_Id);
            if (user != null)
            {
                return user.User_Admin == 1;   //如果没有查询到的用户是管理员则返回true;
            }
            else
            {
                return false;
            }


        }
        /// <summary>
        /// 检查是否 存在用户的Id如果存在则返回true
        /// </summary>
        /// <param name="_UserId"></param>
        /// <returns></returns>
        public static bool CheckUser_Id(int _UserId)
        {
            return (SelectOper.GetUser_Id(_UserId)>0);
                
        }

        /// <summary>
        /// 由用户的Id号码删除一个用户
        /// </summary>
        /// <param name="_User_Id"></param>
        /// <returns></returns>
        public static bool DelUser(int _User_Id)
        {
            return (DelOper.DelUser(_User_Id)>0);
        }


        /// <summary>
        /// 由传递参数的用户名检索出符合条件的用户User类
        /// </summary>
        /// <param name="_user_Name"></param>
        /// <returns></returns>
        public static User getUser(string _user_Name)
        {
            return SelectOper.getUser(_user_Name);

        }
        /// <summary>
        /// 增加一个用户,增加成功则返回true
        /// </summary>
        /// <param name="_user"></param>
        /// <returns></returns>
        public static bool AddUser(User _user)
        {
            if (AddOper.addUser(_user) > 0)
            {
                return true;
            }
            else return false;
        }

        /// <summary>
        /// 检查是否存在用户名,如果存在返回true
        /// </summary>
        /// <param name="_userName"></param>
        /// <returns></returns>
        public static bool CheckUserName(string _userName)
        {

            return(SelectOper.selUserName(_userName)>0);
        }

        /// <summary>
        /// 检查用户名是否正确,如果正确则返回ture
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public static bool CheckUser(User user)
        {
            return (DAL.SelectOper.selUser(user) > 0);
        }
    }
}
