<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profileoverviewadmin.aspx.cs" Inherits="Studentdirectory.profileoverviewadmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="sidebar.css">

    <title>My Profile</title>
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
            height: 586px;
            background-color:#262626;
        }
        

    </style>
</head>

<body style="background-color:#dcdcdc; background-image: url('green.jpg'); background-repeat: no-repeat;background-size:100% 100%;">
  <form id="form1" runat="server">
    
   <div class="sidenav">
 <h4>Student Directory</h4>
   <a href="profileoverviewadmin.aspx">My Profile</a>
  <a href="schoolmatesadmin.aspx">Students</a>
   <asp:LinkButton ID="logout" onclick="LinkButton1_Click" runat="server">Log Out</asp:LinkButton>
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

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>
    <asp:Label ID="Label1" runat="server" BackColor="White" Text="Profile Overview"></asp:Label>
    </b>
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" align="center" runat="server" Height="137px" Width="224px" AutoGenerateRows="False" BackColor="White" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Fields>
            <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
            <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
            <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
            <asp:BoundField DataField="dob" HeaderText="D.O.B" SortExpression="dob" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="faculty" HeaderText="Faculty" SortExpression="faculty" />
            <asp:BoundField DataField="contact" HeaderText="Contact" SortExpression="contact" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:BoundField DataField="conpass" HeaderText="Password" SortExpression="conpass" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
      </div>
</div>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" DeleteCommand="DELETE FROM [admin] WHERE [id] = @id" InsertCommand="INSERT INTO [admin] ([id], [fname], [lname], [gender], [dob], [email], [faculty], [contact], [address], [password], [conpass]) VALUES (@id, @fname, @lname, @gender, @dob, @email, @faculty, @contact, @address, @password, @conpass)" SelectCommand="SELECT * FROM [admin] WHERE ([id] = @id)" UpdateCommand="UPDATE [admin] SET [fname] = @fname, [lname] = @lname, [gender] = @gender, [dob] = @dob, [email] = @email, [faculty] = @faculty, [contact] = @contact, [address] = @address, [password] = @password, [conpass] = @conpass WHERE [id] = @id">
          <DeleteParameters>
              <asp:Parameter Name="id" Type="String" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="id" Type="String" />
              <asp:Parameter Name="fname" Type="String" />
              <asp:Parameter Name="lname" Type="String" />
              <asp:Parameter Name="gender" Type="String" />
              <asp:Parameter DbType="Date" Name="dob" />
              <asp:Parameter Name="email" Type="String" />
              <asp:Parameter Name="faculty" Type="String" />
              <asp:Parameter Name="contact" Type="Int32" />
              <asp:Parameter Name="address" Type="String" />
              <asp:Parameter Name="password" Type="String" />
              <asp:Parameter Name="conpass" Type="String" />
          </InsertParameters>
          <SelectParameters>
              <asp:SessionParameter Name="id" SessionField="id" Type="String" />
          </SelectParameters>
          <UpdateParameters>
              <asp:Parameter Name="fname" Type="String" />
              <asp:Parameter Name="lname" Type="String" />
              <asp:Parameter Name="gender" Type="String" />
              <asp:Parameter DbType="Date" Name="dob" />
              <asp:Parameter Name="email" Type="String" />
              <asp:Parameter Name="faculty" Type="String" />
              <asp:Parameter Name="contact" Type="Int32" />
              <asp:Parameter Name="address" Type="String" />
              <asp:Parameter Name="password" Type="String" />
              <asp:Parameter Name="conpass" Type="String" />
              <asp:Parameter Name="id" Type="String" />
          </UpdateParameters>
      </asp:SqlDataSource>
   </form>
 </body>
    <br />
    <br />
   <footer>Copyright &copy; 2021 A.D Designs Ltd | All Rights Reserved</footer>
    
</html>
