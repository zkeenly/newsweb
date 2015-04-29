using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MDL
{
    /// <summary>
    /// 用于处理数据的转换等公共方法类
    /// </summary>
    public class DataManage
    {
        /// <summary>
        /// 将一个字符串的数字部分截取出来
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string  KeepNum(String str)
        {
            StringBuilder strb = new StringBuilder("");
            for (int i = 0; i < str.Length; i++)
            {
                if (str[i] < 57 && str[i] > 47)
                {
                    strb.Append(str[i]);
                }
            }
            return strb.ToString();

        }

    }
}
