<%@ Page Title="" Language="C#" MasterPageFile="~/Template/NewsOper.master" AutoEventWireup="true" CodeFile="addUser.aspx.cs" Inherits="Admin_addUser" %>

<%@ Register assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.DynamicData" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 77px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        管理员用户创建</p>
    
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    用户名</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" 
                        CausesValidation="True" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    密码</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:Label ID="PwdLength" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    确认密码</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" ontextchanged="TextBox3_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="创建用户" onclick="Button1_Click" />
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
</asp:Content>

