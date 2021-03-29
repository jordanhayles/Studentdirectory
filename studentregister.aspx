<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentregister.aspx.cs" Inherits="Studentdirectory.Addstudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="login.css">
     <link rel="stylesheet" href="menu.css">
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
        .auto-style7 {
            height: 30px;
        }
        .auto-style8 {
            width: 659px;
            height: 30px;
        }
    </style>
</head>
<body style="background-color:#dcdcdc; background-image: url('green.jpg'); background-repeat: no-repeat;background-size:100% 100%;">
    
     <div class="menu">
    <table>
  <tr>
 <td class="auto-style7" ><h2>Student Directory</h2> </td>
 <td class="auto-style8" >
<a href="studentlogin.aspx">Go Back</a></td>
 </tr>
      </table>
      </div>
    <br />
    <br />
    <form id="form1" runat="server">
    <div style="background-color:#dcdcdc;">
    <table class="login">
        <caption class="auto-style4" align="center">&nbsp;Student Registration</caption>
        <tr>
            <td class="auto-style1">ID</td>
            <td class="auto-style1">
                <asp:TextBox ID="id" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" style="font-size:12px;" runat="server" ErrorMessage="*Incorrect format " ControlToValidate="id" ValidationExpression="^\d+$" ForeColor="Red" BackColor="White"></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style3">First Name</td>
            <td class="auto-style3">
                <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" style="font-size:12px;" ErrorMessage="*Only letters are allowed" ForeColor="Red" ControlToValidate="fname" ValidationExpression="^[a-zA-Z]*$" BackColor="White"></asp:RegularExpressionValidator>
            </td>
    
            <td class="auto-style3">Last name</td>
            <td class="auto-style3">
                <asp:TextBox ID="lname" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" style="font-size:12px;" ErrorMessage="*Only letters are allowed" ControlToValidate="lname" ValidationExpression="^[a-zA-Z]*$" ForeColor="Red" BackColor="White"></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style1">Gender</td>
            <td class="auto-style1">
                
        <asp:RadioButtonList ID="gender" runat="server">
            <asp:ListItem Value="Male">Male</asp:ListItem>
            <asp:ListItem Value="Female">Female</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" style="font-size:12px;" ErrorMessage="*Select a gender" ForeColor="Red" ControlToValidate="gender" BackColor="White"></asp:RequiredFieldValidator>
            </td>
        
            <td class="auto-style1">D.O.B</td>
            <td class="auto-style1">
                <asp:TextBox ID="dob" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" style="font-size:12px;" ErrorMessage="*Date of birth is required" ControlToValidate="dob" ForeColor="Red" BackColor="White"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Program</td>
            <td>
                <asp:DropDownList ID="program" runat="server" Width="76px">
                    <asp:ListItem Value="  "></asp:ListItem>
                    <asp:ListItem Value="MIS">MIS</asp:ListItem>
                    <asp:ListItem>ADIT</asp:ListItem>
                    <asp:ListItem Value="CS">CS</asp:ListItem>
                    <asp:ListItem>TH</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" style="font-size:12px;" ErrorMessage="*Select a program" ForeColor="Red" ControlToValidate="program" BackColor="White"></asp:RequiredFieldValidator>
            </td>
        
            <td>Email</td>
            <td>
                <asp:TextBox ID="email" runat="server" TextMode="Email" Width="240px"></asp:TextBox>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" style="font-size:12px;" ErrorMessage="*Incorrect email format" ControlToValidate="email" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" BackColor="White"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Year</td>
            <td>
                <asp:DropDownList ID="year" runat="server" Height="16px" Width="53px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="year" style="font-size:12px;" ErrorMessage="*Select a year" ForeColor="Red" BackColor="White"></asp:RequiredFieldValidator>
            </td>
            <td>Club</td>
            <td>
                <asp:DropDownList ID="club" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Chess</asp:ListItem>
                    <asp:ListItem>Drama</asp:ListItem>
                    <asp:ListItem>Computer</asp:ListItem>
                    <asp:ListItem>Sports</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Select a club" style="font-size:12px;" ControlToValidate="club" ForeColor="Red" BackColor="White"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style2">Contact</td>
            <td class="auto-style2">
                <asp:TextBox ID="contact" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" style="font-size:12px;" ErrorMessage="*Phone number is required" ForeColor="Red" ControlToValidate="contact" ValidationExpression="^\d+$" BackColor="White"></asp:RegularExpressionValidator>
            </td>
        
            <td class="auto-style2">Address</td>
            <td class="auto-style2">
                <asp:TextBox ID="address" runat="server" Width="241px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  style="font-size:12px;" ErrorMessage="*Address is required" ControlToValidate="address" ForeColor="Red" BackColor="White"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="pass" runat="server" TextMode="Password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" style="font-size:12px;" ErrorMessage="*Password is required " ControlToValidate="pass" ForeColor="Red" BackColor="White"></asp:RequiredFieldValidator>
            </td>
        
            <td>Confirm Password</td>
            <td>
                <asp:TextBox ID="conpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" style="font-size:12px;" ErrorMessage="*Passwords don't match " ControlToValidate="conpass" ControlToCompare="pass" ForeColor="Red" BackColor="White"></asp:CompareValidator>
            </td>
        </tr>
    </table>
        <table>
            <tr>
                
                <td><asp:Button ID="register" runat="server" onclick="register_Click" Text="Register" />
                </td>
            </tr>
        </table>
    </div>
        <p>
            <asp:Label ID="regtxt" runat="server" BackColor="White" ForeColor="Red"></asp:Label>
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
