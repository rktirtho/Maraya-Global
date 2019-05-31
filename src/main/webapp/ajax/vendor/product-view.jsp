<%@page import="com.marayaglobal.product.Product"%>
<%@page import="com.marayaglobal.dao.ProductDBHelper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UFT-8">
<%
String idS = request.getParameter("id"); 
if(idS == null)
	response.sendRedirect(request.getContextPath());
int id = Integer.parseInt(idS);
Product product = ProductDBHelper.getById(id);
%>
<title>Insert title here</title>
</head>
<body>

</body>
</html>