<%@page import="com.marayaglobal.dao.CustomerDBHelper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    <jsp:useBean id="user" class="com.marayaglobal.beans.user.Customer"></jsp:useBean> 
    <jsp:setProperty property="*" name="user"></jsp:setProperty>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h4>
<%
int status = CustomerDBHelper.create(user);
out.print(status);
%>

</h4>

</body>
</html>