using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MDL
{
    /// <summary>
    /// 新闻主类,有属性:新闻ID[New_Id] ,新闻标题[New_Title], 新闻内容[New_Content], 新闻类型ID[New_Type_Id] ,新闻图片[New_Image],发布时间[Create_Time]
    /// </summary>
    public  class New
    {
        private int _Is_Show;
        /// <summary>
        /// 新闻是否显示出来1为显示,0为不显示
        /// </summary>
        public int Is_Show
        {
            get { return _Is_Show; }
            set { _Is_Show = value; }
        }
        

        private DateTime _Create_Time;
        /// <summary>
        /// 新闻创建时间
        /// </summary>
        public DateTime Create_Time
        {
            get { return _Create_Time; }
            set { _Create_Time = value; }
        }


        private int _New_Id;
        /// <summary>
        /// 新闻ID
        /// </summary>
        public int New_Id
        {
            get { return _New_Id; }
            set { _New_Id = value; }
        }
        private string _New_Title;
        /// <summary>
        /// 
        /// 新闻标题
        /// </summary>
        public string New_Title
        {
            get { return _New_Title; }
            set { _New_Title = value; }
        }
        private string _New_Content;
        /// <summary>
        /// 新闻内容
        /// </summary>
        public string New_Content
        {
            get { return _New_Content; }
            set { _New_Content = value; }
        }
        private int _New_Type_Id;

        /// <summary>
        /// 新闻类型ID
        /// </summary>
        public int New_Type_Id
        {
            get { return _New_Type_Id; }
            set { _New_Type_Id = value; }
        }
        private string _New_Image;
        /// <summary>
        /// 新闻图片名称以及后缀名
        /// </summary>
        public string New_Image
        {
            get { return _New_Image; }
            set { _New_Image = value; }
        }

    }
}
