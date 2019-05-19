<%@page import="com.marayaglobal.dao.AdminDBHelper"%>
<%@page import="com.marayaglobal.dao.AddressDBHelper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String password  = request.getParameter("password");
String email = request.getParameter("email");
String sessionId= session.getId();

boolean isLogin = AdminDBHelper.login(email, password, sessionId);

if(isLogin)
	response.sendRedirect("admin-console");

%>
<a>Login Failed</a>
</body>
</html>