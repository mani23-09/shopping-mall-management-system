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
  * {box-sizing: border-box;
        
  }
  
  /* Set height of body and the document to 100% */
  body, html {
    height: 100%;
    margin: 0;
    font-family: Arial;
    background-image:url(db3.jpg) ;
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
    padding: 100px 20px;
    height: auto;
  }

  #Contact {background-image: url(db3.jpg);
          background-repeat: no-repeat;
          background-size: cover}

  

    table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  margin-top: -50px;
  user-select: none;
}

td,th{
  border: 3px solid #033e4e;
  padding: 8px;
        height: 50px;
        width:110px;
        margin-left: -50px;
        text-align: center;
        font-family: cursive;
}
th
{
  background-color:black;
  color: white;
}
tr
{
  background-color:#ffffffb5;
  color:#095677;
}

</style>
<body>
  
  <marquee behavior="" direction="left" style="color:white;font-size: 30px;font-family: 'Times New Roman', Times, serif;height: 50px;padding-top: 10px;">
    Shopping mall management Details
    </marquee>


                 
<%-- program to display RECORD --%>
<%@ page language="java" import="java.sql.* " %>
<%@ page language="java" import="java.io.* " %>


<a href="reports.jsp" style="text-decoration: none;"><button class="tablink"  >shop : details</button></a>
<a href="reports2.jsp" style="text-decoration: none;"><button class="tablink" >Employee : details</button></a>
<a href="#" style="text-decoration: none;"><button class="tablink" onclick="openPage('Contact', this, '#00162b')" id="defaultOpen">Tenants : details</button></a>
<a href="reports4.jsp" style="text-decoration: none;"><button class="tablink" >shop : allocation-details</button></a>
<a href="reports5.jsp" style="text-decoration: none;"><button class="tablink" >rent : collection-details</button></a>
<a href="reports6.jsp" style="text-decoration: none;"><button class="tablink" >employee : attandence-details</button></a>
<a href="reports7.jsp" style="text-decoration: none;"><button class="tablink" >Exit</button></a>



<div id="Contact" class="tabcontent">
  <%
	
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/addshop","root","Mani2003#@!23"); 
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from tenant ");%>
    <table>
    <tr>
      <th >Tenant_id</th>
      <th >Tenant_Name</th>
      <th >Tenant_address</th>
      <th >Tenant_phoneno</th>
      <th>Tenant_rent</th>
      <th>Tenant_floorno</th>
    </tr>
    <%
	while(rs.next())
	{
		String tid=rs.getString(1);
		String tname=rs.getString(2);
		String tadd=rs.getString(3);
		String tpno=rs.getString(4);
		Float trent=rs.getFloat(5);
		Integer tfno=rs.getInt(6);
		%>

     
    <tr>
        <td> <% out.print(tid);%></td>
		<td><% out.print(tname);%></td>
		<td><% out.print(tadd);%></td>	
        <td><% out.print(tpno);%></td>
		<td><% out.print(trent);%></td>
		<td><% out.print(tfno);%></td>	
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