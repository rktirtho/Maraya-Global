<%@page import="com.marayaglobal.dao.AdminDBHelper"%>
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
AdminDBHelper.logout(session.getId());
response.sendRedirect("admin-login");
%>

</body>
</html>