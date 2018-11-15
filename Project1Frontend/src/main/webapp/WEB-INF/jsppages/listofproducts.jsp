<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %> 
 <%@ include file="header.jsp"%>
 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 

<script src="https://ajax.googleeapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
	var searchCondition='${searchCondition}'
	$('.table').DataTable({
		"lengthMenu":[[5,10,-1],[5,10,"All"]],
		"oSearch":{
			"sSearch":searchCondition
		}
		
	})
	
})



</script>


</head>
<body>
<div class="container">
		<table class="table table-striped" border="1">
			<thead>
				<tr>
					<th>Id</th>
					<th>Productname</th>
					<th>Price</th>
					<th>Categoryname</th>
					<th>Action</th>
				</tr>
			</thead>

<tbody>
<c:forEach items="${products}" var="p">
<tr>
 <td><img src="<c:url value='/resources/images/${p.id }.png'></c:url>"height="30px" width="40px"></td> 

<td>${p.productname }</td>
<td>${p.price }</td>
<td>${p.category.categoryname }</td>
<td><a href="<c:url value='/all/getproduct?id=${p.id }'></c:url>"><span class="glyphicon glyphicon-info-sign"></span></a>
           <security:authorize access="hasRole('ROLE_ADMIN')">
					<a href="<c:url value='/admin/deleteproduct?id=${p.id }'></c:url>"><span class="glyphicon glyphicon-trash"></span></a>
					<a href="<c:url value='/admin/getupdateproductform?id=${p.id }'></c:url>"><span class="glyphicon glyphicon-pencil"></span></a>
					</security:authorize>
					</td>
</tr>




</c:forEach>
</tbody>
</table>


</div>




</body>
</html>