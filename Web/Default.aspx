<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- InstanceBegin template="/Template/template.dwt" codeOutsideHTMLIsLocked="false" -->
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>保定学院宣传统战部</title>
<style type="text/css">
* { margin:0; padding:0; }
body { background:#FFF; color:#333; font:12px/1.6em Helvetica, Arial, sans-serif; }
h1, h2, h3, h4, h5, h6 { font-size:1em; }
a { color:#0287CA; text-decoration:none; }
a:hover { text-decoration:underline; }
ul, li { list-style:none; }
fieldset, img { border:none; }
legend { display:none; }
em, strong, cite, th { font-style:normal; font-weight:normal; }
input, textarea, select, button { font:12px Helvetica, Arial, sans-serif; }
table { border-collapse:collapse; }
html { overflow:-moz-scrollbars-vertical; } 
#ibanner { position:relative; width:700px; height:205px; overflow:hidden; margin:0  }
#ibanner_pic {}
#ibanner_pic a { position:absolute; top:0; display:block; width:700px; height:205px; overflow:hidden; }
#ibanner_btn { position:absolute; z-index:9999; right:5px; bottom:5px; font-weight:700; font-family:Arial; }
#ibanner_btn span { display:block; float:left; margin-left:4px; padding:0 5px; background:#000; cursor:pointer; }
#ibanner_btn .normal { height:20px; margin-top:8px; border:1px solid #999; color:#999; font-size:16px; line-height:20px; }
#ibanner_btn .current { height:28px; border:1px solid #FF5300; color:#FF5300; font-size:28px; line-height:28px; }
</style>


<script type="text/javascript">
function $(id) { return document.getElementById(id); }
function addLoadEvent(func){
var oldonload = window.onload;
if (typeof window.onload != 'function') {
window.onload = func;
} else {
window.onload = function(){
oldonload();
func();
}
}
}
function addBtn() {
if(!$('ibanner')||!$('ibanner_pic')) return;
var picList = $('ibanner_pic').getElementsByTagName('a');
if(picList.length==0) return;
var btnBox = document.createElement('div');
btnBox.setAttribute('id','ibanner_btn');
var SpanBox ='';
for(var i=1; i<=picList.length; i++ ) {
var spanList = '<span class="normal">'+i+'</span>';
SpanBox += spanList;
}
btnBox.innerHTML = SpanBox;
$('ibanner').appendChild(btnBox);
$('ibanner_btn').getElementsByTagName('span')[0].className = 'current';
for (var m=0; m<picList.length; m++){
var attributeValue = 'picLi_'+m
picList[m].setAttribute('id',attributeValue);
}
}
function moveElement(elementID,final_x,final_y,interval) {
if (!document.getElementById) return false;
if (!document.getElementById(elementID)) return false;
var elem = document.getElementById(elementID);
if (elem.movement) {
clearTimeout(elem.movement);
}
if (!elem.style.left) {
elem.style.left = "0px";
}
if (!elem.style.top) {
elem.style.top = "0px";
}
var xpos = parseInt(elem.style.left);
var ypos = parseInt(elem.style.top);
if (xpos == final_x && ypos == final_y) {
moveing = false;
return true;
}
if (xpos < final_x) {
var dist = Math.ceil((final_x - xpos)/10);
xpos = xpos + dist;
}
if (xpos > final_x) {
var dist = Math.ceil((xpos - final_x)/10);
xpos = xpos - dist;
}
if (ypos < final_y) {
var dist = Math.ceil((final_y - ypos)/10);
ypos = ypos + dist;
}
if (ypos > final_y) {
var dist = Math.ceil((ypos - final_y)/10);
ypos = ypos - dist;
}
elem.style.left = xpos + "px";
elem.style.top = ypos + "px";
var repeat = "moveElement('"+elementID+"',"+final_x+","+final_y+","+interval+")";
elem.movement = setTimeout(repeat,interval);
}
function classNormal() {
var btnList = $('ibanner_btn').getElementsByTagName('span');
for (var i=0; i<btnList.length; i++){
btnList[i].className='normal';
}
}
function picZ() {
var picList = $('ibanner_pic').getElementsByTagName('a');
for (var i=0; i<picList.length; i++){
picList[i].style.zIndex='1';
}
}
var autoKey = false;
function iBanner() {
if(!$('ibanner')||!$('ibanner_pic')||!$('ibanner_btn')) return;
$('ibanner').onmouseover = function(){autoKey = true};
$('ibanner').onmouseout = function(){autoKey = false};

var btnList = $('ibanner_btn').getElementsByTagName('span');
var picList = $('ibanner_pic').getElementsByTagName('a');
if (picList.length==1) return;
picList[0].style.zIndex='2';
for (var m=0; m<btnList.length; m++){
btnList[m].onmouseover = function() {
for(var n=0; n<btnList.length; n++) {
if (btnList[n].className == 'current') {
var currentNum = n;
}
}
classNormal();
picZ();
this.className='current';
picList[currentNum].style.zIndex='2';
var z = this.childNodes[0].nodeValue-1;
picList[z].style.zIndex='3';
if (currentNum!=z){
picList[z].style.left='650px';
moveElement('picLi_'+z,0,0,10);
}
}
}
}
setInterval('autoBanner()', 5000);
function autoBanner() {
if(!$('ibanner')||!$('ibanner_pic')||!$('ibanner_btn')||autoKey) return;
var btnList = $('ibanner_btn').getElementsByTagName('span');
var picList = $('ibanner_pic').getElementsByTagName('a');
if (picList.length==1) return;
for(var i=0; i<btnList.length; i++) {
if (btnList[i].className == 'current') {
var currentNum = i;
}
}
if (currentNum==(picList.length-1) ){
classNormal();
picZ();
btnList[0].className='current';
picList[currentNum].style.zIndex='2';
picList[0].style.zIndex='3';
picList[0].style.left='650px';
moveElement('picLi_0',0,0,10);
} else {
classNormal();
picZ();
var nextNum = currentNum+1;
btnList[nextNum].className='current';
picList[currentNum].style.zIndex='2';
picList[nextNum].style.zIndex='3';
picList[nextNum].style.left='650px';
moveElement('picLi_'+nextNum,0,0,10);
}
}
addLoadEvent(addBtn);
addLoadEvent(iBanner);
</script>
<!-- InstanceEndEditable -->
<style type="text/css">
<!--
body {margin-left: 0px;margin-top: 0px; margin-right:0px; margin-bottom:0px;background-repeat:repeat-x;}
.list{ margin-top:0px; margin-bottom:5px; margin-left:8px; padding-left:0px; list-style-type:none; width:305px; display:block; text-align:left;}
.list_li{margin:0px; padding:0px; padding-left:0px; text-align:left;}
.text_list{ font-family:"宋体"; font-size:13px; color:#333; line-height:22px;}
.text_list a{ font-family:"宋体"; font-size:13px; color:#333; line-height:22px; text-decoration:none;}
.text_list a:hover{background:  #F7F7F7; color:#00F;}
.tzgg_text {font-family:"宋体"; font-size:13px; color:#666; line-height:15px;text-decoration:none;}
.tzgg_text a{font-family:"宋体"; font-size:13px; color:#666; line-height:15px;text-decoration:none;}
.tzgg_text a:hover{font-family:"宋体"; font-size:13px; color:#666; line-height:15px;text-decoration:none;}
.date{ font-family:Verdana, Geneva, sans-serif; font-size:12px; color:#999; float:right; clear:both; text-align:right;}
.date2{ font-family:Verdana, Geneva, sans-serif; font-size:12px; color:#C00;}
.ylMarquee{height:155px; width:300px; clear:both; overflow:hidden; border:3px;}
.ylMarquee li{ float:left; padding:0px; margin:0px;};
.note{ font-family:"宋体"; font-size:13px; color:#039; line-height:22px;}
#content{
	height:750px;
	width:960px;
	margin:auto;
	background-color:#F1F1F1;
}
-->
</style>
<link href="css/index.css"  rel="stylesheet" type="text/css" />
<link href="css/nav.css"  rel="stylesheet" type="text/css" />
<link href="css/scroll_pic.css"  rel="stylesheet" type="text/css" />
<script src="js/sohuflash_1.js" type="text/javascript"></script>
<script src="js/scroll_pic.js" type="text/javascript"></script>

<style type="text/css">
<!--
.STYLE1 {color: #3300FF}
-->
</style>

</head>
<body>


    <form id="form1" runat="server">


<!-- Copyright ?2005. Spidersoft Ltd -->
<style>
A.applink:hover {border: 2px dotted #DCE6F4;padding:2px;background-color:#ffff00;color:green;text-decoration:none}
A.applink       {border: 2px dotted #DCE6F4;padding:2px;color:#2F5BFF;background:transparent;text-decoration:none}
A.info          {color:#2F5BFF;background:transparent;text-decoration:none}
A.info:hover    {color:green;background:transparent;text-decoration:underline}
</style>
<!-- /Copyright ?2005. Spidersoft Ltd -->

<div id="banner"></div>
<!--导航部分开始-->
<div id="nav">
<div id="menu">
  <ul>
    <li class="m_line"><img src="images/line1.gif" /></li>
    <li id="m_2" class='m_li' ><a href="Default.aspx" target="_blank">网站首页</a></li>
      <li class="m_line"><img src="images/line1.gif" /></li>
    <li id="m_2" class='m_li' ><a href="xcb_bmjs.html" target="_blank">部门介绍</a></li>
    <li class="m_line"><img src="images/line1.gif" /></li>
    <li id="m_3" class='m_li' ><a href="http://xbzd.bdu.edu.cn/catv/index.htm" target="_blank">媒体在线</a></li>
    <li class="m_line"><img src="images/line1.gif" /></li>
    <li id="m_4" class='m_li' ><a href="http://bdszb.cuepa.cn/" target="_blank">校报在线</a></li>
    <li class="m_line"><img src="images/line1.gif" /></li>
    <li id="m_5" class='m_li' ><a href="xcb_llyd.html">理论园地</a></li>
    <li class="m_line"><img src="images/line1.gif" /></li>
    <li id="m_6" class='m_li' ><a href="xcb_tzgz.html" target="_blank">统战工作</a></li>
    </ul>
</div>
</div>
<!-- InstanceBeginEditable name="head" -->



<div style="height:22px; background-color:#FFFFFF;">
   <ul class="smenu">
     <li style="padding-left:29px;" id="s_1" class='s_li_a'><marquee><a style="font-size:18px; font-style:inherit ">欢迎来到保定学院宣传部主页， 当前日期:</a><font color="#CC0000" ;>
        <script language="JavaScript" type="text/javascript">var isnDay = new
Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六","星期日");
var today=new Date();
var month=today.getMonth()+1;
document.write(" "+today.getYear()+"年"+month+"月"+today.getDate()+"日"+"   "+isnDay
[today.getDay()]) 
</script></font></marquee>
</li>
   
     
    
   </ul>
</div>
</div>
<!--导航部分结束-->
<div id="content">
	<div id="left">
    <div id="left1"><div id="title">&nbsp;学院新闻</div>
             <div id="title1"><a href="http://www.bdu.edu.cn/new/list.asp?id=84" style="color:#F1F1F1;">更多>></a></div>
    
    <div id="flashcontent01" style=" margin-left:0px;"></div>
		<div class="portlet_content">
		<div id="left11"><table width="98%" height="23" border="0" cellpadding="0" cellspacing="0">
<!-- 添加时事新闻 -->

<!--一个学院新闻begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

<a href='http://www.bdu.edu.cn/new/show.asp?id=691' class="text"  target="_blank" title="河北省“百名艺术家志愿者进校园”讲座在我院举行"><font class="text"> 河北省“百名艺术家志愿者进校园”讲座在我院举行 </font></a><font class="text-time" color="#999999">2013-10-22</font></td>
</tr>
<!--一个学院新闻end-->

<!--一个学院新闻begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

<a href='http://www.bdu.edu.cn/new/show.asp?id=692' class="text"  target="_blank" title="我院保卫处被评为2012年度学校安全工作先进集体"><font class="text"> 我院保卫处被评为2012年度学校安全工作先进集体 </font></a><font class="text-time" color="#999999">2013-10-24</font></td>
</tr>
<!--一个学院新闻end-->

<!--一个学院新闻begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

<a href='http://www.bdu.edu.cn/new/show.asp?id=693' class="text"  target="_blank" title="高雅艺术走进校园 国家京剧院在我院精彩演出"><font class="text"> 高雅艺术走进校园 国家京剧院在我院精彩演出 </font></a><font class="text-time" color="#999999">2013-10-24</font></td>
</tr>
<!--一个学院新闻end-->

<!--一个学院新闻begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

<a href='http://www.bdu.edu.cn/new/show.asp?id=689' class="text"  target="_blank" title="我院纪委监察处被评为保定市纪检监察系统实绩突出单位"><font class="text"> 我院纪委监察处被评为保定市纪检监察系统实绩突出单位 </font></a><font class="text-time" color="#999999">2013-10-18</font></td>
</tr>
<!--一个学院新闻end-->

<!--一个学院新闻begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

<a href='http://www.bdu.edu.cn/new/show.asp?id=688' class="text"  target="_blank" title="我院举行老教育工作者协会成立暨第一届会员代表大会"><font class="text"> 我院举行老教育工作者协会成立暨第一届会员代表大会 </font></a><font class="text-time" color="#999999">2013-10-14</font></td>
</tr>
<!--一个学院新闻end-->





</table>
			</div>      </div>
    </div>
    <div id="left1"><div id="title">&nbsp;时政要闻</div>
             <div id="title1"><a href="xcb_more.html" style="color:#F1F1F1;">更多>></a></div>
      <div id="left11"><table width="98%" height="23" border="0" cellpadding="0" cellspacing="0">
      
      
      
      
<!-- 添加时事新闻 -->
<!--时政新闻begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
        Visible="False"></asp:LinkButton>
    <font class="text-time" color="#999999">
        <asp:Label ID="Label1" runat="server"></asp:Label></font></td>
</tr>
<!--时政新闻end-->
<!--时政新闻begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
        Visible="False">LinkButton</asp:LinkButton>
    <font class="text-time" color="#999999">
        <asp:Label ID="Label2" runat="server"></asp:Label></font></td>
</tr>
<!--时政新闻end-->

<!--时政新闻begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

    <font class="text-time" color="#999999">
        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
        Visible="False">LinkButton</asp:LinkButton>
        <asp:Label ID="Label3" runat="server"></asp:Label></font></td>
</tr>
<!--时政新闻end-->



<!--时政新闻begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

    <font class="text-time" color="#999999">
        <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click" 
        Visible="False">LinkButton</asp:LinkButton>
        <asp:Label ID="Label4" runat="server"></asp:Label></font></td>
</tr>
<!--时政新闻end-->
<!--时政新闻begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

    <font class="text-time" color="#999999">

    <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click" 
        Visible="False">LinkButton</asp:LinkButton>
        <asp:Label ID="Label5" runat="server"></asp:Label></font></td>
</tr>
<!--时政新闻end-->


</table>
			</div>
	  </div>
    <div id="picbox"><div id="title">&nbsp;理论园地</div>
            <div id="title1"><a href="xcb_llyd.html" style="color:#F1F1F1;">更多>></a></div>
  <div id="left11">
            <table width="98%" height="23" border="0" cellpadding="0" cellspacing="0">
<!-- 添加时事新闻 -->



<!--理论园地一个begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

<a href='news_ll_1.html' class="text"  target="_blank" title="文章标题：中国特色的圆梦之路"><font class="text">中国特色的圆梦之路 </font></a><font class="text-time" color="#999999">2013-10-24</font></td>
</tr>
<!--理论园地一个end-->


<!--理论园地一个begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

<a href='news_ll_2.html' class="text"  target="_blank" title="加强社会主义核心价值体系建设的标志性意义"><font class="text">加强社会主义核心价值体系建设的标志性意义 </font></a><font class="text-time" color="#999999">2013-10-24</font></td>
</tr>
<!--理论园地一个end-->

<!--理论园地一个begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

<a href='news_ll_3.html' class="text"  target="_blank" title="人民网评：“我爸是市长”的谣言为何能量巨大"><font class="text">人民网评：“我爸是市长”的谣言为何能量巨大 </font></a><font class="text-time" color="#999999">2013-10-24</font></td>
</tr>
<!--理论园地一个end-->

<!--理论园地一个begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

<a href='news_ll_4.html' class="text"  target="_blank" title="思想纵横：沟通是领导者的必修课"><font class="text">思想纵横：沟通是领导者的必修课 </font></a><font class="text-time" color="#999999">2013-10-24</font></td>
</tr>
<!--理论园地一个end-->

<!--理论园地一个begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

<a href='news_ll_5.html' class="text"  target="_blank" title="学习时报：中国新一轮改革大幕已经拉开"><font class="text">学习时报：中国新一轮改革大幕已经拉开</font></a><font class="text-time" color="#999999">2013-10-24</font></td>
</tr>
<!--理论园地一个end-->
</table>
            </div>
      </div>
    <div id="left1">
    <div id="title">&nbsp;经典著作</div>
             <div id="title1"><a href="xcb_more.html" style="color:#999;"></a></div>
 <div id="left11">
             <table width="98%" height="23" border="0" cellpadding="0" cellspacing="0">
<!-- 添加时事新闻 -->
<!--一个经典著作begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

<a href='http://cpc.people.com.cn/GB/69112/70190/70197/70350/index.html' class="text"  target="_blank" title="毛泽东文选"><font class="text">毛泽东文选 </font></a><font class="text-time" color="#999999">2013-10-22</font></td>
</tr>
<!--一个经典著作end-->

<!--一个经典著作begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

<a href='http://cpc.people.com.cn/GB/69112/69113/index.html' class="text"  target="_blank" title="邓小平文选"><font class="text">邓小平文选 </font></a><font class="text-time" color="#999999">2013-10-22</font></td>
</tr>
<!--一个经典著作end-->
<!--一个经典著作begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

<a href='http://www.chinaspirit.net.cn/zel//zzxz/zzxz.htm' class="text"  target="_blank" title="周恩来选集"><font class="text">周恩来选集 </font></a><font class="text-time" color="#999999">2013-10-22</font></td></tr>
<!--一个经典著作end-->
<!--一个经典著作begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

<a href='http://www.chinaspirit.net.cn/lsq//zzxz.htm' class="text"  target="_blank" title="刘少奇选集"><font class="text">刘少奇选集 </font></a><font class="text-time" color="#999999">2013-10-22</font></td>
</tr>
<!--一个经典著作end-->
<!--一个经典著作begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

<a href='http://www.people.com.cn/GB/shizheng/252/2072/8050/index.html' class="text"  target="_blank" title="学习贯彻“三个代表”重要思想专题"><font class="text">学习贯彻“三个代表”重要思想专题 </font></a><font class="text-time" color="#999999">2013-10-22</font></td>
</tr>
<!--一个经典著作end-->
<!--一个经典著作begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

<a href='http://cxzy.people.com.cn/GB/index.html' class="text"  target="_blank" title="深入开展创先争优活动专题"><font class="text">深入开展创先争优活动专题 </font></a><font class="text-time" color="#999999">2013-10-22</font></td>
</tr>
<!--一个经典著作end-->
<!--一个经典著作begin-->
<tr >
<td width="16" align="center" valign="middle" class="text">&middot;</td>
<td  height="23" align="left" valign="middle">

<a href='http://kxfz.people.com.cn/GB/135000/index.html' class="text"  target="_blank" title="学习实践科学发展观专题"><font class="text">学习实践科学发展观专题 </font></a><font class="text-time" color="#999999">2013-10-22</font></td>
</tr>
<!--一个经典著作end-->
</table>
             </div>
      </div>
   	 	
        <div id="gundong">
       
        
        <div id="ibanner">
<div id="ibanner_pic">
<a href="">  <img src="images/a1.jpg" />   </a>
<a href=""> <img src="images/a2.jpg" />    </a>
<a href="">  <img src="images/a3.jpg" />   </a>
<a href=""> <img src="images/a4.jpg" />    </a></div>
</div><!--ibanner end-->
        </div>
	</div>
    <div id="right">
    <div id="tzgg"><div id="tzgg_title">通知公告</div><div id="right11">	
    <!--一个通知公告begin-->
<div style="width:210px; border-bottom:1px #666 dashed; margin:auto;"><span class="note"><a href='http://www.bdu.edu.cn/new/show.asp?id=690'  target="_blank" title="保定学院校训校歌（或歌词）征集方案">保定学院校训校歌（或歌词）征集方案</a></span><span class="date2">2013-11-22</span></div>
	    <!--一个通知公告end-->
            <!--一个通知公告begin-->
<div style="width:210px; border-bottom:1px #666 dashed; margin:auto;"><span class="note"><a href='http://www.bdu.edu.cn/new/show.asp?id=663'  target="_blank" title="保定学院2013年申报新增本科专业公示">保定学院2013年申报新增本科专业公示</a></span><span class="date2">2013-11-22</span></div>
	    <!--一个通知公告end-->
            <!--一个通知公告begin-->
<div style="width:210px; border-bottom:1px #666 dashed; margin:auto;"><span class="note"><a href='http://www.bdu.edu.cn/new/show.asp?id=662'  target="_blank" title="关于第十二届河北省“文艺振兴奖”评选工作的通知">关于第十二届河北省“文艺振兴奖”评选工作的通知</a></span><span class="date2">2013-11-22</span></div>
	    <!--一个通知公告end-->
            <!--一个通知公告begin-->
<div style="width:210px; border-bottom:1px #666 dashed; margin:auto;"><span class="note"><a href='http://www.bdu.edu.cn/new/show.asp?id=660'  target="_blank" title="关于征集“综合素质大课堂”讲座和文化艺术活动的通知">关于征集“综合素质大课堂”讲座和文化艺术活动的通知</a></span><span class="date2">2013-11-22</span></div>
	    <!--一个通知公告end-->

   </div></div>
    <div id="yqlj"><div id="tzgg_title">资料下载</div><div id="right11">	
    <!--资料下载begin-->
<div style="width:210px; border-bottom:1px #666 dashed; margin:auto;"><span class="note"><a href='newsxp/data/123.doc'  target="_blank" title="">学院文档[1]文件下载</a></span><span class="date2">2013-10-24</span></div>
	    <!--资料下载begin-->
    <!--资料下载begin-->
<div style="width:210px; border-bottom:1px #666 dashed; margin:auto;"><span class="note"><a href='newsxp/data/123.doc'  target="_blank" title="">学院文档[2]文件下载</a></span><span class="date2">2013-10-24</span></div>
	    <!--资料下载begin-->

    <!--资料下载begin-->
<div style="width:210px; border-bottom:1px #666 dashed; margin:auto;"><span class="note"><a href='newsxp/data/123.doc'  target="_blank" title="">学院文档[3]文件下载</a></span><span class="date2">2013-10-24</span></div>
	    <!--资料下载begin-->

    <!--资料下载begin-->
<div style="width:210px; border-bottom:1px #666 dashed; margin:auto;"><span class="note"><a href='newsxp/data/123.doc'  target="_blank" title="">学院文档[4]文件下载</a></span><span class="date2">2013-10-24</span></div>
	    <!--资料下载begin-->

    <!--资料下载begin-->
<div style="width:210px; border-bottom:1px #666 dashed; margin:auto;"><span class="note"><a href='newsxp/data/123.doc'  target="_blank" title="">学院文档[5]文件下载</a></span><span class="date2">2013-10-24</span></div>
	    <!--资料下载begin-->

            
   </div></div>
    <div id="right1"><div id="tzgg_title">友情链接</div><div><a href="http://xbzd.bdu.edu.cn/xwpg/index.asp" target="_blank"><img src="images/pgzt.gif" alt="评估" height="67" width="245" border="0"/></a></div>
    <div><a href="http://www.chinaedunet.com/" target="_blank"><img src="images/zgjyw.jpg" alt="评估" height="67" width="245" border="0"/></a></div>
    <div><a href="http://www.cyol.net/" target="_blank"><img src="images/zqzx.jpg" alt="评估" height="58" width="245" border="0"/></a></div>
  </div>
    <div></div>
  </div>
    </div>
    
</div>
<!-- InstanceEndEditable -->


</body>
<div id="feet"><span style="font-family:'宋体'; font-size:12px;text-align:center; line-height:15px;"><br />
  地址：河北省保定市七一东路3027号   邮编：071000   E_mail:71east@sina.com.cn<br />
2013? CopyRight 版权所有 保定学院网络中心<a href="Admin/login.aspx">后台登陆</a></span></div>
<!-- InstanceEnd -->
    </form>
</html>