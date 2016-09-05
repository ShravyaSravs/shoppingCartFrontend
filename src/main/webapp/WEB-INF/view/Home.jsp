<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix= "c" uri ="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri = "http://www.springframework.org/tags/form" prefix ="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Home Page</title>
</head>
<body background="C:\Users\shravya\Desktop\3D Nature Wallpapers1.jpg">
<center><h2> Welcome to Shopping cart</h2></center>
${message}<br>

<a href="Login"> Login Here</a>
<a href="Registration"> Register Here</a>
<a href="Category">Category</a>
<a href="Product">Product</a>
<a href="Supplier">Supplier</a>
<hr color="blue">


<c:if test="${UserClickedRegisterHere} ==true">
<jsp:include page= "Registration.jsp"></jsp:include>
</c:if>

<%--<c:if test="${UserClickedLoginHere} ==true">
<jsp:include page= "Login.jsp"></jsp:include>
</c:if>--%>

<c:choose>
<c:when test="${UserClickedsupplier}">
<c:import url="/WEB-INF/view/Supplier.jsp"></c:import>
</c:when>
</c:choose>

<c:choose>
<c:when test="${UserClickedcategory}">
<c:import url="/WEB-INF/view/Category.jsp"></c:import>
</c:when>
</c:choose>

<c:choose>
<c:when test="${UserClickedproduct}">
<c:import url="/WEB-INF/view/Product.jsp"></c:import>
</c:when>
</c:choose>
</body>
</html>