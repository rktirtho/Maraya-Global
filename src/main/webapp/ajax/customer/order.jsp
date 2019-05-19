<%@page import="com.marayaglobal.dao.OrderDBHelper"%>
<%@page import="com.marayaglobal.dao.CartDBHelper"%>
<%@page import="com.marayaglobal.order.OrderView"%>
<%@page import="java.util.List"%>
<%@page import="com.marayaglobal.dao.CustomerDBHelper"%>
<%@page import="com.marayaglobal.beans.user.Customer"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<%
	Customer currentUser = (Customer) CustomerDBHelper.getBySession(session.getId());

	if (currentUser.getName() == null) {
		//response.sendRedirect("signup");
	}

	List<OrderView> orders = OrderDBHelper.getOrderByCustomerId(currentUser.getId());
	request.setAttribute("user", currentUser);
	request.setAttribute("orders", orders);
%>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">Order#</th>
				<th scope="col">Placed On</th>
				<th scope="col">Status</th>
				<th scope="col">Item</th>
				<th scope="col">Quantity</th>
				<th scope="col">Total</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="u" items="${orders}">
			<tr>
				<th scope="row"><c:out value="${u.getId()}"></c:out> </th>
				<td><c:out value="${u.getTimestamp()}"></c:out> </td>
				<td><c:out value="${u.getStatus()}"></c:out> </td>
				<td class="col-4" ><a target="_blank" href="product-view.jsp?id=${u.getProductId()}"><c:out value="${u.getTitle() }"></c:out> </a></td>
				<td><c:out value="${u.getQuantity() }"></c:out> </td>
				<td><c:out value="${u.getCurrentPrice() }"></c:out> </td>
			</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>