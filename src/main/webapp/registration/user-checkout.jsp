<%@page import="com.marayaglobal.beans.user.Customer"%>
<%@page import="com.marayaglobal.dao.CustomerDBHelper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
String userName= request.getParameter("userName");
String pass=request.getParameter("password");
%>
</head>
<body>
<%= request.getParameter("userName") %>
<% Customer customer= CustomerDBHelper.login(request.getParameter("userName")
		, request.getParameter("password")
		, session.getId()) ;
if(customer.getName() != null){
	session.setAttribute("currentUser", customer);
	response.sendRedirect(request.getContextPath());
}else
	response.sendRedirect("login?err=failed");
%>



</body>
</html>