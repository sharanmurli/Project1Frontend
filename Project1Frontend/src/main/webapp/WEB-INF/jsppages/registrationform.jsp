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
		rules:{firstname:{required:true},
			   lastname:{required:true},
			   phonenumber:{required:true,number:true,minlength:10,maxlength:10},
			   "user.email":{required:true,email:true},
			   "user.password":{required:true,minlength:5,maxlength:10},
			   "billingaddress.apartmentnumber":{required:true},
			   "billingaddress.streetname":{required:true},
			   "billingaddress.state":{required:true},
			   "billingaddress.city":{required:true},
			   "billingaddress.country":{required:true},
			   "billingaddress.zipcode":{required:true,number:true,maxlength:6,minlength:6}
			   
		},
		messages:{
			firstname:{required:"Firstname is mandatory"},
			phonenumber:{required:"Phonenumber is required"},
			"user.email":{required:"Email is Required",email:"Please enter valid email address"}
			
			
		}
			})
		})
			
			
		







</script>
</head>
<body>
<div class="container">
<c:url value="/all/registercustomer" var="url"></c:url>
<form:form modelAttribute="customer" action="${url }" id="form" >
<!--<form:label path="customerId">Customer ID</form:label>
<form:input path="customerId" id="customerId"/>-->
<form:hidden path="customerId"/>
<center><h2>Personal Details </h2></center>
<br>

<form:label path="firstname" >Enter Firstname</form:label>
<form:input path="firstname" id="firstname" placeholder="Enter your first name"/>


<form:label path="lastname" >Enter Lastname</form:label>
<form:input path="lastname" id="lastname" placeholder="Enter your last name"/>

<form:label path="phonenumber">Enter Phonenumber</form:label>
<form:input path="phonenumber" id="phonenumber"/>


<hr>
<center><h2>Login Credentials</h2></center>
<br>

<form:label path="user.email">Enter Email</form:label>
<form:input path="user.email" id="user.email"/>
<span style="color:red">${errorMessage }</span><br>
<form:label path="user.password">Enter password</form:label>
<form:input path="user.password" id="user.password" type="password"/>
<form:hidden path="user.enabled" value="true"/>
<form:hidden path="user.authorities.role" value="ROLE_USER"/>

<hr>
<center><h2>Billing Address</h2></center>
<br>

<form:label path="billingaddress.apartmentnumber">Enter Apartmentnumber</form:label>
<form:input path="billingaddress.apartmentnumber" id="billingaddress.apartmentnumber"/>

<form:label path="billingaddress.streetname">Enter streetname</form:label>
<form:input path="billingaddress.streetname" id="billingaddress.streetname"/>

<form:label path="billingaddress.city">Enter City</form:label>
<form:input path="billingaddress.city" id="billingaddress.city"/>

<form:label path="billingaddress.state">Enter state</form:label>
<form:input path="billingaddress.state" id="billingaddress.state"/>

<form:label path="billingaddress.country">Enter country</form:label>
<form:input path="billingaddress.country" id="billingaddress.country"/>

<form:label path="billingaddress.zipcode">Enter zipcode </form:label>
<form:input path="billingaddress.zipcode" id="billingaddress.zipcode"/>

<hr>
<center><h2>Shipping Address</h2></center>
<br>

<h3>
<label><input type="checkbox" onclick="fillShippingAddress(this.form)" id=shippingaddressform></label>Check if Shipping Address is same as Billing Address</h3><br>



<form:label path="shippingaddress.apartmentnumber">Enter Apartmentnumber</form:label>
<form:input path="shippingaddress.apartmentnumber" id="shippingaddress.apartmentnumber"/>

<form:label path="shippingaddress.streetname">Enter streetname</form:label>
<form:input path="shippingaddress.streetname" id="shippingaddress.streetname"/>

<form:label path="shippingaddress.city">Enter City</form:label>
<form:input path="shippingaddress.city" id="shippingaddress.city"/>

<form:label path="shippingaddress.state">Enter state</form:label>
<form:input path="shippingaddress.state" id="shippingaddress.state"/>

<form:label path="shippingaddress.country">Enter country</form:label>
<form:input path="shippingaddress.country" id="shippingaddress.country"/>

<form:label path="shippingaddress.zipcode">Enter zipcode </form:label>
<form:input path="shippingaddress.zipcode" id="shippingaddress.zipcode"/>
<br>

<!--<input type="submit" value="Register" style="background-color:yellow;">   --> 

 <button type="submit" class="registerbtn">Register</button>












</form:form>
</div>

</body>
</html>