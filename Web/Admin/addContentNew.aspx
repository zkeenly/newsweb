<%@ Page Title="" Language="C#" MasterPageFile="~/Template/NewsOper.master" AutoEventWireup="true" CodeFile="addContentNew.aspx.cs" Inherits="Admin_addNewContent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            text-align: center;
        }
        .style2
        {
            width: 84px;
        }
        .style3
        {
            width: 728px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 97px;">
        <tr>
            <td class="style1" colspan="2">
                    新闻内容发布页面</td>
        </tr>
        <tr>
            <td class="style2">
                    新闻标题</td>
            <td class="style3">
                <asp:TextBox ID="NewTitle" runat="server" Width="369px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                    新闻内容</td>
            <td class="style3">
                <asp:TextBox ID="NewContent" runat="server" Height="211px" TextMode="MultiLine" 
                        Width="476px"></asp:TextBox>
                <br />
                (请输入源码格式的新闻内容,加上各种标签,图片引用请加上&lt;&nbsp; /&gt;)</td>
        </tr>
        <tr>
            <td class="style2">
                    新闻类型</td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="NewType" 
                        DataTextField="Type_Name" DataValueField="Type_Id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="NewType" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:NewType %>" 
                        SelectCommand="SELECT [Type_Name], [Type_Id] FROM [New_Type]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            
            <td class="style2">
                    上传图片</td>
            <td class="style3">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="24px" Width="185px" />
                <br />
                图片引用格式:&lt;img src="newimage/文件名.后缀名&quot;/&gt;</td>
        </tr>
        <tr>
            <td class="style2">
                    是否显示</td>
            <td class="style3">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    CausesValidation="True" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1" Selected="True">是</asp:ListItem>
                    <asp:ListItem Value="0">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                    &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Text="发布" onclick="Button1_Click" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                    &nbsp;</td>
            <td class="style3">
                    &nbsp;</td>
        </tr>
    </table>

</asp:Content>

