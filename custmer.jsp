<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/userstyle.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

.navbar
{
    width:100%;
    white-space:nowrap;
    background-color: #5E11A3;
}
.main_div
{
    width:100%;
    height:100vh;
 
}
*{
    margin:0;
    padding:0;
   box-sizing:border-box;
}
.display_table
{
    width:100vw;
    height:100vh;
    display:flex;
    flex-direction:column;
    justify-content: center;
    text-align:center;
}
.center_div
{
    width:90vw;
    height:80vh;
    background-image:url('images/2.jpg');
    background-repeat:no-repeat;
    background-size:100%;
    padding:20px 0 0 0;
    box-shadow:0 10px 20px 0 rgba(0,0,0,0.03);
    border-radius:10px;
    margin-left:30px;
}
h1
{
    font-size:18px;
    color:#000;
    text-align:center;
    margin-top:-20px;
    margin-bottom:20px;
}
table
{
    border-collapse:collapse;
    background-color:black;
    box-shadow:0 10px 20px 0 rgba(0,0,0,0.03);
    border-radius: 10px;
    border-collapse:collapse;
    table-layout:fixed;
    opacity:0.7;
    color:#F7CC1A;
    font-weight:bold;
    margin:auto;
}
th,td
{
  border:1px solid #f2f2f2;
   padding:8px 30px;
  text-align:center;
  opacity:0.9;
  color:#f44336 ; 
}
th{
    text-transform:uppercase;
    font-weight:500;
}
td
{
    font-size:13px;
}
.navbar
{
    width:100%;
    white-space:nowrap;
    background-color: #f44336;
}

</style>
</head>
<body>


  <div class="navbar navbar-expand-md">
   
    
    <button class="navbar-toggler text-white " type="button" data-toggle="collapse" data-target="#collapsenavbar">
    <span class="navbar-toggler-icon" style="background:white;"></span>
    </button>
   
     <div class="collapse navbar-collapse text-center" id="collapsenavbar">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a href="StartBanking.html" class="nav-link text-white">HOME</a></li>
            <li class="nav-item">
                <a href="contactus.html" class="nav-link text-white">CONTACT</a></li>
            <li class="nav-item">
                <a href="transfermoney" class="nav-link text-white"></a></li>
            <li class="nav-item">
                <a href="#" class="nav-link text-white"></a></li>    
             </ul>
      </div>
   </div>

 <nav>
         <center><a href="index.html"><img src="images/banking-finance-logo-design18.jpg"></a></center>
</nav
<div class="display_table">
                 <h1>Customer Details</h1>
                 <div class="center_div">
               <div class="table-responsive">
<table>
  <tr>
    <th>ID</th>
    <th>NAME</th>
    <th>EMAIL</th>
    <th>ADDRESS</th>
     <th>AMOUNT</th>
  </tr>
 
<%

try
{
Class.forName("com.mysql.jdbc.Driver");
}
catch(ClassNotFoundException e)
{
out.println("Error in loading drivers");
}
try
{
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/viewcustmer?user=root&password=vishal");
PreparedStatement ps = con.prepareStatement("select * from custmer1");

ResultSet rs = ps.executeQuery();

while(rs.next())
{
%>

<tr>

<td><%= rs.getString("ID") %></td>
<td><%= rs.getString("NAME") %></td>
<td><%= rs.getString("EMAIL") %></td>
<td><%= rs.getString("ADDRESS") %></td>
<td><%= rs.getString("AMOUNT") %></td>
</tr>

<%
}

}
catch(SQLException e)
{
out.println("Error in sql statement");
}
%>




</table>
