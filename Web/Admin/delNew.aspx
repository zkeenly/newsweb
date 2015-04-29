<%@ Page Title="" Language="C#" MasterPageFile="~/Template/NewsOper.master" AutoEventWireup="true" CodeFile="delNew.aspx.cs" Inherits="Admin_delNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        onselecting="SqlDataSource1_Selecting" 
        ConnectionString="<%$ ConnectionStrings:xtwConnectionString %>" 
        SelectCommand="SELECT [New_Id], [Create_Time], [New_Title], [New_Type_Id] FROM [New]"></asp:SqlDataSource>
    s<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:xtwConnectionString %>" 
        SelectCommand="SELECT * FROM [New_Type]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="New_Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="New_Id" HeaderText="New_Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="New_Id" />
            <asp:BoundField DataField="Create_Time" HeaderText="Create_Time" 
                SortExpression="Create_Time" />
            <asp:BoundField DataField="New_Title" HeaderText="New_Title" 
                SortExpression="New_Title" />
            <asp:BoundField DataField="New_Type_Id" HeaderText="New_Type_Id" 
                SortExpression="New_Type_Id" />
        </Columns>
    </asp:GridView>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Type_Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="Type_Id" HeaderText="Type_Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="Type_Id" />
            <asp:BoundField DataField="Type_Name" HeaderText="Type_Name" 
                SortExpression="Type_Name" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    请输入删除要删除的新闻ID<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="确认删除" />
    <asp:Label ID="Label1" runat="server"></asp:Label>
</asp:Content>

