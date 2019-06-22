<%-- 
    Document   : Home
    Created on : May 9, 2019, 2:37:21 PM
    Author     : DELL
--%>

<%@page import="com.marayaglobal.order.CartView"%>
<%@page import="com.marayaglobal.dao.CartDBHelper"%>
<%@page import="java.util.List"%>
<%@page import="com.marayaglobal.dao.OrderDBHelper"%>
<%@page import="com.marayaglobal.order.Order"%>
<%@page import="com.marayaglobal.beans.user.Customer"%>
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

	List<CartView> cart = CartDBHelper.getCartByCustomerId(currentUser.getId());
	request.setAttribute("user", currentUser);
	request.setAttribute("carts", cart);
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
<title>Maraya Global | Maraya Global | <%=currentUser.getName()%>
	- cart
</title>
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
			<li class="nav-item"><a class="nav-link " href="profile"><i
					class="far fa-user"> </i> Account</a></li>
			<li class="nav-item"><a class="nav-link" href="my-orders"><i
					class="fas fa-truck-moving"></i> Orders</a></li>
			<li class="nav-item"><a class="nav-link active" href="my-cart"><i
					class="fas fa-cart-plus"></i> Cart</a></li>

			<li class="nav-item"><a class="nav-link" href="my-coupons"><i
					class="far fa-credit-card"></i> Coupons</a></li>
			<li class="nav-item"><a class="nav-link" href="myoffers"><i
					class="fas fa-bullhorn"></i> Offers</a></li>
		</ul>

		<!-- ===================================Tab content============================================== -->

		<div class="tab-content" id="myTabContent">
			<!-- =================================Tab content >> My order================================ -->
			<div class="tab-pane fade show active" id="account" role="tabpanel"
				aria-labelledby="home-tab">
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-12 col-md-12 col-md-offset-1">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>Product</th>
										<th>Quantity</th>
										<th class="text-center">Regular Price</th>
										<th class="text-center">Price</th>
										<th class="text-center">Discount</th>
										<th class="text-center">Total</th>

										<th> </th>
									</tr>
								</thead>
								<tbody>
									<c:set var="total" value=""></c:set>
									<c:set var="shippingCost" value="${50}"></c:set>

									<c:forEach var="u" items="${carts}">

										<c:set var="total"
											value="${u.getCurrentPrice() *u.getQuantity() + total}"></c:set>

										<tr>
											<td class="col-sm-8 col-md-4">
												<div class="media">
													<a class="thumbnail pull-left" href="#"> <img
														class="media-object"
														src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png"
														style="width: 72px; height: 72px;">
													</a>
													<div class="media-body">
														<h4 class="media-heading">
															<a href="#"><c:out value="${u.getTitle() }"></c:out>
															</a>
														</h4>
														<h5 class="media-heading">
															by <a href="#"><c:out value="${u.getBrand() }"></c:out></a>
														</h5>
														<span>Status: </span><span class="text-success"><strong>In
																Stock</strong></span>
													</div>
												</div>
											</td>
											<td class="col-sm-1 col-md-1" style="text-align: center"><input
												type="email" class="form-control" id="exampleInputEmail1"
												value="<c:out value="${u.getQuantity() }"></c:out>"></td>
											<td class="col-sm-1 col-md-1 text-center"><strong><c:out
														value="${u.getRegular_price() }"></c:out></strong></td>
											<td class="col-sm-1 col-md-1 text-center"><strong><c:out
														value="${u.getCurrentPrice() }"></c:out></strong></td>
											<td class="col-sm-1 col-md-1 text-center"><strong><c:out
														value="${u.getDiscount() }"></c:out>%</strong></td>
											<td class="col-sm-1 col-md-1 text-center"><strong><c:out
														value="${u.getCurrentPrice() *u.getQuantity() }"></c:out></strong></td>
											<td class="col-sm-1 col-md-1"><a href="index.jsp"
												class="btn btn-danger"> <span
													class="glyphicon glyphicon-remove"></span>Remove
											</a></td>
										</tr>
									</c:forEach>
									<tr class="cart-item-end">
										<td class="col-sm-8 col-md-4"> </td>
										<td> </td>
										<td> </td>
										<td> </td>
										<td colspan="2"><h5>Subtotal</h5></td>
										<td class="text-right"><h5>
												<strong><c:out value="${total}"></c:out> </strong>
											</h5></td>
									</tr>
									<tr>
										<td> </td>
										<td> </td>
										<td> </td>
										<td> </td>
										<td colspan="2"><h5>Estimated shipping</h5></td>
										<td class="text-right"><h5>
												<strong><c:out value="${shippingCost}"></c:out> </strong>
											</h5></td>
									</tr>
									<tr>
										<td> </td>
										<td> </td>
										<td> </td>
										<td> </td>
										<td><h3>Total</h3></td>
										<td colspan="2" class="text-right"><h3>
												<strong><c:out value="${total+shippingCost}"></c:out>
												</strong>
											</h3></td>
									</tr>
									<tr>
										<td> </td>
										<td> </td>
										<td> </td>
										<td colspan="2">
											<button type="button" class="btn btn-default">
												<span class="glyphicon glyphicon-shopping-cart"></span>
												Continue Shopping
											</button>
										</td>
										<td colspan="2">
											<button type="button" id="place-order"
												class="btn btn-success">
												Place Order <span class="glyphicon glyphicon-play"></span>
											</button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>


				<div class="modal fade" id="Mymodal">
					<div class="modal-dialog">
						<div class="modal-content">

							<!-- Modal Header -->
							<div class="modal-header">
								<center>
									<span class="modal-title">Login form</span>
								</center>
								<button type="button" class="close" data-dismiss="modal">×</button>
							</div>

							<!-- Modal body -->
							<div class="modal-body">
								<p class="text-intro">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Minima maxime quam architecto quo
									inventore harum ex magni, dicta impedit.</p>
								<div class="form-div">
									<form action="/action_page.php">
										<div class="form-group">
											<input type="email" class="form-control" id="email"
												placeholder="Registered E-Mail ID">
										</div>
										<div class="form-group">

											<input type="password" class="form-control" id="pwd"
												placeholder="Password">
										</div>
										<div class="form-check">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox"> Remember
												me
											</label>
										</div>
										<button type="submit" class="btn btn-warning btn-block mybtn">Submit</button>
										<center>
											<a href="#" title="Reset Password"><small>Forgot
													Password ?</small></a>
										</center>
										<button type="submit" class="btn btn-primary btn-block mybtn">Login
											with facebook</button>
										<button type="submit" class="btn btn-danger btn-block mybtn">Login
											with Google-Plus</button>
									</form>
								</div>
							</div>

						</div>
					</div>
				</div>

				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$('#place-order').click(function() {

							$('#Mymodal').modal('show');
							console.log(3)
						});
					});
				</script>
			</div>

		</div>
	</div>


	<script src="js/vendor/jquery-3.3.1.js"></script>
	<script src="js/vendor/bootstrap.bundle.js"></script>
	<script src="js/vendor/bootstrap.js"></script>
	
</body>
</html>
