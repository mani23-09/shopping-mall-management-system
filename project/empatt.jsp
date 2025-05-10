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

<center><h1 class=info>ADD SHOP</h1></center>

<%

    String id1=request.getParameter("t1");
    String fno1=request.getParameter("t2");
    String sname1=request.getParameter("t3");
    String rpm1=request.getParameter("t4");

    try
    {
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/addshop","root","Mani2003#@!23"); 
	Statement st = con.createStatement();
    int i=st.executeUpdate("INSERT INTO `addshop`.`empatt` (`id`, `date1`, `msts`, `ests`) VALUES ('"+id1+"', '"+fno1+"', '"+sname1+"', '"+rpm1+"');");
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
<a href="empatt.html" style="height:25px;width: 100px;background-color: aliceblue;text-decoration: none;cursor: pointer;text-align: center;box-shadow: 3px 3px 5px white;">back</a>
</body>
</html>
