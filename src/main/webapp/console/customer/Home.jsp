<%-- 
    Document   : Home
    Created on : May 9, 2019, 2:37:21 PM
    Author     : DELL
--%>

<%@page import="com.marayaglobal.dao.OrderDBHelper"%>
<%@page import="com.marayaglobal.order.OrderView"%>
<%@page import="java.util.List"%>
<%@page import="com.marayaglobal.dao.AddressDBHelper"%>
<%@page import="com.marayaglobal.beans.user.Address"%>
<%@page import="com.marayaglobal.dao.CustomerDBHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

	//Customer currentUser = (Customer) CustomerDBHelper.getBySession(session.getId());
	Customer currentUser = (Customer) session.getAttribute("currentUser");
	request.setAttribute("user", currentUser);
	if (currentUser == null) {
		response.sendRedirect(request.getContextPath());
	}
	
	
	String userAgent = request.getHeader("user-agent");
	if(userAgent.indexOf("Mobile") != -1){
		ServletContext context = getServletContext();
		RequestDispatcher dispatcher = context.getRequestDispatcher("/mobile/customer.jsp");
		dispatcher.forward(request, response);
	}

	
	
	Address address = AddressDBHelper.getByUserId(currentUser.getId());
	Address lastShip = AddressDBHelper.getLastBilling(currentUser.getId());

	List<OrderView> orders = OrderDBHelper.getOrderByCustomerId(currentUser.getId());
	request.setAttribute("user", currentUser);
	request.setAttribute("a", address);
	request.setAttribute("ls", lastShip);
	request.setAttribute("recentOrder", orders);
%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/vendor/bootstrap_1.css">
<link rel="stylesheet" type="text/css"
	href="css/vendor/fontawesome-all.min.css">

<link rel="stylesheet" type="text/css" href="css/header/1.css">
<link rel="stylesheet" type="text/css" href="css/header/2.css">
<link rel="stylesheet" type="text/css" href="css/header/3.css">
<link rel="stylesheet" type="text/css" href="css/header/4.css">
<link rel="stylesheet" type="text/css" href="css/header/5.css">
<link rel="stylesheet" type="text/css" href="css/header/7.css">
<link rel="stylesheet" type="text/css" href="css/header/9.css">
<link rel="stylesheet" type="text/css" href="css/header/8.css">
<link rel="stylesheet" type="text/css" href="css/header/13.css">
<link rel="stylesheet" type="text/css" href="css/header/14.css">
<style>
ul li {
	font-size: 1.2rem;
}

ul li a {
	display: block;
	padding: 1rem 3rem
}

div {
	font-size: 1rem
}
</style>
<title>Maraya Global | Maraya Global | <%= currentUser.getName() %> - profile</title>
</head>
<body>
	<%@include file="../../static-page/nav-bar.jsp"%>


	<div class="container">
		<nav aria-label="breadcrumb" class="py-5">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">Home</a></li>
				<li class="breadcrumb-item"><a href="#">Library</a></li>
				<li class="breadcrumb-item active" aria-current="page">Data</li>
			</ol>
		</nav>
		<ul class="nav nav-tabs">
			<li class="nav-item"><a class="nav-link active" href="profile"><i
					class="far fa-user"> </i> Account</a></li>
			<li class="nav-item"><a class="nav-link" href="my-orders"><i
					class="fas fa-truck-moving"></i> Orders</a></li>
			<li class="nav-item"><a class="nav-link" href="my-cart"><i
					class="fas fa-cart-plus"></i> Cart</a></li>

			<li class="nav-item"><a class="nav-link" href="my-coupons"><i
					class="far fa-credit-card"></i> Coupons</a></li>
			<li class="nav-item"><a class="nav-link" href="my-offers"><i
					class="fas fa-bullhorn"></i> Offers</a></li>
		</ul>

		<!-- ===================================Tab content============================================== -->

		<div class="tab-content" id="myTabContent">
			<!-- =================================Tab content >> My order================================ -->
			<div class="tab-pane fade show active" id="account" role="tabpanel"
				aria-labelledby="home-tab">
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
				</div>

		</div>
	</div>


	<script src="js/vendor/jquery-3.3.1.js"></script>
	<script src="js/vendor/bootstrap.bundle.js"></script>
	<script src="js/vendor/bootstrap.js"></script>
	
</body>
</html>
