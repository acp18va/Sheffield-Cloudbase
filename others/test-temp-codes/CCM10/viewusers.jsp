  <%@ include file = "db.jsp" %>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<meta charset="UTF-8">
<title>TOY APP</title>
</head>
<body>
<link rel="icon" href="cool-backgrounds-41.jpg" type="image/jpg" sizes="16x16">
 <link rel="stylesheet" href="styles2.css" />
<link rel="stylesheet" href="styles.css" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
table, th, td {
  border: 1px solid black;
  text-align: center;
  background-color:white;
}
</style>

    </head>
<body class="main">


<div class="toptab">
<a href = "index.jsp" > Home </a>
<a href = "app.jsp" > Apps </a>
<a href = "reg.jsp" > Register </a>
<a class="active" href = "viewusers.jsp" > View All Registered Users </a>


 
  <%
        String username=(String)session.getAttribute("username");
        
        
       
		if(username!=null) {
    %>
	<a href="logout.jsp">Logout</a>
        <h3 align="center"><font color="white">Hi, <%=username %> ! </font></h3>
    <%
        }
		else{
			%>
			 <li> <a href = "login.jsp" > Login </a></li>
			<%
		}

       
        %>
		 </div>
		 <u><h1><font color="white">Registered Users</font></h1></u>

					<table align="center">
					<tr>
					<th>No</th>
					<th>UserName</th>
					</tr>
					
            <%
                try {
                   
                    String sql = "select * from users";
                    ResultSet r1= s1.executeQuery("select * from users");
					int counter=0;
                    while (r1.next()) {
						counter++;
            %>
            
                <tr><td><%=counter%></td><td><%=r1.getString("username")%></td></tr>
				
                
           
            <%
                    }
                    conn.close();
                } catch (Exception e) {
					%> <p>Error</p> <%
                    e.printStackTrace();
                }
				
            %>
        </table>
</body>
</html>
        