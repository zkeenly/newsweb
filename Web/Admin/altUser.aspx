<%@ Page Title="" Language="C#" MasterPageFile="~/Template/NewsOper.master" AutoEventWireup="true" CodeFile="altUser.aspx.cs" Inherits="Admin_altUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        欢迎您<asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p>
        请输入原始密码<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        请输入要更改的密码<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        &nbsp;</p>
    <p>
        请确认要更改的密码<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click2" 
            style="height: 26px" Text="Button" />
    </p>
    <p>
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
</asp:Content>

