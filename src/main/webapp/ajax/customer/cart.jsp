<%@page import="com.marayaglobal.order.CartView"%>
<%@page import="com.marayaglobal.dao.CartDBHelper"%>
<%@page import="java.util.List"%>
<%@page import="com.marayaglobal.dao.OrderDBHelper"%>
<%@page import="com.marayaglobal.order.Order"%>
<%@page import="com.marayaglobal.beans.user.Customer"%>
<%@page import="com.marayaglobal.dao.CustomerDBHelper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%
	Customer currentUser = (Customer) CustomerDBHelper.getBySession(session.getId());

	if (currentUser.getName() == null) {
		response.sendRedirect("signup");
	}

	List<CartView> cart = CartDBHelper.getCartByCustomerId(currentUser.getId());
	request.setAttribute("user", currentUser);
	request.setAttribute("carts", cart);
%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	

</body>
</html>