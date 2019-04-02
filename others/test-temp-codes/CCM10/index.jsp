<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="icon" href="cool-backgrounds-41.jpg" type="image/jpg" sizes="16x16">
<link rel="stylesheet" href="styles2.css" />
<link rel="stylesheet" href="styles.css" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>
Toy App
</title>
</head>
<body class="main">


 <div class="toptab">
  <a class="active" href = "index.jsp" > Home </a>
<a href = "app.jsp" > Apps </a>
<a href = "reg.jsp" > Register </a>
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
<a href = "login.jsp" > Login </a>
			<%
		}
 
       
        %>

  
</div> 



<table id="table2" align="center">
  
  <tr>
      <td> <button class="btnn" title="To View all the applications" onClick="func1()"><img src="img/apps.png" width="100px" height="100px"></i>Apps</button>
 <script type="text/javascript" language="JavaScript">
                  function func1()
            {

                window.location = 'app.jsp'

            }
             </script></td>
    <td ><button class="btnn" title="To View Your peanut bank account" onClick="func2()"><img src="img/peanutaccount.png" width="100px" height="100px">Peanut Account</button>
 <script type="text/javascript" language="JavaScript">
                  function func2()
            {

                window.location = 'app.jsp'

            }
             </script>
            </td>
			
			
			</tr>
			<tr>
			</td>
    <td ><button class="btnn" title="To View all the transactions" onClick="func3()"><img src="img/transactions.png" width="100px" height="100px">Transactions</button>
 <script type="text/javascript" language="JavaScript">
                  function func3()
            {

                window.location = 'app.jsp'

            }
             </script>
            </td>
			</td>
    <td ><button class="btnn" title="To monitor your app usage" onClick="func3()"><img src="img/usage.png" width="100px" height="100px">App Usage</button>
 <script type="text/javascript" language="JavaScript">
                  function func3()
            {

                window.location = 'app.jsp'

            }
             </script>
            </td>
			</tr>
			
			
			
</table>



</body>
</html>