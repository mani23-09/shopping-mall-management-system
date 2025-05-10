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
<!-- select a.*,t.* from adshopd as a join shopall as s on a.ID = s.sid join tenant as t on s.tid = t.tid where a.ID = '"+sid1+"' and t.tid = '"+tid1+"'  -->
<center><h1 class=info>ADD SHOP</h1></center>

<%
String said1=request.getParameter("t1");
String tid1=request.getParameter("t2");
String sid1=request.getParameter("t3");
out.println(said1+sid1+tid1+"INSERT INTO addshop.shopall (sallid, sid, tid) VALUES ('"+said1+"', '"+sid1+"', '"+tid1+"')");
try
{
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/addshop","root","Mani2003#@!23"); 
	Statement st = con.createStatement();
    int i=st.executeUpdate("INSERT INTO addshop.shopall (sallid, sid, tid) VALUES ('"+said1+"', '"+sid1+"', '"+tid1+"')");
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

<a href="shopall.html" style="height:25px;width: 100px;background-color: aliceblue;text-decoration: none;cursor: pointer;text-align: center;box-shadow: 3px 3px 5px white;">back</a>
</body>
</html>
