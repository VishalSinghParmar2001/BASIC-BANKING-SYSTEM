<%@page import="java.sql.*" %>
<%@page import = "com.*" %>
<html>
<head>
<title>
Transaction Web Page
</title>
</head>


<body>

<%
String id= request.getParameter("t1");
int amt= Integer.parseInt(request.getParameter("t2"));
String op = request.getParameter("b1");
String id1= request.getParameter("p1");
////////////////////////////

Connection con = null;

try
{
Class.forName("com.mysql.jdbc.Driver");
}
catch(ClassNotFoundException e)
{
out.println("Error in loading Drivers");
}

try
{
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/viewcustmer?user=root&password=vishal");
PreparedStatement ps = con.prepareStatement("select * from custmer1 where ID = ?");
ps.setString(1,id);


ResultSet rs = ps.executeQuery();
int AMOUNT=0;

if(rs.next()==true)
{
 AMOUNT=rs.getInt("AMOUNT");
}
int bal=0;
if(AMOUNT>amt)
{
                     bal= AMOUNT-amt;
		ps = con.prepareStatement("update custmer1 set amount =? where id=?");
		ps.setInt(1,bal);
		ps.setString(2,id);
		int x=ps.executeUpdate();
		
		 ps = con.prepareStatement("select * from custmer1 where ID = ?");
		ps.setString(1,id1);
		ResultSet rs1=ps.executeQuery();
		if(rs1.next()==true)
		{
		int b=rs1.getInt("AMOUNT");
		out.println("b="+b);
		

		ps = con.prepareStatement("update custmer1 set amount =? where id=?");
		ps.setInt(1,b+amt);
		ps.setString(2,id1);
		x=ps.executeUpdate();
		if(x>=1)  
                {
		History obj = new History();
		obj.history(id, id1, amt);
                request.setAttribute("msg", "Transaction successful!!!");
			
                }
		}
	
}
else
{
out.println("User Not Found");
}
}

catch(Exception e)
{
System.out.println("Error in sql statement"+ e);
}



///////////////////////////////


//history

/*
public void setHistory(String sender, String receiver, int amount){

final String p = "insert into history values(?,?,?,?,?)";
int status = 0;

SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
Calendar c = Calendar.getInstance();
String date = sdf.format(c.getTime());

SimpleDateFormat sdf2 = new SimpleDateFormat("HH::mm::ss");
Date date2 = new Date();
String time = String.valueOf(sdf2.format(date2));


try{


Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/viewcustmer?user=root&password=vishal");
PreparedStatement ps = con1.prepareStatement(p);

ps.setString(1, sender);
ps.setString(2, receiver);
ps.setInt(3, amount);
ps.setString(4, date);
ps.setString(5, time);


status = ps.executeUpdate();
}

catch(Exception e){

System.out.println("Error in history method");

}

*/
%>
 
<jsp:forward page="transaction.jsp" />
	
</form>
</body>
</html>

