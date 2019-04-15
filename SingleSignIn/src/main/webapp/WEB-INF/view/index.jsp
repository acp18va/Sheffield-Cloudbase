<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />

<link rel="stylesheet" href="resources/css/styles2.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Sheffield Cloudbase Platform</title>
</head>

<body >

 <div class="toptab">
  	<a class="active" href="index">DashBoard</a>
  	<a href="reg_form">Registration</a>
  	<a href="index_login">Login</a>
</div>
		
<table id="table2" align="center">
  
  <tr>
    <td> <button class="btnn" title="This app provides details about the status of the books at the library and view readers reviews" onClick="func1()"><img src="resources/img/libraryapp.png" width="100px" height="100px">Library App</button>
 	<script type="text/javascript" language="JavaScript">
                  function func1()
            {

                window.location = '#'

            }
    </script></td>
    
    <td ><button class="btnn" title="This application helps students to get their doubts solved. Its the application where you can share and learn." onClick="func2()"><img src="resources/img/studentforum.png" width="100px" height="100px">Student Forum/Ask</button>
 	<script type="text/javascript" language="JavaScript">
                  function func2()
            {

                window.location = '#'

            }
    </script>
    </td>			
  </tr>
			
			
			
  <tr>
	<td ><button class="btnn" title="" onClick="func3()"><img src="resources/img/defaultapp.png" width="100px" height="100px">App 3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    </button>
 	<script type="text/javascript" language="JavaScript">
                  function func3()
            {

                window.location = '#'

            }
    </script></td>
    
			
    <td ><button class="btnn" title="" onClick="func3()"><img src="resources/img/defaultapp.png" width="100px" height="100px">App 4 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     </button>
 	<script type="text/javascript" language="JavaScript">
                  function func3()
            {

                window.location = '#'

            }
             </script></td>
  </tr>			
			
</table>

</body>
</html>