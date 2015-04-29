<%@ Page Title="" Language="C#" MasterPageFile="~/Template/NewsOper.master" AutoEventWireup="true" CodeFile="delUser.aspx.cs" Inherits="Admin_altUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Panel ID="Panel1" runat="server">
        <p>
            管理用户名|密码</p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:xtwConnectionString %>" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT [User_Id], [User_Name], [User_Admin] FROM [User]">
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="User_Id" DataSourceID="SqlDataSource1" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="User_Id" HeaderText="User_Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="User_Id" />
                    <asp:BoundField DataField="User_Name" HeaderText="User_Name" 
                SortExpression="User_Name" />
                    <asp:BoundField DataField="User_Admin" HeaderText="User_Admin" 
                SortExpression="User_Admin" />
                </Columns>
            </asp:GridView>
        </p>
        请输入要删除的用户ID<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="删除" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
    </asp:Panel>

</asp:Content>

