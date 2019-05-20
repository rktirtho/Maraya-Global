<%@page import="com.marayaglobal.dao.AdminDBHelper"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	String name = AdminDBHelper.adminName(session.getId());
	if (name == null)
		response.sendRedirect("signup");
%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Console</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="css/a-panel.css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/customer-console.css">
</head>
<body>
	<header class="header">
		<nav
			class="navbar navbar-expand-lg navbar-toggleable-md navbar-light bg-gray pt-0 pb-0 ">
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="float-left">
				<a href="#" class="button-left"><span class="fa fa-fw fa-bars "></span></a>
			</div>
			<div class="collapse navbar-collapse flex-row-reverse"
				id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item dropdown messages-menu"><a
						class="nav-link dropdown-toggle" href="http://example.com"
						id="navbarDropdownMenuLink" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="fa fa-bell-o"></i> <span
							class="label label-success bg-success">10</span>
					</a>
						<div class="dropdown-menu"
							aria-labelledby="navbarDropdownMenuLink">
							<ul class="dropdown-menu-over list-unstyled">
								<li class="header-ul text-center">You have 4 messages</li>
								<li>
									<!-- inner menu: contains the actual data -->
									<ul class="menu list-unstyled">
										<li>
											<!-- start message --> <a href="#">
												<div class="pull-left">
													<img src="http://via.placeholder.com/160x160"
														class="rounded-circle  " alt="User Image">
												</div>
												<h4>
													Support Team <small><i class="fa fa-clock-o"></i> 5
														mins</small>
												</h4>
												<p>Why not buy a new awesome theme?</p>
										</a>
										</li>
										<!-- end message -->
										<li><a href="#">
												<div class="pull-left">
													<img src="http://via.placeholder.com/160x160"
														class="rounded-circle " alt="User Image">
												</div>
												<h4>
													AdminLTE Design Team <small><i
														class="fa fa-clock-o"></i> 2 hours</small>
												</h4>
												<p>Why not buy a new awesome theme?</p>
										</a></li>
										<li><a href="#">
												<div class="pull-left">
													<img src="http://via.placeholder.com/160x160"
														class="rounded-circle " alt="User Image">
												</div>
												<h4>
													Developers <small><i class="fa fa-clock-o"></i>
														Today</small>
												</h4>
												<p>Why not buy a new awesome theme?</p>
										</a></li>
										<li><a href="#">
												<div class="pull-left">
													<img src="http://via.placeholder.com/160x160"
														class="rounded-circle " alt="User Image">
												</div>
												<h4>
													Sales Department <small><i class="fa fa-clock-o"></i>
														Yesterday</small>
												</h4>
												<p>Why not buy a new awesome theme?</p>
										</a></li>
										<li><a href="#">
												<div class="pull-left">
													<img src="http://via.placeholder.com/160x160"
														class="rounded-circle " alt="User Image">
												</div>
												<h4>
													Reviewers <small><i class="fa fa-clock-o"></i> 2
														days</small>
												</h4>
												<p>Why not buy a new awesome theme?</p>
										</a></li>
									</ul>
								</li>
								<li class="footer-ul text-center"><a href="#">See All
										Messages</a></li>
							</ul>
						</div></li>
					<li class="nav-item dropdown notifications-menu"><a
						class="nav-link dropdown-toggle" href="http://example.com"
						id="navbarDropdownMenuLink" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="fa fa-envelope-o"></i> <span
							class="label label-warning bg-warning">10</span>
					</a>
						<div class="dropdown-menu"
							aria-labelledby="navbarDropdownMenuLink">
							<ul class="dropdown-menu-over list-unstyled">
								<li class="header-ul text-center">You have 10 notifications</li>
								<li>
									<!-- inner menu: contains the actual data -->
									<ul class="menu list-unstyled">
										<li><a href="#"> <i class="fa fa-users text-aqua"></i>
												5 new members joined today
										</a></li>
										<li><a href="#"> <i class="fa fa-warning text-yellow"></i>
												Very long description here that may not fit into the page
												and may cause design problems
										</a></li>
										<li><a href="#"> <i class="fa fa-users text-red"></i>
												5 new members joined
										</a></li>
										<li><a href="#"> <i
												class="fa fa-shopping-cart text-green"></i> 25 sales made
										</a></li>
										<li><a href="#"> <i class="fa fa-user text-red"></i>
												You changed your username
										</a></li>
									</ul>
								</li>
								<li class="footer-ul text-center"><a href="#">View all</a></li>
							</ul>
						</div></li>

					<li class="nav-item dropdown  user-menu"><a
						class="nav-link dropdown-toggle" href="http://example.com"
						id="navbarDropdownMenuLink" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <img
							src="http://via.placeholder.com/160x160" class="user-image"
							alt="User Image"> <span class="hidden-xs"><%=name%></span>
					</a>
						<div class="dropdown-menu"
							aria-labelledby="navbarDropdownMenuLink">
							<a class="dropdown-item" href="#">Action</a> <a
								class="dropdown-item" href="#">Another action</a> <a
								class="dropdown-item" href="#">Something else here</a>
						</div></li>
				</ul>
			</div>
		</nav>
	</header>
	<div class="container-fluid">
		<div class="row">
			<aside class="col-2 p-0 m-0">
				<div class="sidebar left navbar-expand-lg">
					<div class="user-panel">
						<div class="pull-left image">
							<img src="http://via.placeholder.com/160x160"
								class="rounded-circle" alt="User Image">
						</div>
						<div class="pull-left info">
							<p><%=name%></p>
							<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
						</div>
					</div>
					<ul class="list-sidebar bg-defoult">
						<!-- <li><a href="#" data-toggle="collapse"
							data-target="#dashboard" class="collapsed active"> <i
								class="fa fa-th-large"></i> <span class="nav-label">
									Dashboards </span> <span class="fa fa-chevron-left pull-right"></span>
						</a>
							<ul class="sub-menu collapse" id="dashboard">
								<li class="active"><a href="#">Our Product</a></li>
								<li><a href="#">Vendors Product</a></li>
								<li><a href="#">Add New Product</a></li>
								<li><a href="#">New Comment</a></li>
								<li><a href="#">Typography</a></li>
								<li><a href="#">FontAwesome</a></li>
								<li><a href="#">Slider</a></li>
								<li><a href="#">Panels</a></li>
								<li><a href="#">Widgets</a></li>
								<li><a href="#">Bootstrap Model</a></li>
							</ul></li>
						<li><a href="#"><i class="fa fa-diamond"></i> <span
								class="nav-label">Layouts</span></a></li>
						<li><a href="#" data-toggle="collapse"
							data-target="#products" class="collapsed active"> <i
								class="fa fa-bar-chart-o"></i> <span class="nav-label">Order</span>
								<span class="fa fa-chevron-left pull-right"></span>
						</a>
							<ul class="sub-menu collapse" id="products">
								<li class="active"><a href="#">New Order</a></li>
								<li><a href="#">Order On Process</a></li>
								<li><a href="#">Delivered order</a></li>
								<li><a href="#">Tabs & Accordions</a></li>
								<li><a href="#">Typography</a></li>
								<li><a href="#">FontAwesome</a></li>
								<li><a href="#">Slider</a></li>
								<li><a href="#">Panels</a></li>
								<li><a href="#">Widgets</a></li>
								<li><a href="#">Bootstrap Model</a></li>
							</ul></li>
						<li><a href="#"><i class="fa fa-laptop"></i> <span
								class="nav-label">Grid options</span></a></li>
						<li><a href="#" data-toggle="collapse" data-target="#tables"
							class="collapsed active"><i class="fa fa-table"></i> <span
								class="nav-label">Tables</span><span
								class="fa fa-chevron-left pull-right"></span></a>
							<ul class="sub-menu collapse" id="tables">
								<li><a href=""> Static Tables</a></li>
								<li><a href=""> Data Tables</a></li>
								<li><a href=""> Foo Tables</a></li>
								<li><a href=""> jqGrid</a></li>
							</ul></li>
						<li><a href="#" data-toggle="collapse"
							data-target="#e-commerce" class="collapsed active"><i
								class="fa fa-shopping-cart"></i> <span class="nav-label">E-commerce</span><span
								class="fa fa-chevron-left pull-right"></span></a>
							<ul class="sub-menu collapse" id="e-commerce">
								<li><a href=""> Products grid</a></li>
								<li><a href=""> Products list</a></li>
								<li><a href="">Product edit</a></li>
								<li><a href=""> Product detail</a></li>
								<li><a href="">Cart</a></li>
								<li><a href=""> Orders</a></li>
								<li><a href=""> Credit Card form</a></li>
							</ul></li>-->

						<li id="new_order"><a href="#new-order"><i class="fa fa-files-o"></i> <span
								class="nav-label">New order</span></a></li>
						<li id="processing_order"><a href="#order-on-process"><i class="fa fa-files-o"></i> <span
								class="nav-label">Order On Process</span></a></li>
						<li id="delevered"><a href="#delivered"><i class="fa fa-files-o"></i> <span
								class="nav-label">Delivered order</span></a></li>

						<li id="our_product"><a href="#our-product"><i class="fa fa-pie-chart"></i> <span
								class="nav-label">Our Product</span> </a></li>
								
						<li id="add_new_product"><a href="product-registration" target="_blank"><i
								class="fa fa-files-o"></i> <span class="nav-label">Add
									New Product</span></a></li>
									
						<li id="vendor_product"><a href="#vendors-product"><i class="fa fa-files-o"></i> <span
								class="nav-label">Vendors Product</span></a></li>
						<li id ="vendors"><a href="#all-vendor"><i class="fa fa-files-o"></i> <span
								class="nav-label">All Vendors</span></a></li>


						<li><a href="#product-feedback"><i class="fa fa-files-o"></i> <span
								class="nav-label">Product Feedback</span></a></li>

						<li id="all-customer"><a href="#all-customer"><i
								class="fa fa-files-o"></i> <span class="nav-label">All
									Customer</span></a></li>

						<li id="all-massage"><a href="#massages"><i class="fa fa-files-o"></i>
								<span class="nav-label">Massage</span></a></li>

						<li id="update-address"><a href="#update-address"><i class="fa fa-files-o"></i> <span
								class="nav-label">Update Address</span></a></li>
					</ul>
				</div>

			</aside>
			<div class="col-10 ">
				<div class="data-container mx-auto"></div>
			</div>
		</div>
		<a id="back-to-top" href="#"
			class="btn btn-secondary btn-lg back-to-top" role="button"
			title="Click to return on the top page" data-toggle="tooltip"
			data-placement="left"> <i class="fas fa-arrow-alt-circle-up"></i></a>

	</div>

	<script src="js/vendor/jquery-3.3.1.js"></script>
	<script src="js/vendor/bootstrap.bundle.js"></script>
	<script src="js/vendor/bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('.button-left').click(function() {
				$('.sidebar').toggleClass('fliph');
			});

		});
	</script>

	<script>
		$(document).ready(function() {
			
			$.ajax({
				url : "ajax/admin/order/new.jsp",
				success : function(result) {
					$(".data-container").html(result);
				}
			});
			
			
			
			$("#new_order").click(function() {
				$.ajax({
					url : "ajax/admin/order/new.jsp",
					success : function(result) {
						$(".data-container").html(result);
					}
				});
			});
			
			$("#processing_order").click(function() {
				$.ajax({
					url : "ajax/admin/order/on-process.jsp",
					success : function(result) {
						$(".data-container").html(result);
					}
				});
			});
			
			$("#delevered").click(function() {
				$.ajax({
					url : "ajax/admin/order/delevered.jsp",
					success : function(result) {
						$(".data-container").html(result);
					}
				});
			});
			
			
			$("#our_product").click(function() {
				$.ajax({
					url : "ajax/admin/product.jsp",
					success : function(result) {
						$(".data-container").html(result);
					}
				});
			});

			
			
			$("#vendor_product").click(function() {
				$.ajax({
					url : "ajax/admin/vendor-product.jsp",
					success : function(result) {
						$(".data-container").html(result);
					}
				});
			});
			
			$("#vendors").click(function() {
				$.ajax({
					url : "ajax/admin/vendors.jsp",
					success : function(result) {
						$(".data-container").html(result);
					}
				});
			});
			

			$("#all-customer").click(function() {
				$.ajax({
					url : "ajax/admin/all-customer.jsp",
					success : function(result) {
						$(".data-container").html(result);
					}
				});
			});

			$("#all-massage").click(function() {
				$.ajax({
					url : "ajax/admin/massages.jsp",
					success : function(result) {
						$(".data-container").html(result);
					}
				});
			});

			$(window).scroll(function() {
				if ($(this).scrollTop() > 50) {
					$('#back-to-top').fadeIn();
				} else {
					$('#back-to-top').fadeOut();
				}
			});
			// scroll body to 0px on click
			$('#back-to-top').click(function() {
				$('#back-to-top').tooltip('hide');
				$('body,html').animate({
					scrollTop : 0
				}, 800);
				return false;
			});

			$('#back-to-top').tooltip('show');

		});
	</script>
</body>
</html>
