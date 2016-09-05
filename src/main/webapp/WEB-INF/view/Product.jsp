<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
<style>
table {
font-family:arial, sans-serif;
border-collapse:collapse;
width:100%;
}
td,tr,th {
border:2px solid #dddddd;
text-align: center;
padding: 8px;
}
</style>
</head>

<body background="C:\Users\shravya\Desktop\images.jpg">">

	<c:url var="addaction" value="editproduct"></c:url>
	<form:form action="${addaction}" modelAttribute="product1">
ID:<form:input path="id" /><br>
Name:<form:input path="name" /><br>
Description:<form:input path="description" /><br>
Price:<form:input path="price" /><br>
<input type="submit" value="add/edit">
		</form:form>
		
		<%--<c:url var="delaction" value="delproduct"></c:url>
	<form:form action="${delaction}" commandName="product">
		ID:<form:input path="id"/>
		<input type="submit" value="delete">
</form:form>--%>
		
		<%-- <c:url var="editaction" value="editproduct"></c:url>
	<form:form action="${editaction}" commandName="product">
<input type="submit" value="edit">
		</form:form> --%>
		
		<div align="center">
		<table style="width:88%">
		<caption><h3>Product</h3></caption>
		<thead>
		<tr>
		<th>Product Id</th>
		<th>Product Name</th>
		<th>Product Description</th>
		<th>Product Price</th>
		<th>Edit</th>
		<th>Delete</th>
		</tr>
		</thead>
		<tbody>	
<c:forEach items="${productList }" var="product">
<tr>
<td><c:out value="${product.id }"></c:out>
<td><c:out value="${product.name }"></c:out>
<td><c:out value="${product.description }"></c:out>
<td><c:out value="${product.price }"></c:out>
<td><a href="addeditproduct/${product.id}"><img alt="Edit" src="C:\Users\shravya\Desktop\edits.jpg"></a></a>
<td><a href="adddeleteproduct/${product.id}"><img alt="Delete" src="C:\Users\shravya\Desktop\deletes.jpg"></a>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>