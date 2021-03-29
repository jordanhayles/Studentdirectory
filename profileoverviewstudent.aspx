<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profileoverviewstudent.aspx.cs" Inherits="Studentdirectory.profileoverview" %>

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
            height: 513px;
            background-color:#262626;
        }
        

        
        

    </style>
</head>
   
<body style="background-color:#dcdcdc; background-image: url('green.jpg'); background-repeat: no-repeat;background-size:100% 100%;">
  <form id="form1" runat="server">
    
   <div class="sidenav">
 <h4>Student Directory</h4>
   <a href="profileoverviewstudent.aspx">My Profile</a>
  <a href="schoolmatesstudent.aspx">My Schoolmates</a>
  <asp:LinkButton ID="logout" onclick="LinkButton1_Click" runat="server">Log Out</asp:LinkButton>

   </div>
    <div class="auto-style1">
        <table>
            <tr>
            <td class="auto-style2">Welcome, <asp:Label ID="first" runat="server" Text=""></asp:Label> 
                &nbsp;<asp:Label ID="last" runat="server" Text=""></asp:Label> 
                &nbsp;ID:&nbsp;<asp:Label ID="idnum" runat="server" Text=""></asp:Label> 
                </td>
        </tr>
            </table>
    </div>
<div class="auto-style4">

    
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <br />
      <br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
      <b><asp:Label ID="Label1" runat="server" BackColor="White" Text="Profile Overview"></asp:Label></b>
      
      <br />
      <br />
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DetailsView ID="DetailsView1" Align="center" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="50px" Width="222px" BackColor="White" ForeColor="Black" CssClass="auto-style5">
          <Fields>
              <asp:TemplateField HeaderText="ID" SortExpression="id">
                  <EditItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ControlToValidate="TextBox2" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Users must have an ID"></asp:RequiredFieldValidator>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("id") %>'></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
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
              <asp:CommandField ShowEditButton="True" />
          </Fields>
      </asp:DetailsView>
    
      

    
      </div>
</div>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" DeleteCommand="DELETE FROM [student] WHERE [id] = @id" InsertCommand="INSERT INTO [student] ([id], [fname], [lname], [gender], [dob], [program], [email], [year], [club], [contact], [address], [password], [conpass]) VALUES (@id, @fname, @lname, @gender, @dob, @program, @email, @year, @club, @contact, @address, @password, @conpass)" SelectCommand="SELECT * FROM [student] WHERE ([id] = @id)" UpdateCommand="UPDATE [student] SET [fname] = @fname, [lname] = @lname, [gender] = @gender, [dob] = @dob, [program] = @program, [email] = @email, [year] = @year, [club] = @club, [contact] = @contact, [address] = @address, [password] = @password, [conpass] = @conpass WHERE [id] = @id">
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
          <SelectParameters>
              <asp:SessionParameter Name="id" SessionField="id" Type="String" />
          </SelectParameters>
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
   </form>
 </body>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
   <footer>Copyright &copy; 2021 A.D Designs Ltd | All Rights Reserved</footer>
    

</html>
