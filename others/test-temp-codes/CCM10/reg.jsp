<html>
<meta charset="UTF-8">
<title>TOY APP</title>
</head>
<body>

 <link rel="stylesheet" href="styles2.css" />
<link rel="stylesheet" href="styles.css" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    </head>
<body class="main">


<div class="toptab">
<a href = "index.jsp" > Home </a>
<a href = "app.jsp" > Apps </a>
<a class="active" href = "reg.jsp" > Register </a>
<a href = "viewusers.jsp" > View All Registered Users </a>
 
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
<u><h1><font color="white">Register Users</font></h1></u>
<form action="regcheck2.jsp" method = "post" id="loginform">


<div class="form-group">
  
    <label for="exampleInputEmail1"><font size="5" color="white">Username</font> </label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="username" placeholder="Enter Username">
    
  </div>
<input type="submit" class="btn btn-primary" value ="submit">
</form>

</body>
</html>
