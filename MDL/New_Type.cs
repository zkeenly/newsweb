using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MDL

{
    /// <summary>
    /// 新闻类型类
    /// </summary>
    public class New_Type
    {
        private int _Type_Id;
        /// <summary>
        /// 新闻类型ID
        /// </summary>
        public int Type_Id
        {
            get { return _Type_Id; }
            set { _Type_Id = value; }
        }
        private string _Type_Name;
        /// <summary>
        /// 新闻类型名称
        /// </summary>
        public string Type_Name
        {
            get { return _Type_Name; }
            set { _Type_Name = value; }
        }
    }
}
