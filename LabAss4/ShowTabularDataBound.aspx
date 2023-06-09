﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowTabularDataBound.aspx.cs" Inherits="LabAss4.ShowTabularDataBound" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>GridView</h1>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    </Columns>
                </asp:GridView>
            </p>
        </div>
         <div>
            <h1>DataList<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    Username:
                    <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                    <br />
                    password:
                    <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                    <br />
<br />
                </ItemTemplate>
                </asp:DataList>
             </h1>
        </div>
         <div>
            <h1>DetailsView</h1>
             <p>
                 <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                     <Fields>
                         <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                         <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                     </Fields>
                 </asp:DetailsView>
             </p>
        </div>
         <div>
            <h1>FormView</h1>
             <p>
                 <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
                     <EditItemTemplate>
                         Username:
                         <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                         <br />
                         password:
                         <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                         <br />
                         <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                         &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                     </EditItemTemplate>
                     <InsertItemTemplate>
                         Username:
                         <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                         <br />
                         password:
                         <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                         <br />
                         <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                         &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                     </InsertItemTemplate>
                     <ItemTemplate>
                         Username:
                         <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                         <br />
                         password:
                         <asp:Label ID="passwordLabel" runat="server" Text='<%# Bind("password") %>' />
                         <br />

                     </ItemTemplate>
                 </asp:FormView>
             </p>
        </div>
         <div>
            <h1>Repeater</h1>
             <p>
                 <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                     <ItemTemplate>
                         <%# Eval("Username") %>
                             <i>-->y</i>
                         <%# Eval("password") %>
                     </ItemTemplate>
                 </asp:Repeater>
             </p>
        </div>
        <div>
            <h1>ListView</h1>
            <p>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                   <ItemTemplate>
                         <%# Eval("Username") %>
                             <i>--></i>
                         <%# Eval("password") %>
                     </ItemTemplate>
                </asp:ListView>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SimpleDatabseConnectionString %>" SelectCommand="SELECT [Username], [password] FROM [Logon]"></asp:SqlDataSource>
            </p>
        </div>
    </form>
</body>
</html>
