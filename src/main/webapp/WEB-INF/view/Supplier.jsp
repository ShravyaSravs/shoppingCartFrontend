<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier</title>
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
<body>
	<c:url var="addaction" value="editsupplier"></c:url>
	<form:form action="${addaction}" modelAttribute="supplier1">
ID:<form:input path="id" /><br>
Name:<form:input path="name" /><br>
Address:<form:input path="address" /><br>
<input type="submit" value="add/edit">
		</form:form>
		
<%--<c:url var="delaction" value="delsupplier"></c:url>
	<form:form action="${delaction}" commandName="supplier">
		ID:<form:input path="id"/>
		<input type="submit" value="delete">
</form:form>--%>
		
		<%-- <c:url var="editaction" value="editsupplier"></c:url>
	<form:form action="${editaction}" commandName="supplier">
<input type="submit" value="edit">
		</form:form> --%>
		
		<div align="center">
		<table style="width:88%">
		<caption><h3>Supplier</h3></caption>
		<thead>
		<tr>
		<th>Supplier Id</th>
		<th>Supplier Name</th>
		<th>Supplier Address</th>
		<th>Edit</th>
		<th>Delete</th>
		</tr>
		</thead>
		<tbody>	
<c:forEach items="${supplierList }" var="supplier">
<tr>
<td><c:out value="${supplier.id }"></c:out>
<td><c:out value="${supplier.name }"></c:out>
<td><c:out value="${supplier.address }"></c:out>
<td><a href="addeditsupplier/${supplier.id}"><img alt="Edit" src="C:\Users\shravya\Desktop\edits.jpg"></a></a>
<td><a href="adddeletesupplier/${supplier.id}"><img alt="Delete" src="C:\Users\shravya\Desktop\deletes.jpg"></a>
</tr>
</c:forEach>
</tbody>
</html>