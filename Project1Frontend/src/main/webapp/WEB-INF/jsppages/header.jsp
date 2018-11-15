<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %> 

<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
  <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">

  
 <link rel="stylesheet" href="<c:url value='/resources/css/navbar.css'></c:url>">
</head>
<body>
<div class="container">
<nav class="navbar navbar-default" id="navbar-bg">
<div class="navbar-header">
				<a href="" class="navbar-brand"><img src="<c:url value='/resources/images/r.png'></c:url>" height="30px" width="90px"></a>
				<button type="button" class="navbar-toggle collapsed" 
   data-toggle="collapse" data-target="#navbardemo" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
</div>
<div class="collapse navbar-collapse" id="navbardemo">
<ul class="nav navbar-nav">
<li><a href="<c:url value="/home"></c:url>"><span class="glyphicon glyphicon-home"></span>Home</a></li>
<li><a href="#">AboutUs</a></li>

<li><a href="<c:url value="/all/getallproducts"></c:url>">Browse all Products</a></li>
<security:authorize access="hasRole('ROLE_ADMIN')">
<li><a href="<c:url value="/admin/getproductform"></c:url>"><span class="glyphicon glyphicon-plus"></span>Add Product</a></li>
</security:authorize>
<li class="dropdown"><a class=dropdown-toggle data-toggle="dropdown" href="#">
					Select By Category<span class="caret"></span></a>
					
				<ul class="dropdown-menu">
				<c:forEach items="${categories }" var="c">
				<li><a href="<c:url value="/all/searchByCategory?searchCondition=${c.categoryname }"></c:url>">${c.categoryname }</a>
				</c:forEach>
				</ul>
</li>
<security:authorize access="hasRole('ROLE_USER')">
<li><a href="<c:url value='/cart/getcart'></c:url>"><span class="glyphicon glyphicon-shopping-cart"></span>(${cartSize})</a></li>
</security:authorize>
<c:if test="${pageContext.request.userPrincipal.name==nul }">
<li><a href="<c:url value="/all/getregistrationform"></c:url>">Sign Up<span class="glyphicon glyphicon-registration-mark"></span></a></li>
	
<li><a href="<c:url value="/login"></c:url>">Sign In <span class="glyphicon glyphicon-log-in"></span></a></li>
</c:if>
<c:if test="${pageContext.request.userPrincipal.name!=null }">
<li><a href="#">Welcome ${pageContext.request.userPrincipal.name }</a></li>
<li><a href="<c:url value="/j_spring_security_logout"></c:url>">Sign Out <span class="glyphicon glyphicon-log-out"></span></a></li>	
</c:if>
</ul>
</div>
</nav>

</div>
</body>
</html>