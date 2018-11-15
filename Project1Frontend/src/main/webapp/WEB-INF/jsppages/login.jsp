<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="<c:url value='/resources/css/login.css'></c:url>">
<title>Insert title here</title>
</head>
<body>




<div class="container">
<h2>Login Form</h2><br><br>

<form action="<c:url value='/j_spring_security_check'></c:url>" method="post">
  

 
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="j_username" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="j_password" required>
        
     <button type="submit" class="registerbtn">Sign In</button>

    


  
</form>
 </div>











</body>
</html>  