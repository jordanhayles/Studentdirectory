<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentlogin.aspx.cs" Inherits="Studentdirectory.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="Menu.css">
<link rel="stylesheet" href="login.css">
    <title>Student Login</title>
</head>

<body style="background-color:#dcdcdc; background-image: url('green.jpg'); background-repeat: no-repeat;background-size:100% 100%;">
  
    <div class="menu">
    <table>
  <tr>
 <td ><h2>Student Directory</h2> </td>
 <td class="auto-style3" >
<ul>
<a href="studentregister.aspx"><li class="auto-style4" > <u>Register Now</u></li></a>
</ul>
</td>
 </tr>
      </table>
      </div>
     <div  align="center" class="auto-style5" >


   
         <form id="form1" runat="server">
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
    <table align="center" class="login">
        <caption><b>Login</b></caption>
        <tr>
        <td>Username (ID)</td>
       <td> <asp:TextBox ID="user" runat="server"></asp:TextBox>
          <b> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="White" style="font-size:12px;" ErrorMessage="*Username is required to login" ControlToValidate="user" ForeColor="Red"></asp:RequiredFieldValidator></b>
            </td>
        </tr>
        <tr>
        <td class="auto-style2">Password</td>
        <td class="auto-style2"><asp:TextBox ID="pass" runat="server" border-radius="10%" TextMode="Password"></asp:TextBox>
            <b><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="White" ControlToValidate="pass" style="font-size:12px;" ErrorMessage="*Password is required to login" ForeColor="Red"></asp:RequiredFieldValidator></b>
            </td>
        </tr>
        <tr>
            <td></td>
        <td>
            <asp:Button  ID="log" class="auto-style6" runat="server" Text="Login" OnClick="log_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <a href="adminlogin.aspx">Login as: Admin</a></td>
        </tr>
        
         </table>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" BackColor="White" ForeColor="Red" Text=""></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </form>
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
        </div>
      
   
</body>
   
    
   <footer class="auto-style1" >Copyright &copy; 2021 A.D Designs Ltd | All Rights Reserved</footer>
</html>
