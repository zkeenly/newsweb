<%@ Page Title="" Language="C#" MasterPageFile="~/Template/admin.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Admin_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script language="javascript" type="text/javascript">
// <!CDATA[

        function Button1_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <div align="center">
    <p align="center">
        <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Admin/index.aspx" 
            Height="361px" onauthenticate="Login1_Authenticate" Width="593px" 
            BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333">
            <TextBoxStyle Font-Size="0.8em" />
            <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="White" />
        </asp:Login>
    </p>
    </div>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

