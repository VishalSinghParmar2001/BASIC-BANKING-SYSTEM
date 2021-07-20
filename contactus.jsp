<%@page import="java.sql.*" %>
<html>
<head>
<title>Contact Us</title>
</head>
<body>
<%


String FName = request.getParameter("t1");
String LName = request.getParameter("t2");
String con = request.getParameter("t3");
String Sub = request.getParameter("t4");
String op = request.getParameter("c1");


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
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/contact us?user=root&password=vishal");

       
if(c1.equals("submit"))
{
PreparedStatement ps = con.prepareStatement("insert into contact values(?,?,?,?)");
ps.setString(1,FName);
ps.setString(2,LName);
ps.setInt(3,con);
ps.setString(4, Sub);

        

int x = ps.executeUpdate();

if(x>=1)
{
out.println("<font size=10 color=red>Record Inserted Successfuly</font>");
}
else
{
out.println("<font size=10 color=red>Record could not be inserted</font>");
}
}
catch(SQLException e)
{
out.println("Error in sql statement");
}

%>
</body>
</html>