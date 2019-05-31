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
	<div class="container-fluid py-4">
		<div class="row">
			<div class="col-lg-4 col-md-12 pb-3 pb-5">
				<div class="card">
					<div class="card-body">
						<h4 class="py-3 font-weight-bold">Personal Profile</h4>
						<p class="card-text" id="name">
							<c:out value="${user.getName()}"></c:out>
						</p>
						<p class="card-text py-2" id="email">
							<c:out value="${user.getEmail()}"></c:out>
						</p>
						<p class="card-text" id="phone-number">
							<c:out value="${user.getPhoneNumber()}"></c:out>
						</p>
						<p class="card-text py-2" id="gender">Male</p>
					</div>
				</div>
			</div>

			<div class="col-lg-4 col-md-12 pb-5">
				<div class="card">
					<div class="card-body">
						<c:choose>
							<c:when test="${empty a}">
								<h4 class="py-3 font-weight-bold">Personal Address</h4>
								<p class="card-text" id="streat">
									<c:out value="${a.getStreetName()}"></c:out>
								</p>
								<p class="card-text py-2" id="area">
									<c:out value="${a.getAreaName()}"></c:out>
								</p>
								<p class="card-text" id="sub-dist">
									<c:out value="${a.getDistrict()}"></c:out>
								</p>
								<p class="card-text py-2" id="dist">
									<c:out value="${a.getPostCode()}"></c:out>
								</p>


							</c:when>
							<c:otherwise>
								<a>Update Address</a>
							</c:otherwise>
						</c:choose>



					</div>
				</div>

			</div>

			<div class="col-lg-4 col-md-12 pb-3 pb-5">
				<div class="card">
					<div class="card-body">
						<h4 class="py-3 font-weight-bold">Last Shipping</h4>
						<p class="card-text">
							Phone:
							<c:out value="${ls.getPhoneNumber()}"></c:out>
						</p>
						<p class="card-text py-2">
							Address:
							<c:out value="${ls.getAreaName()}"></c:out>
						</p>
						<p class="card-text">
							City:
							<c:out value="${ls.getDistrict()}"></c:out>
						</p>
						<p class="card-text py-2">
							Post Code:
							<c:out value="${ls.getPostCode()}"></c:out>
						</p>


					</div>
				</div>

			</div>

			<div class="col-12 my-2 card">
				<h4 class="py-3">Recent Orders</h4>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Order#</th>
							<th scope="col">Placed On</th>
							<th scope="col">Item</th>
							<th scope="col">Quantity</th>
							<th scope="col">Total</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="u" items="${recentOrder}">
							<tr>
								<th scope="row"><c:out value="${u.getId()}"></c:out></th>
								<td><c:out value="${u.getTimestamp()}"></c:out></td>
								<td><c:out value="${u.getTitle()}"></c:out></td>
								<td><c:out value="${u.getQuantity()}"></c:out></td>
								<td><c:out value="${u.getCurrentPrice()}"></c:out></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>

			</div>
		</div>
	</div>

</body>
</html>