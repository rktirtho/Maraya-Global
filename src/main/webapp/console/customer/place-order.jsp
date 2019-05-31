<%@page import="com.marayaglobal.dao.OrderDBHelper"%>
<%@page import="com.marayaglobal.order.CartView"%>
<%@page import="java.util.List"%>
<%@page import="com.marayaglobal.dao.CartDBHelper"%>
<%@page import="com.marayaglobal.util.Basic"%>
<%@page import="com.marayaglobal.dao.CustomerDBHelper"%>
<%@page import="com.marayaglobal.beans.user.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="shippingAddress" class="com.marayaglobal.beans.user.ShippingAddress"/>
    <jsp:setProperty property="*" name="shippingAddress"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Customer currentUser = (Customer) CustomerDBHelper.getBySession(session.getId());

if (currentUser.getName() == null) {
	response.sendRedirect(Basic.DOMAIN_NAME);
}

List<CartView> cart = CartDBHelper.getCartByCustomerId(currentUser.getId());

int status = OrderDBHelper.orderPlacer(cart, shippingAddress);

out.print(status);
%>

</body>
</html>