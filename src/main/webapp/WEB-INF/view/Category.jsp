<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
<style>
table {
font-family: arial, sans-serif;
border-collapse: collapse;
width:100%;
}
td,tr,th {
border:2px solid #dddddd;
text-align: center;
padding: 8px;
}
</style>
</head>

<body background="C:\Users\shravya\Desktop\shravya.jpg">
	<c:url var="addAction" value="editcategory"></c:url>
	<form:form action="${addAction}" commandName="category1">
Id:<form:input path="id" /><br>
Name:<form:input path="name" /><br>
Description:<form:input path="description" /><br>
		<input type="submit" value="add/edit" />
	</form:form>
	
    <%--<c:url var="delaction" value="delcategory"></c:url>
	<form:form action="${delaction}" commandName="category">
	Id:<form:input path="id" /><br>
	<input type="submit" value="delete">
	</form:form>
	
    <c:url var="addAction" value="editcategory"></c:url>
	<form:form action="${addAction}" commandName="category">
Id:<form:input path="id" /><br>
Name:<form:input path="name" /><br>
Description:<form:input path="description" /><br>
		<input type="submit" value="edit" />
	</form:form>--%>
	
	<div align="center">
		<table style="width:88%">
		<caption><h3>Category</h3></caption>
		<thead>
		<tr>
		<th>Category Id</th>
		<th>Category Name</th>
		<th>Category Description</th>
		<th>Edit</th>
		<th>Delete</th>
		</tr>
		</thead>
		<tbody>	
<c:forEach items="${categoryList }" var="category">
<tr>
<td><c:out value="${category.id }"></c:out>
<td><c:out value="${category.name }"></c:out>
<td><c:out value="${category.description }"></c:out>
<td><a href="addeditcategory/${category.id}"><img alt="Edit" src="C:\Users\shravya\Desktop\edits.jpg"></a>
<td><a href="adddeletecategory/${category.id}"><img alt="Delete" src="C:\Users\shravya\Desktop\deletes.jpg"></a>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>
	
	
	