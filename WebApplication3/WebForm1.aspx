

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 200px; border: 2px solid black">
     <tr border="red">
        <td>&nbsp;<asp:Label runat="server" Text="NAME OF STUDENT"></asp:Label></td>
        <td>&nbsp;<asp:TextBox runat="server" ID="TEXT1"></asp:TextBox></td>
    </tr>
    <tr border="yellow">
        <td>&nbsp;<asp:Label runat="server" Text="REG NO."></asp:Label></td>
        <td>&nbsp;<asp:TextBox runat="server" ID="TEXT2"></asp:TextBox></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;<asp:Label runat="server" Text="MARKS1"></asp:Label></td>
        <td>&nbsp;<asp:TextBox runat="server" ID="TEXT3"></asp:TextBox></td>
    </tr>
    <tr>
        <td>&nbsp;<asp:Label runat="server" Text="MARKS2"></asp:Label></td>
        <td>&nbsp;<asp:TextBox runat="server" ID="TEXT4"></asp:TextBox></td>
      
    </tr>
    <tr>
        <td>&nbsp;<asp:Label runat="server" Text="TOTAL"></asp:Label></td>
        <td>&nbsp;<asp:TextBox runat="server" ID="TEXT5"></asp:TextBox></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;<asp:Label runat="server" Text="AVERAGE"></asp:Label></td>
        <td>&nbsp;<asp:TextBox runat="server" ID="TEXT6"></asp:TextBox></td>
        <td>&nbsp;</td>
    </tr>

    
    <tr>
    <td>&nbsp;<asp:Button runat="server" Text="Insert" OnClick="Insert"></asp:Button></td>
    <td>&nbsp;<asp:Button runat="server" Text="Update"></asp:Button></td>
</tr>
        <tr>
    <td>&nbsp;<asp:Button runat="server" Text="Delete"></asp:Button></td>
    <td>&nbsp;<asp:Button runat="server" Text="Calculate"></asp:Button></td>
</tr>



    <tr>
        <td>&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ConnectionStrings:ConnectionString%>" SelectCommand="Select * from [stud]"></asp:SqlDataSource></td>
        <td>&nbsp;</td>
    </tr>             
                
   <tr>
        <td>&nbsp;</td>
        <td>&nbsp;<asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="regno" DataSourceID="SqlDataSource1" ID="abc">
            <Columns>
                <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname"></asp:BoundField>
                <asp:BoundField DataField="regno" HeaderText="regno" ReadOnly="True" SortExpression="regno"></asp:BoundField>
                <asp:BoundField DataField="m1" HeaderText="m1" SortExpression="m1"></asp:BoundField>
                <asp:BoundField DataField="m2" HeaderText="m2" SortExpression="m2"></asp:BoundField>
                <asp:BoundField DataField="tot" HeaderText="tot" SortExpression="tot"></asp:BoundField>
                <asp:BoundField DataField="avg" HeaderText="avg" SortExpression="avg"></asp:BoundField>
            </Columns>
        </asp:GridView>
        </td>
    </tr>
      
</table>
            <asp:Label runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
