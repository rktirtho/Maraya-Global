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
		response.sendRedirect(request.getContextPath());
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
<title>Maraya Global | Maraya Global | <%= currentUser.getName() %> - offers</title>
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
			<li class="nav-item"><a class="nav-link" href="profile"><i
					class="far fa-user"> </i> Account</a></li>
			<li class="nav-item"><a class="nav-link" href="my-orders"><i
					class="fas fa-truck-moving"></i> Orders</a></li>
			<li class="nav-item"><a class="nav-link" href="my-cart"><i
					class="fas fa-cart-plus"></i> Cart</a></li>

			<li class="nav-item"><a class="nav-link" href="my-coupons"><i
					class="far fa-credit-card"></i> Coupons</a></li>
			<li class="nav-item"><a class="nav-link active" href="my-offers"><i
					class="fas fa-bullhorn"></i> Offers</a></li>
		</ul>

		<!-- ===================================Tab content============================================== -->

		<div class="tab-content" id="myTabContent">
			<!-- =================================Tab content >> My order================================ -->
			<div class="tab-pane fade show active" id="account" role="tabpanel"
				aria-labelledby="home-tab">
				<h2>Currently you have not any offer</h2>
				</div>

		</div>
	</div>


	<script src="js/vendor/jquery-3.3.1.js"></script>
	<script src="js/vendor/bootstrap.bundle.js"></script>
	<script src="js/vendor/bootstrap.js"></script>
	
</body>
</html>
