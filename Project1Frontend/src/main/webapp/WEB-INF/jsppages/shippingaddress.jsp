<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
        src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
        <link rel="stylesheet" href="<c:url value='/resources/css/registration.css'></c:url>">
<title>Insert title here</title>
<script type="text/javascript">

$(document).ready(function(){
	$('#form').validate({
		rules:{"apartmentnumber":{required:true},
		      "streetname":{required:true},
		      
		      "state":{required:true},
		      "city":{required:true},
		      "country":{required:true},
		      "zipcode":{required:true,number:true},
		      }
			   
		
})
})

 
 
</script>

</head>
<body>
<div class="container">
<c:url value="/cart/createorder" var="url" ></c:url>
<form:form modelAttribute="shippingaddress" action="${url }" id="form" >

<form:label path="apartmentnumber">Enter Apartmentnumber</form:label>
<form:input path="apartmentnumber" id="apartmentnumber" />

<form:label path="streetname" >Enter streetname</form:label>
<form:input path="streetname" id="streetname" />

<form:label path="city" >Enter City</form:label>
<form:input path="city" id="city" />

<form:label path="state" >Enter state</form:label>
<form:input path="state" id="state" />

<form:label path="country" >Enter country</form:label>
<form:input path="country" id="country" />

<form:label path="zipcode" >Enter zipcode </form:label>
<form:input path="zipcode" id="zipcode" />
<br>
<button type="submit" class="registerbtn">Next</button>

</form:form>
</div>
</body>
</html>