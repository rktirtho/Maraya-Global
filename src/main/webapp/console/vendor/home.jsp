<%-- 
    Document   : home
    Created on : May 9, 2019, 3:20:32 PM
    Author     : DELL
--%>

<%@page import="com.marayaglobal.dao.ProductDBHelper"%>
<%@page import="java.util.List"%>
<%@page import="com.marayaglobal.product.Product"%>
<%@page import="com.marayaglobal.beans.user.Vendor"%>
<%@page import="com.marayaglobal.dao.VendorDBHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%
	Vendor vendor = VendorDBHelper.getBySession(session.getId());
	if (vendor.getName() == null)
		response.sendRedirect(request.getContextPath());
	request.setAttribute("u", vendor);
%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Maraya Global| <%=vendor.getId()%>| <c:out
		value="${u.getName() }"></c:out>
</title>
<link href="css/vendor/bootstrap_1.css" rel="stylesheet"
	id="bootstrap-css">

<link rel="stylesheet" type="text/css" href="css/customer-console.css">
<style type="text/css">
#content {
	min-height: 780px
}
</style>

</head>
<body>
	<header class="header sticky-top">
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
							alt="User Image"> <span class="hidden-xs  dropdown-toggle"><c:out
									value="${u.getName() }"></c:out></span>
					</a>
						<div class="dropdown-menu"
							aria-labelledby="navbarDropdownMenuLink">
							<a class="dropdown-item" href="#">Action</a> <a
								class="dropdown-item" href="#">Another action</a> <a
								class="dropdown-item" href="#">Log Out</a>
						</div></li>
				</ul>
			</div>
		</nav>
	</header>


	<div class="contaier-fluid">

		<div class="row" style="margin: 0px">

			<div class="col-2 " style="background-color: #222">
				<div class="position-fixed">
					<div class="">
						<aside>
							<div class="sidebar left navbar-expand-lg">
								<div class="user-panel">
									<div class="pull-left image">
										<img src="http://via.placeholder.com/160x160"
											class="rounded-circle" alt="User Image">
									</div>
									<div class="pull-left info">
										<p>
											<c:out value="${u.getName() }"></c:out>
										</p>
										<a href="#"><i class="fa fa-circle text-success"></i>
											Online</a>
									</div>
								</div>
								<ul class="list-sidebar bg-defoult">
									<!-- <li> <a href="#" data-toggle="collapse" data-target="#dashboard" class="collapsed active" > <i class="fa fa-th-large"></i> <span class="nav-label"> Dashboards </span> <span class="fa fa-chevron-left pull-right"></span> </a>
                            <ul class="sub-menu collapse" id="dashboard">
                                <li class="active"><a href="#">CSS3 Animation</a></li>
                                <li><a href="#">General</a></li>
                                <li><a href="#">Buttons</a></li>
                                <li><a href="#">Tabs & Accordions</a></li>
                                <li><a href="#">Typography</a></li>
                                <li><a href="#">FontAwesome</a></li>
                                <li><a href="#">Slider</a></li>
                                <li><a href="#">Panels</a></li>
                                <li><a href="#">Widgets</a></li>
                                <li><a href="#">Bootstrap Model</a></li>
                            </ul>
                        </li>
                        <li> <a href="#"><i class="fa fa-diamond"></i> <span class="nav-label">Layouts</span></a> </li>
                        <li> <a href="#" data-toggle="collapse" data-target="#products" class="collapsed active" > <i class="fa fa-bar-chart-o"></i> <span class="nav-label">Graphs</span> <span class="fa fa-chevron-left pull-right"></span> </a>
                            <ul class="sub-menu collapse" id="products">
                                <li class="active"><a href="#">CSS3 Animation</a></li>
                                <li><a href="#">General</a></li>
                                <li><a href="#">Buttons</a></li>
                                <li><a href="#">Tabs & Accordions</a></li>
                                <li><a href="#">Typography</a></li>
                                <li><a href="#">FontAwesome</a></li>
                                <li><a href="#">Slider</a></li>
                                <li><a href="#">Panels</a></li>
                                <li><a href="#">Widgets</a></li>
                                <li><a href="#">Bootstrap Model</a></li>
                            </ul>
                        </li>
                        <li> <a href="#"><i class="fa fa-laptop"></i> <span class="nav-label">Grid options</span></a> </li>
                        <li> <a href="#" data-toggle="collapse" data-target="#tables" class="collapsed active" ><i class="fa fa-table"></i> <span class="nav-label">Tables</span><span class="fa fa-chevron-left pull-right"></span></a>
                            <ul  class="sub-menu collapse" id="tables" >
                                <li><a href=""> Static Tables</a></li>
                                <li><a href=""> Data Tables</a></li>
                                <li><a href=""> Foo Tables</a></li>
                                <li><a href=""> jqGrid</a></li>
                            </ul>
                        </li>
                        <li> <a href="#" data-toggle="collapse" data-target="#e-commerce" class="collapsed active" ><i class="fa fa-shopping-cart"></i> <span class="nav-label">E-commerce</span><span class="fa fa-chevron-left pull-right"></span></a>
                            <ul  class="sub-menu collapse" id="e-commerce" >
                                <li><a href=""> Products grid</a></li>
                                <li><a href=""> Products list</a></li>
                                <li><a href="">Product edit</a></li>
                                <li><a href=""> Product detail</a></li>
                                <li><a href="">Cart</a></li>
                                <li><a href=""> Orders</a></li>
                                <li><a href=""> Credit Card form</a> </li>
                            </ul>
                        </li>-->
									<li><a href="#"><i class="fa fa-files-o"></i> <span
											class="nav-label">Home</span></a></li>
									<li id="account"><a href="#account" class=""><i
											class="fa fa-pie-chart"></i> <span class="nav-label">Account</span>
									</a></li>
									<li id="my-product"><a href="#"><i
											class="fa fa-files-o"></i> <span class="nav-label">My
												Product</span></a></li>
									<li id="new-order"><a href="#"><i
											class="fa fa-files-o"></i> <span class="nav-label">Post
												Advertise</span></a></li>
									<li id="new-order"><a href="#"><i
											class="fa fa-files-o"></i> <span class="nav-label">New
												orders</span></a></li>

									<li id="pross-order"><a href="#"><i
											class="fa fa-files-o"></i> <span class="nav-label">Processing
												orders</span></a></li>
									<li id="delivered"><a href="#"><i
											class="fa fa-files-o"></i> <span class="nav-label">Delivered</span></a></li>
								</ul>
							</div>
						</aside>
					</div>

				</div>
			</div>
			<div class="col-md-10">
				<div class="py-3" id="content"></div>



			</div>
		</div>
	</div>







	<script src="js/vendor/jquery-3.3.1.js"></script>
	<script src="js/vendor/bootstrap.bundle.js"></script>
	<script src="js/vendor/bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('.button-left').click(function() {
				$('.sidebar').toggleClass('fliph');
			});

			$("#account").click(function() {

				$.ajax({
					url : "ajax/vendor/account.jsp",
					success : function(result) {
						$("#content").html(result);
					}
				});
			});

			$("#my-product").click(function() {

				$.ajax({
					url : "ajax/vendor/my-product.jsp",
					success : function(result) {
						$("#content").html(result);
					}
				});
			});

			$("#new-order").click(function() {

				$.ajax({
					url : "ajax/vendor/new-order.jsp",
					success : function(result) {
						$("#content").html(result);
					}
				});
			});

			$("#pross-order").click(function() {

				$.ajax({
					url : "ajax/vendor/pross-order.jsp",
					success : function(result) {
						$("#content").html(result);
					}
				});
			});

			$("#delivered").click(function() {

				$.ajax({
					url : "ajax/vendor/delivered.jsp",
					success : function(result) {
						$("#content").html(result);
					}
				});
			});

		});
	</script>
</body>
</html>
