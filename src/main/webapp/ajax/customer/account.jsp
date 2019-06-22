<%@page import="com.marayaglobal.dao.OrderDBHelper"%>
<%@page import="com.marayaglobal.order.OrderView"%>
<%@page import="java.util.List"%>
<%@page import="com.marayaglobal.dao.AddressDBHelper"%>
<%@page import="com.marayaglobal.beans.user.Address"%>
<%@page import="com.marayaglobal.dao.CustomerDBHelper"%>
<%@page import="com.marayaglobal.beans.user.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<%
	Customer currentUser = (Customer) CustomerDBHelper.getBySession(session.getId());

	if (currentUser.getName() == null) {
		response.sendRedirect(request.getContextPath());
	}

	Address address = AddressDBHelper.getByUserId(currentUser.getId());
	Address lastShip = AddressDBHelper.getLastBilling(currentUser.getId());

	List<OrderView> orders = OrderDBHelper.getOrderByCustomerId(currentUser.getId());
	request.setAttribute("user", currentUser);
	request.setAttribute("a", address);
	request.setAttribute("ls", lastShip);
	request.setAttribute("recentOrder", orders);
%>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	

</body>
</html>