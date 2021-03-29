<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="schoolmatesstudent.aspx.cs" Inherits="Studentdirectory.schoolmatesstudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <link rel="stylesheet" href="sidebar.css">

    <title>Schoolmates</title>
    <style type="text/css">
          footer {
            width: 100%;
            text-align: center;
            background-color:black;
            color: white;
            font-family: Calibri;
        }
          h4{
            font-family:'MV Boli';
            background-color:black;
            color:white;
        }
        

        .auto-style1 {
            height: 40px;
            margin-left: 150px;
            background-color:black;
            margin-top: 0px;
            color:white;
        }
        

        .auto-style2 {
            width: 308px;
        }
        

        .auto-style4 {
            height: 612px;
            background-color:#262626;
        }
        

        .auto-style5 {
            height: 189px;
        }
        

    </style>
</head>

<body style="background-color:#dcdcdc; background-image: url('green.jpg'); background-repeat: no-repeat;background-size:100% 100%;">
  
    <form id="form1" runat="server" class="auto-style5">
   <div class="sidenav">
 <h4>Student Directory</h4>
   <a href="profileoverviewstudent.aspx">My Profile</a>
  <a href="schoolmatesstudent.aspx">My Schoolmates</a>
 <asp:LinkButton ID="logout" runat="server" OnClick="logout_Click">Log Out</asp:LinkButton>
   </div>
    <div class="auto-style1">
        <table>
            <tr>
            <td class="auto-style2">Welcome, <asp:Label ID="first" runat="server" Text=""></asp:Label> 
                &nbsp;<asp:Label ID="last" runat="server" Text=""></asp:Label> 
                &nbsp;ID:&nbsp;<asp:Label ID="idnum" runat="server" Text=""></asp:Label> </td>
        </tr>
            </table>
    </div>
<div class="auto-style4">

    <br />
    <br />
    <br />
    <br />
   <table align="center">
       <tr>
           <td>
               <asp:Label ID="Label1" runat="server" ForeColor="White" Text="ID" Style="font-size:15px;" BackColor="Black"></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="value" runat="server"></asp:TextBox>
           </td>
           <td> <asp:Label ID="Label2" runat="server" ForeColor="White" Text="First Name" Style="font-size:15px;" BackColor="Black"></asp:Label></td>
           <td><asp:TextBox ID="value1" runat="server"></asp:TextBox></td>
            </tr>
       <tr>
           <td><asp:Label ID="Label3" runat="server" ForeColor="White" Text="Last Name" Style="font-size:15px;" BackColor="Black"></asp:Label></td>
            <td><asp:TextBox ID="value2" runat="server"></asp:TextBox></td>
           <td><asp:Label ID="Label4" runat="server" ForeColor="White" Text="Program" Style="font-size:15px;" BackColor="Black"></asp:Label></td></td>
           <td>
               <asp:DropDownList ID="value3" runat="server">
                   <asp:ListItem></asp:ListItem>
                   <asp:ListItem>MIS</asp:ListItem>
                   <asp:ListItem>ADIT</asp:ListItem>
                   <asp:ListItem>CS</asp:ListItem>
                   <asp:ListItem>TH</asp:ListItem>
               </asp:DropDownList>
           </td>
        </tr>
       <tr>
           <td>
               <asp:Button ID="search" runat="server" Text="Search" BackColor="#00CC00" ForeColor="White" OnClick="search_Click1" />
           </td>
           <td>
               <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Refresh</asp:LinkButton>
           </td>
       </tr>
       </table>
    <table align="center">
        <tr>
    <td>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="582px">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                <asp:BoundField DataField="program" HeaderText="Program" SortExpression="program" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
                <asp:BoundField DataField="club" HeaderText="Club" SortExpression="club" />
                <asp:BoundField DataField="contact" HeaderText="Contact" SortExpression="contact" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            </Columns>
        </asp:GridView>
            </td>
        </tr>
           </table>
      
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT [id], [fname], [lname], [gender], [program], [email], [year], [club], [contact], [address] FROM [student]"></asp:SqlDataSource>
      
   </form>
</div>
 </body>
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
   <footer>Copyright &copy; 2021 A.D Designs Ltd | All Rights Reserved</footer>
    
</html>
