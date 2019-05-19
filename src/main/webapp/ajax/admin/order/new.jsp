<%@page import="com.marayaglobal.order.Order"%>
<%@page import="com.marayaglobal.dao.OrderDBHelper"%>
<%@page import="com.marayaglobal.order.OrderView"%>
<%@page import="java.util.List"%>
<%@page import="com.marayaglobal.dao.AdminDBHelper"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
span {
	font-weight: bold;
}
</style>
</head>
<body>
	<%
		String name = AdminDBHelper.adminName(session.getId());
		if (name == null)
			response.sendRedirect("signup");

		List<Order> orders = OrderDBHelper.getOrderByStatus("New");
		request.setAttribute("orders", orders);
	%>

<head>
<title>All Product</title>

</head>
<body>
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Name</th>
				<th scope="col">Product</th>
				<th scope="col">Shipping To</th>
				<th scope="col">Unit/Price</th>
				<th scope="col">Quantity</th>
				<th scope="col">Total</th>
				<th scope="col">Time</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="u" items="${orders}">
				<tr>
					<td scope="row">${u.getCustomerName()}</td>
					<td style="width: 300px"><a href=""><span>Product</span> ${u.getProductTitle()}</a><br>
					 <span>Brand: </span>${u.getProductBrand()}<br>
						<span>Model: </span>${u.getProductModel()}<br></td>
					<td>
					<span>Phone No: </span>${u.getShippingPhone()}<br>
					<span>Address: </span>${u.getShippingArea()}<br>
					<span>City: </span>${u.getShippingCity()} - ${u.getShippingPostCode()}<br>
					</td>
					<td>${u.getQuantity()}</td>
					<td>${u.getPrice()}</td>
					<td>${u.getPrice()* u.getQuantity()}</td>
					<td>${u.getTimestamp()}</td>

				</tr>


			</c:forEach>



		</tbody>
	</table>
</body>
</html>