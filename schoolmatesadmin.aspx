<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="schoolmatesadmin.aspx.cs" EnableEventValidation = "false" Inherits="Studentdirectory.schoolmatesadmin" %>

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
            height: 633px;
            background-color:#262626;
            width:2400px;
        }
        

        .auto-style5 {
            height: 189px;
        }
        

        .auto-style6 {
            width: 914px;
        }
        

    </style>
</head>

<body style="background-color:#dcdcdc; background-image: url('green.jpg'); background-repeat: no-repeat;background-size:100% 100%; width: 2400px;">
  <form id="form1" runat="server" class="auto-style5">
    
   <div class="sidenav">
 <h4>Student Directory</h4>
   <a href="profileoverviewadmin.aspx">My Profile</a>
  <a href="schoolmatesadmin.aspx">Students</a>
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
               <asp:Button ID="search" runat="server" Text="Search" BackColor="#00CC00" ForeColor="White" OnClick="search_Click" />
           </td>
           <td>
               <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Refresh</asp:LinkButton>
           </td>
           <td>

               <asp:Button ID="Button1" runat="server" Text="Export to Excel" OnClick="Button1_Click" />

           </td>
       </tr>
       </table>
    <table align="center" class="auto-style6">
        <tr>
    <td>
        <asp:GridView ID="GridView1" runat="server" align="right" AutoGenerateColumns="False" BackColor="White" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="600px" ForeColor="Black">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                <asp:BoundField DataField="dob" HeaderText="D.O.B" SortExpression="dob" />
                <asp:BoundField DataField="program" HeaderText="Program" SortExpression="program" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
                <asp:BoundField DataField="club" HeaderText="Club" SortExpression="club" />
                <asp:BoundField DataField="contact" HeaderText="Contact" SortExpression="contact" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                <asp:BoundField DataField="conpass" HeaderText="Password" SortExpression="conpass" />
            </Columns>
        </asp:GridView>
            </td>
        </tr>
           </table>
      
      </div>

       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" DeleteCommand="DELETE FROM [student] WHERE [id] = @id" InsertCommand="INSERT INTO [student] ([id], [fname], [lname], [gender], [dob], [program], [email], [year], [club], [contact], [address], [password], [conpass]) VALUES (@id, @fname, @lname, @gender, @dob, @program, @email, @year, @club, @contact, @address, @password, @conpass)" SelectCommand="SELECT * FROM [student]" UpdateCommand="UPDATE [student] SET [fname] = @fname, [lname] = @lname, [gender] = @gender, [dob] = @dob, [program] = @program, [email] = @email, [year] = @year, [club] = @club, [contact] = @contact, [address] = @address, [password] = @password, [conpass] = @conpass WHERE [id] = @id">
           <DeleteParameters>
               <asp:Parameter Name="id" Type="String" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="id" Type="String" />
               <asp:Parameter Name="fname" Type="String" />
               <asp:Parameter Name="lname" Type="String" />
               <asp:Parameter Name="gender" Type="String" />
               <asp:Parameter DbType="Date" Name="dob" />
               <asp:Parameter Name="program" Type="String" />
               <asp:Parameter Name="email" Type="String" />
               <asp:Parameter Name="year" Type="String" />
               <asp:Parameter Name="club" Type="String" />
               <asp:Parameter Name="contact" Type="String" />
               <asp:Parameter Name="address" Type="String" />
               <asp:Parameter Name="password" Type="String" />
               <asp:Parameter Name="conpass" Type="String" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="fname" Type="String" />
               <asp:Parameter Name="lname" Type="String" />
               <asp:Parameter Name="gender" Type="String" />
               <asp:Parameter DbType="Date" Name="dob" />
               <asp:Parameter Name="program" Type="String" />
               <asp:Parameter Name="email" Type="String" />
               <asp:Parameter Name="year" Type="String" />
               <asp:Parameter Name="club" Type="String" />
               <asp:Parameter Name="contact" Type="String" />
               <asp:Parameter Name="address" Type="String" />
               <asp:Parameter Name="password" Type="String" />
               <asp:Parameter Name="conpass" Type="String" />
               <asp:Parameter Name="id" Type="String" />
           </UpdateParameters>
      </asp:SqlDataSource>
      
 </body>
    <br />
    <br />
    <br />
   
      
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
