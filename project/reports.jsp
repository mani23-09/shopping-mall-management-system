<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- <link rel="stylesheet" href="indexshop.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="shop.css">
    <link rel="stylesheet" href="aboutus.css"> -->
</head>
<style>
  * {box-sizing: border-box}
  
  /* Set height of body and the document to 100% */
  body, html {
    height: 100%;
    margin: 0;
    font-family: Arial;
    background-image: url(db1.jpg);
  }
  
  /* Style tab links */
  .tablink {
    background-color: #555;
    color: white;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 10px 10px;
    font-size: 17px;
   
    width: 14.27%;
    height: 55px;
  }
  
  .tablink:hover {
    background-color: #777;
  }
  
  /* Style the tab content (and add height:100% for full page content) */
  .tabcontent {
    color: white;
    display: none;
    padding: 0px 20px;
    height: 100%;
    height: auto;
  }
  
  #Home {background-image: url(db1.jpg);
          background-repeat: no-repeat;
          background-size: cover;
  }

    
  
    table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  margin-top: -100px;
}
th
{
  background-color: white;
  color:black;
 
 
}
td,th{
  border: 3px solid #dddddd;
 
  padding: 8px;
 
        height: 50px;
        width:110px;
        margin-left: -50px;
        text-align: center;
        font-family: cursive;
}


tr
{
  margin-top:-50px;
}
marquee:hover
{
  background-color: #777;
  color: white;
}
</style>
<body>
  <marquee behavior="" direction="left" style="color: white;font-size: 30px;padding-top: 10px;font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;height: 50px;">
Shopping mall management Details
</marquee>
                 
<%-- program to display RECORD --%>
<%@ page language="java" import="java.sql.* " %>
<%@ page language="java" import="java.io.* " %>



<a href="#" style="text-decoration: none;"><button class="tablink" onclick="openPage('Home', this, 'rgb(31 58 33 / 0%)')" id="defaultOpen">shop : details</button></a>
<a href="reports2.jsp" style="text-decoration: none;"><button class="tablink"  >Employee : details</button></a>
<a href="reports3.jsp" style="text-decoration: none;"><button class="tablink" >Tenants : details</button></a>
<a href="reports4.jsp" style="text-decoration: none;"><button class="tablink" >shop : allocation-details</button></a>
<a href="reports5.jsp" style="text-decoration: none;"><button class="tablink">rent : collection-details</button></a>
<a href="reports6.jsp" style="text-decoration: none;"><button class="tablink">employee : attandence-details</button></a>
<a href="reports7.jsp" style="text-decoration: none;"><button class="tablink">Exit</button></a>

<div id="Home" class="tabcontent">
  <%
	
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/addshop","root","Mani2003#@!23"); 
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from adshopd ");%>
    <table>
    <tr>
      <th style="width:109px;">shop id</th>
      <th style="width:105px;">floor_no</th>
      <th style="width:105px;">shop_name</th>
      <th style="width:105px;">Rent/month</th>
      <th style="width:105px;">Shop_status</th>
      <th style="width:105px;">bonus</th>
    </tr>
    <%
	while(rs.next())
	{
		String id=rs.getString(1);
		Integer fno=rs.getInt(2);
        String sname=rs.getString(3);
		Float rpm=rs.getFloat(4);
		String sss=rs.getString(5);
		Float bamo=rs.getFloat(6);
        %>

     
    <tr>
        <td> <% out.print(id);%></td>
		<td><% out.print(fno);%></td>
		<td><% out.print(sname);%></td>	
        <td><% out.print(rpm);%></td>
		<td><% out.print(sss);%></td>
		<td><% out.print(bamo);%></td>	
    </tr>
		<br>
        <%
    }
    %>
  </table>
	<%
	con.close();

	

%>
</div>






</body>
<script>
  function openPage(pageName,elmnt,color) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].style.backgroundColor = "";
    }
    document.getElementById(pageName).style.display = "block";
    elmnt.style.backgroundColor = color;
  }
  
  // Get the element with id="defaultOpen" and click on it
  document.getElementById("defaultOpen").click();
  </script>
</html>