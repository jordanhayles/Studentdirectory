<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addstudent.aspx.cs" Inherits="Studentdirectory.Addstudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <h1>Student Directory System</h1>
    <form id="form1" runat="server">
    <div>
    <table>
        <caption>Student Information</caption>
        <tr>
            <td>ID</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>First Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>Last name</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>Gender</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>D.O.B</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Faculty</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>Contact</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>Address</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>Confirm Password</td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
        <table>
            <tr>
                
                <td><input id="Submit1" type="submit" value="Register" /></td>
           
                <td><input id="Submit1" type="submit" value="Clear" /></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
