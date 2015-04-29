<%@ Page Title="" Language="C#" MasterPageFile="~/Template/newManage.master" AutoEventWireup="true" CodeFile="navigation.aspx.cs" Inherits="Admin_navigation1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:TreeView ID="TreeView1" runat="server" Height="325px">
    <Nodes>
        <asp:TreeNode Text="发布新闻" Value="新建节点">
            <asp:TreeNode Text="发布内容新闻" Value="发布内容新闻" 
                        NavigateUrl="~/Admin/addContentNew.aspx" Target="main">
            </asp:TreeNode>
            <asp:TreeNode Text="更换图片新闻" Value="更换图片新闻" Target="main"></asp:TreeNode>
        </asp:TreeNode>
        <asp:TreeNode Text="帐户管理" Value="帐户管理">
            <asp:TreeNode Text="创建用户" Value="创建用户" NavigateUrl="~/Admin/addUser.aspx" 
                Target="main"></asp:TreeNode>
            <asp:TreeNode Text="删除账户" Value="删除账户" NavigateUrl="~/Admin/delUser.aspx" 
                Target="main"></asp:TreeNode>
            <asp:TreeNode Text="更改密码" Value="更改密码" Target="main" 
                NavigateUrl="~/Admin/altUser.aspx"></asp:TreeNode>
        </asp:TreeNode>
        <asp:TreeNode Text="新闻管理" Value="新闻变更">
            <asp:TreeNode Text="删除新闻" Value="删除新闻" NavigateUrl="~/Admin/delNew.aspx" 
                Target="main"></asp:TreeNode>
            <asp:TreeNode Text="修改新闻" Value="修改新闻"></asp:TreeNode>
        </asp:TreeNode>
        <asp:TreeNode Text="预览效果" Value="预览效果" Target="main" 
            NavigateUrl="~/Default.aspx"></asp:TreeNode>
    </Nodes>
</asp:TreeView>

</asp:Content>

