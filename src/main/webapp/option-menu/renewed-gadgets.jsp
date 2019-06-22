<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
  String userAgent = request.getHeader("user-agent");
if(userAgent.indexOf("Mobile") != -1){
	ServletContext context = getServletContext();
	RequestDispatcher dispatcher = context.getRequestDispatcher("/mobile/cat/baby-care-toys.jsp");
	dispatcher.forward(request, response);
}

%>
<title>Maraya Global | Renewed and Gadgets</title>
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
<link rel="stylesheet" type="text/css" href="css/vendor/bootstrap_1.css">
<link rel="stylesheet" type="text/css"
	href="css/vendor/fontawesome-all.min.css">


<link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
	<%@include file="../static-page/nav-bar.jsp"%>
	<div class="daily_deals_bg hot_deals_box">
		<div class="site_main_wrapper reset_background reset_padding clearFix">
			<div class="dd-tabs-right">
				<ul id="dd-top-tabs">

					<!-- <li class="event_title active-tab"><a href="/"></a></li>
						<li class=""><a class="tooltip" title="New"
							href="/clearance/">Clearance</a></li> -->
					<li class=""><a href="<%=Basic.DOMAIN_NAME%>">All</a></li>
					<li class=""><a href="electronics">Electronics</a></li>
					<li class=""><a href="mobility">Mobility</a></li>
					<li class=""><a href="fashion">Fashion</a></li>
					<li class=""><a href="best-sellers">Best Sellers</a></li>
					<li class=""><a href="latest-deals">Latest Deals</a></li>
					<li class=""><a href="gift-sets">Gift Sets</a></li>
					<li class=""><a href="baby-care-and-toys">Baby Care & Toys</a></li>
					<li class=""><a href="car-care">Car Care</a></li>
					<li class=""><a href="special-offers">Special offers</a></li>
					<li class="active-tab"><a href="renewed-gadgets">Renewed Gadgets</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-lg medium-text">
			<ul class="sort_list navbar-nav">
				<li class="nav-item"><span class="nav-link title">SORTING:</span></li>
				<li class="nav-item"><a class="nav-link sort-type" id="">Best Deals</a></li>
				<li class="nav-item"><a class="nav-link sort-type" id="id desce ">Latest </a></li>
				<li class="nav-item"><a class="nav-link sort-type" id="">Best Selling</a></li>
				<li class="nav-item"><a class="nav-link sort-type" id="">Highest Discount</a></li>
				<li class="nav-item"><a class="nav-link sort-type">Lowest Prices</a></li>
				<li class="nav-item"><a class="nav-link sort-type">Highest Prices</a></li>
				<li class="nav-item"><a class="nav-link sort-type">Recently Updated</a></li>


			</ul>
		</nav>
	</div>
	<div class="container-fluid main-container">
		<div class="row all-item"></div>

	</div>
	<div class="loader">
		<div class="spinner-grow text-primary " role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-secondary" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-success" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-danger" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-warning" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-info" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-dark" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<a href="#" id="scroll" style="display: none;"><span></span></a>
	<script type="text/javascript" src="js/vendor/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/vendor/bootstrap.bundle.js"></script>
	<script type="text/javascript" src="js/vendor/bootstrap.js"></script>
	<script type="text/javascript"
		src="js/service-request/product-service/product-category/category.js"></script>

</body>
</html>