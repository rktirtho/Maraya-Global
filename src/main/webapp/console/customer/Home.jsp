<%-- 
    Document   : Home
    Created on : May 9, 2019, 2:37:21 PM
    Author     : DELL
--%>

<%@page import="com.marayaglobal.dao.CustomerDBHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//Customer currentUser = (Customer) CustomerDBHelper.getBySession(session.getId());
	Customer currentUser = (Customer) session.getAttribute("currentUser");
	request.setAttribute("user", currentUser);
	if (currentUser == null) {
		response.sendRedirect("signup");
	}
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
<title>Maraya Global | Contact</title>
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
		<ul class="nav nav-tabs" id="myTab" role="tablist">
			<li class="nav-item"><a class="nav-link active" id="home-tab"
				data-toggle="tab" href="#account" role="tab" aria-controls="account"
				aria-selected="true"><i class="far fa-user"> </i> Account</a></li>
			<li class="nav-item"><a class="nav-link" id="order-tab"
				data-toggle="tab" href="#orders" role="tab" aria-controls="orders"
				aria-selected="false"><i class="fas fa-truck-moving"></i> Orders</a>
			</li>
			<li class="nav-item"><a class="nav-link" id="cart-tab"
				data-toggle="tab" href="#cart" role="tab" aria-controls="cart"
				aria-selected="false"><i class="fas fa-cart-plus"></i> Cart</a></li>

			<li class="nav-item"><a class="nav-link" id="contact-tab"
				data-toggle="tab" href="#coupons" role="tab" aria-controls="coupons"
				aria-selected="false"><i class="far fa-credit-card"></i> Coupons</a>
			</li>
			<li class="nav-item"><a class="nav-link" id="contact-tab"
				data-toggle="tab" href="#offers" role="tab" aria-controls="offers"
				aria-selected="false"><i class="fas fa-bullhorn"></i> Offers</a></li>
		</ul>

		<!-- ===================================Tab content============================================== -->

		<div class="tab-content" id="myTabContent">
			<!-- =================================Tab content >> My order================================ -->
			<div class="tab-pane fade show active" id="account" role="tabpanel"
				aria-labelledby="home-tab"></div>



			<!-- =================================Tab content >> My order================================ -->
			<div class="tab-pane fade" id="orders" role="tabpanel"
				aria-labelledby="profile-tab"></div>

			<!-- ========================================Tab Content >> Cart ========================================-->
			<div class="tab-pane fade" id="cart" role="tabpanel"
				aria-labelledby="contact-tab"></div>
			<div class="tab-pane fade" id="coupons" role="tabpanel"
				aria-labelledby="contact-tab">Coupons</div>
			<div class="tab-pane fade" id="offers" role="tabpanel"
				aria-labelledby="contact-tab">offers</div>
		</div>
	</div>


	<script src="js/vendor/jquery-3.3.1.js"></script>
	<script src="js/vendor/bootstrap.bundle.js"></script>
	<script src="js/vendor/bootstrap.js"></script>
	<script src="js/service-request/customer-home/customer-home.js"
		type="text/javascript"></script>
</body>
</html>
