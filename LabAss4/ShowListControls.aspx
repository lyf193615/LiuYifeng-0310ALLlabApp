﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowListControls.aspx.cs" Inherits="LabAss4.ShowListControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><h1>ListBox</h1>
            <h1>
                <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Username" DataValueField="Username"></asp:ListBox>
            </h1>
        </div>
        <div><h1>DropDownList</h1>
            <p>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Username" DataValueField="Username">
                </asp:DropDownList>
            </p></div>
        <div><h1>BulletedList</h1>
            <p></p>
            <asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Username" DataValueField="Username">
            </asp:BulletedList>
        </div>
        <div><h1>CheckBoxList</h1>
            <p>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Username" DataValueField="Username">
                </asp:CheckBoxList>
            </p></div>
        <div><h1>RadioButtonList</h1>
            <p>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Username" DataValueField="Username">
                </asp:RadioButtonList>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SimpleDatabseConnectionString %>" ProviderName="<%$ ConnectionStrings:SimpleDatabseConnectionString.ProviderName %>" SelectCommand="SELECT [Username], [password] FROM [Logon]"></asp:SqlDataSource>
            </p></div>
    </form>
</body>
</html>
