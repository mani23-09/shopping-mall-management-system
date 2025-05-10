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
    background-image: url(db5.jpg);
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
  }
  
  #empatt {background-image: url(db5.jpg);
          background-repeat: no-repeat;
          background-size: cover;
  }

    table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  margin-top: -50px;
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
  
  background-color: #2420358c;
    color: #e8cfcf;
}

</style>
  <body style="background-image: url(db5.jpg);">
    <marquee behavior="" direction="left" style="font-size: 30px;padding-top: 10px;font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;height: 50px;color: white;">
  Shopping mall management Details
  </marquee>

                 
<%-- program to display RECORD --%>
<%@ page language="java" import="java.sql.* " %>
<%@ page language="java" import="java.io.* " %>





<a href="reports.jsp" style="text-decoration: none;"><button class="tablink"  >shop : details</button></a>
<a href="reports2.jsp" style="text-decoration: none;"><button class="tablink"  >Employee : details</button></a>
<a href="reports3.jsp" style="text-decoration: none;"><button class="tablink" >Tenants : details</button></a>
<a href="reports4.jsp" style="text-decoration: none;"><button class="tablink" >shop : allocation-details</button></a>
<button class="tablink" onclick="openPage('empatt', this, '#ffa50000')"  id="defaultOpen">rent : collection-details </button>
<a href="reports6.jsp" style="text-decoration: none;"><button class="tablink" >employee : attandence-details</button></a>
<a href="reports7.jsp" style="text-decoration: none;"><button class="tablink" >Exit</button></a>



<div id="empatt" class="tabcontent">
  <%
	
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/addshop","root","Mani2003#@!23"); 
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from rent ");%>
    <table>
    <tr>
      <th >RECEIPT NO</th>
      <th>Shop allocate id</th>
      <th>Rent amount</th>
      <th>Rent/month</th>
      <th>Rent/year</th>
      <th>Rent Paid Date</th>
    </tr>
    <%
	while(rs.next())
	{
		String rno=rs.getString(1);
		String said=rs.getString(2);
		Float ramo=rs.getFloat(3);
    Float rpm=rs.getFloat(4);
    Float rpy=rs.getFloat(5);
    String rpd=rs.getString(6);
		%>

     
    <tr>
        <td> <% out.print(rno);%></td>
		<td><% out.print(said);%></td>
		<td><% out.print(ramo);%></td>	
        <td><% out.print(rpm);%></td>
        <td><% out.print(rpy);%></td>
        <td><% out.print(rpd);%></td>
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