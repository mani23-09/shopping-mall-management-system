
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>

<body bgcolor=pink>

	<%-- program to display RECORD --%>
<%@ page language="java" import="java.sql.* " %>
<%@ page language="java" import="java.io.* " %>

<center><h1 class=info>ADD Employee</h1></center>

<%
String id1=request.getParameter("t1");
String ena1=request.getParameter("t2");
String dob1=request.getParameter("t3");
String gen1=request.getParameter("t4");
String edu1=request.getParameter("t5");
String qua1=request.getParameter("t6");
String add1=request.getParameter("t7");
String pno1=request.getParameter("t8");
String post1=request.getParameter("t9");
Integer salary1=Integer.parseInt(request.getParameter("t10"));
String jodate1=request.getParameter("t11");


	
	
try
{
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/addshop","root","Mani2003#@!23"); 
	Statement st = con.createStatement();
    int i=st.executeUpdate("UPDATE addshop.emp SET ena='"+ena1+"',dob='"+dob1+"' , gen='"+gen1+"', edu='"+edu1+"',qua='"+qua1+"' ,address='"+add1+"' , pno='"+pno1+"' , post='"+post1+"', salary='"+salary1+"' , jodate='"+jodate1+"'WHERE ID='"+id1+"'");
	con.close();  
	if(i > 0)
	{
	out.print("<h1>"+"Record Updated Successfully"+"</h1>");
	}
	else
	{
	out.print("There is a problem in updating Record.");
	} 
	}
	catch(SQLException sql)
	{
	request.setAttribute("error", sql);
	out.println("<h1>"+sql+"</h1>");
	}	
%>
<a href="editemploy.html" style="height:25px;width: 100px;background-color: aliceblue;text-decoration: none;cursor: pointer;text-align: center;box-shadow: 3px 3px 5px white;">back</a>


</body>
</html>
