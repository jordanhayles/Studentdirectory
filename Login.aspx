<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Studentdirectory.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
   
        
        .textbox {
            
            border-radius: 10px;
        }

        footer {
            width: 100%;
            text-align: center;
            background-color:black;
            color: white;
            font-family: Calibri;
        }
        h2{
            font-family:Calibri;
            background-color:black;
            color:white;
        }
        table{
            background-color:black;
            color:white;  
           height:130px;
        }
        caption{
             background-color:black;
            color:white;  
        }
        .auto-style1 {
            height: 28px;
        }
        a{
            background-color:white;
        }
        .auto-style2 {
            height: 43px;
        }
    </style>
</head>
<body style="background-color:#dcdcdc; background-image: url('green.jpg'); background-repeat: no-repeat;background-size:100% 100%;">
   
    <h2>Student Directory System</h2>
    <div >
         <form id="form1" runat="server">
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
    <table align="center">
        <caption><b>Login</b></caption>
        <tr>
        <td>Username (ID)</td>
       <td> <asp:TextBox ID="user" runat="server"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="White" style="font-size:12px;" ErrorMessage="*Username is required to login" ControlToValidate="user" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <td class="auto-style2">Password</td>
        <td class="auto-style2"><asp:TextBox ID="pass" runat="server" border-radius="10%" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="White" ControlToValidate="pass" style="font-size:12px;" ErrorMessage="*Password is required to login" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td></td>
        <td><input id="Submit1" type="submit" value="Login" style="background-color:limegreen;color:white;"/></td>
        </tr>
        
         </table>
              </form>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<a href="">Create An Account</a>&nbsp; <a href="">Admin Log In</a>
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
         <br />
         <br />
        </div>
       
   
</body>
    
   <footer class="auto-style1" >Copyright &copy; 2021 A.D Designs Ltd | All Rights Reserved</footer>
</html>
