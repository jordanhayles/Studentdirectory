<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminregister.aspx.cs" Inherits="Studentdirectory.adminregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Registration</title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 35px;
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style4 {
            width: 371px;
        }
    </style>
</head>
<body>
     <h1>Student Directory </h1>
    <a href="adminlogin.aspx">Go Back</a>
    <form id="form1" runat="server">
    <div>
    <table>
        <caption class="auto-style4">&nbsp;Admin Registration </caption>
        <tr>
            <td class="auto-style1">ID</td>
            <td class="auto-style1">
                <asp:TextBox ID="id" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" style="font-size:12px;" runat="server" ErrorMessage="*Incorrect format " ControlToValidate="id" ValidationExpression="^\d+$" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
       
        </tr>
         <tr>
            <td class="auto-style3">First Name</td>
            <td class="auto-style3">
                <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" style="font-size:12px;" ErrorMessage="*Only letters are allowed" ForeColor="Red" ControlToValidate="fname" ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
            </td>
    
            <td class="auto-style3">Last name</td>
            <td class="auto-style3">
                <asp:TextBox ID="lname" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" style="font-size:12px;" ErrorMessage="*Only letters are allowed" ControlToValidate="lname" ValidationExpression="^[a-zA-Z]*$" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style1">Gender</td>
            <td class="auto-style1">
                
        <asp:RadioButtonList ID="gender" runat="server">
            <asp:ListItem Value="Male">Male</asp:ListItem>
            <asp:ListItem Value="Female">Female</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" style="font-size:12px;" ErrorMessage="*Select a gender" ForeColor="Red" ControlToValidate="gender"></asp:RequiredFieldValidator>
            </td>
        
            <td class="auto-style1">D.O.B</td>
            <td class="auto-style1">
                <asp:TextBox ID="dob" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" style="font-size:12px;" ErrorMessage="*Date of birth is required" ControlToValidate="dob" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="email" runat="server" TextMode="Email" Width="240px"></asp:TextBox>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" style="font-size:12px;" ErrorMessage="*Incorrect email format" ControlToValidate="email" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td>Faculty</td>
            <td>
                <asp:DropDownList ID="faculty" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Computer</asp:ListItem>
                    <asp:ListItem>Business</asp:ListItem>
                    <asp:ListItem>Tourism</asp:ListItem>
                    <asp:ListItem>Cosmetics</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" style="font-size:12px;" ErrorMessage="*Select faculty" ControlToValidate="faculty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
   
         <tr>
            <td class="auto-style2">Contact</td>
            <td class="auto-style2">
                <asp:TextBox ID="contact" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" style="font-size:12px;" ErrorMessage="*Phone number is required" ForeColor="Red" ControlToValidate="contact" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            </td>
        
            <td class="auto-style2">Address</td>
            <td class="auto-style2">
                <asp:TextBox ID="address" runat="server" Width="241px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  style="font-size:12px;" ErrorMessage="*Address is required" ControlToValidate="address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="pass" runat="server" TextMode="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" style="font-size:12px;" ErrorMessage="*Password is required " ControlToValidate="pass" ForeColor="Red" ></asp:RequiredFieldValidator>
            </td>
        
            <td>Confirm Password</td>
            <td>
                <asp:TextBox ID="conpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" style="font-size:12px;" ErrorMessage="*Passwords don't match " ControlToValidate="conpass" ControlToCompare="pass" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
    </table>
        <table>
            <tr>
                
                <td> <asp:Button ID="register" runat="server" Text="Register" OnClick="register_Click" /></td>
           
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
        <p>
            <asp:Label ID="regtxt" runat="server" Text=""></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
    <footer class="auto-style1" >Copyright &copy; 2021 A.D Designs Ltd | All Rights Reserved</footer>
</html>
