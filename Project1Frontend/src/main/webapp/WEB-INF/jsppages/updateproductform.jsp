<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="header.jsp"%>
      <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><div class="container">
<c:url value='/admin/updateproduct' var="url"></c:url>
<form:form modelAttribute="product" action="${url }" method="post"  enctype="multipart/form-data" >
<table>
<tr>
       <td></td>
       <td>
       <form:hidden path="id"></form:hidden> 
       </td>
   </tr>

   <tr>
       <td>Enter Product Name</td>
       <td>
       <form:input path="productname"/>
       <form:errors path="productname" cssStyle="color:red"></form:errors>
       </td>
   </tr>
   <tr>
       <td>Enter Product Description</td>
       <td>
       <form:textarea path="productdesc"/>
        <form:errors path="productdesc" cssStyle="color:red"></form:errors>
       </td>
   </tr>    
   <tr>
       <td>Enter Product Price</td>
       <td>
       <form:input path="price"/>
        <form:errors path="price" cssStyle="color:red"></form:errors>
       </td>
   </tr>    
   <tr>
       <td>Enter Product Quantity</td>
       <td>
       <form:input path="quantity"/>
        <form:errors path="quantity" cssStyle="color:red"></form:errors>
       </td>
   </tr>  
    <tr>
   <td>Select By Category</td>
   <td><form:select path="category.id">
   <c:forEach items="${categories }" var="c">
   <form:option value="${c.id }">${c.categoryname }</form:option>
   </c:forEach>
  
  
  
   
   </form:select>
   </td>
   </tr> 
   <tr>
   <td>Upload an Image</td>
   <td><form:input type="file" path="image"></form:input></td>
   </tr>
   <tr><td>
   <input type="Submit" value="Edit Product">
   </td></tr>      







</table>








</form:form>





</div>

</body>
</html>