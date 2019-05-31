<%@page import="com.marayaglobal.dao.VendorDBHelper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>checking account...</title>
</head>
<body>
<%
String password  = request.getParameter("password");
String email = request.getParameter("email");
String sessionId= session.getId();
 boolean status = VendorDBHelper.login(email, password, sessionId);
 if(status){
	 response.sendRedirect("vendor-console");
 }

%>
Login failed
<%@include file="vendor-login.jsp" %>
</body>
</html>