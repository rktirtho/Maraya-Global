<%-- 
    Document   : product-view
    Created on : May 9, 2019, 1:05:13 PM
    Author     : DELL
--%>

<%@page import="com.marayaglobal.dao.AdminProductDBHelper"%>
<%@page import="com.marayaglobal.product.AdminProduct"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<%
	String ids = request.getParameter("id");
	if (ids == null || ids.isEmpty())
		response.sendRedirect("index.jsp");
	int id = Integer.parseInt(ids);
	AdminProduct product = AdminProductDBHelper.getById(id);
	request.setAttribute("u", product);
%>

<head>

<title>Maraya Global | <c:out value="${u.getTitle()}"></c:out>
</title>


<link rel="stylesheet" href="css/vendor/etalage.css">
<link rel="stylesheet" href="css/vendor/bootstrap_1.css">
<link rel="stylesheet" type="text/css" href="css/index.css">


<style>
.gallery-wrap .img-big-wrap img {
	height: 450px;
	width: auto;
	display: inline-block;
	cursor: zoom-in;
}

.gallery-wrap .img-small-wrap .item-gallery {
	width: 60px;
	height: 60px;
	border: 1px solid #ddd;
	margin: 7px 2px;
	display: inline-block;
	overflow: hidden;
}

.gallery-wrap .img-small-wrap {
	text-align: center;
}

.gallery-wrap .img-small-wrap img {
	max-width: 100%;
	max-height: 100%;
	object-fit: cover;
	border-radius: 4px;
	cursor: zoom-in;
}

.fas {
	color: #fff
}

.btn-add-cart {
	width: 65%;
	color: #fff;
	background: #EA2F3D
}
</style>



</head>
<body>
	<%@include file="static-page/nav-bar.jsp"%>	
	
	<div class="container-fluid">
		<div class="row">
			<aside class="col-4 py-5">
				<article class="gallery-wrap py-5">
					<div class="grid images_3_of_2">
						<ul id="etalage">
							<li><a href="optionallink.html"> <img
									class="etalage_thumb_image img-responsive" src="images/s1.jpg"
									alt="Image" /> <img
									class="etalage_source_image img-responsive" src="images/s1.jpg"
									title="" alt="Image" />
							</a></li>
							<li><img class="etalage_thumb_image img-responsive"
								src="images/s2.jpg" alt="Image" /> <img
								class="etalage_source_image img-responsive" src="images/s2.jpg"
								class="" alt="Image" /></li>
							<li><img class="etalage_thumb_image img-responsive"
								src="images/s3.jpg" alt="Image" /> <img
								class="etalage_source_image img-responsive" src="images/s3.jpg"
								alt="Image" /></li>
							<li><img class="etalage_thumb_image img-responsive"
								src="images/s4.jpg" alt="Image" /> <img
								class="etalage_source_image img-responsive" src="images/s4.jpg"
								alt="Image" /></li>
						</ul>
						<div class="clearfix"></div>
					</div>
				</article>
				<!-- gallery-wrap .end// -->
			</aside>
			<aside class="col-7">
				<article class="card-body p-5">
					<h3 class="title mb-3">
						<c:out value="${u.getTitle()}"></c:out>
					</h3>

					<div class="d-flex flex-row card border-bottom rounded-0  p-3">
						<div class="mr-4">
							<span class="pr-5">Price: </span> <span class="pl-5 h4 text-dark"><del>
									TK
									<c:out value="${u.getRegularprice()}"></c:out>
								</del></span><br> <span class="pr-4 my3">Discount Price: </span><span
								class="text-danger h3">TK ${u.currentPrice()}</span>
						</div>
						<div class="border-left pl-4">
							<span>You Save</span>
							<h3>${u.getDiscount()}%</h3>
						</div>
					</div>


					<!-- price-detail-wrap .// -->
					<dl class="item-property py-3">
						<dt class="h5 ">Quick Overview</dt>
						<dd>
							<span>Processor</span> -
							<c:if test="${not empty u.getProcessor()}">
								<span>${u.getProcessor()} </span> ${u.getGenaration()} <span> Gen</span>
							</c:if>
						</dd>
						<dd>
							<span>Processor Clock Speed</span> -
							<c:if test="${not empty u.getClockSpeed()}">
							${u.getClockSpeed()}
						</c:if>
						</dd>
						<dd>
							<span>Display Size </span> -
							<c:if test="${not empty u.getDisplaySize()}">
							${u.getDisplaySize()}
						</c:if>
						</dd>
						<dd>
							<span>RAM</span>-
							<c:if test="${not empty u.getRam()}">
							${u.getRam()}
						</c:if>
						</dd>
						<dd>
							<span>RAM Type</span>-
							<c:if test="${not empty u.getRamType()}">
							${u.getRamType()}
						</c:if>
						</dd>
						<dd>
							<span>Storage</span>-
							<c:if test="${not empty u.getStorage()}">
							${u.getStorage()}
						</c:if>
						</dd>
						<dd>
							<span>Graphics Chipset</span>-
							<c:if test="${not empty u.getGraphicsChipset()}">
						${u.getGraphicsChipset()}
						</c:if>
						</dd>
					</dl>

					<hr>
					<a
						class="btn btn-lg btn-danger btn-add-cart text-white text-uppercase px-5">
						<i class="fas fa-shopping-cart"></i> Add to cart
					</a>
				</article>
				<!-- card-body.// -->
			</aside>
			<aside class="col-1">
				<div class="col-12">Seller Info</div>
			</aside>



		</div>
	</div>
	<div class="container-fluid my-3">
		<ul class="nav nav-tabs" id="myTab" role="tablist">
			<li class="nav-item"><a class="nav-link " id="home-tab"
				data-toggle="tab" href="#details" role="tab" aria-controls="details"
				aria-selected="true">Details</a></li>
			<li class="nav-item"><a class="nav-link active" id="profile-tab"
				data-toggle="tab" href="#specification" role="tab"
				aria-controls="specification" aria-selected="false">Specification</a></li>
			<li class="nav-item"><a class="nav-link" id="contact-tab"
				data-toggle="tab" href="#comment" role="tab" aria-controls="comment"
				aria-selected="false">Comments</a></li>
		</ul>
		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade " id="details" role="tabpanel"
				aria-labelledby="home-tab">
				<p>
					<c:out value="${u.getDescription()}"></c:out>
				</p>
			</div>
			<div class="tab-pane fade show active" id="specification" role="tabpanel"
				aria-labelledby="profile-tab">
				<h2 class="h4 py-3">Additional Information</h2>
				<table class="table" id="product-attribute-specs-table">
					<colgroup>
						<col width="25%">
						<col>
					</colgroup>
					<tbody>
						<c:if test="${not empty u.getBrand()}">
							<tr class="first odd">
								<th class="label">Brand</th>
								<td class="data last">${u.getBrand()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getModel()}">
							<tr class="first odd">
								<th class="label">Model</th>
								<td class="data last">${u.getModel()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getProcessor()}">
							<tr class="first odd">
								<th class="label">Processor</th>
								<td class="data last">${u.getProcessor()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getGenaration()}">
							<tr class="first odd">
								<th class="label">Generation</th>
								<td class="data last">${u.getGenaration()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getClockSpeed()}">
							<tr class="first odd">
								<th class="label">Clock Speed</th>
								<td class="data last">${u.getClockSpeed()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getCache()}">
							<tr class="first odd">
								<th class="label">Cache</th>
								<td class="data last">${u.getCache()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getDisplayType()}">
							<tr class="first odd">
								<th class="label">Display Type</th>
								<td class="data last">${u.getDisplayType()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getDisplayResulation()}">
							<tr class="first odd">
								<th class="label">Display Resolution</th>
								<td class="data last">${u.getDisplayResulation()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getDisplaySize()}">
							<tr class="first odd">
								<th class="label">Display Size</th>
								<td class="data last">${u.getDisplaySize()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getTouch()}">
							<tr class="first odd">
								<th class="label">Touch</th>
								<td class="data last">${u.getTouch()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getRamType()}">
							<tr class="first odd">
								<th class="label">RAM Type</th>
								<td class="data last">${u.getRamType()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getRam()}">
							<tr class="first odd">
								<th class="label">RAM</th>
								<td class="data last">${u.getRam()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getStorage()}">
							<tr class="first odd">
								<th class="label">Storage</th>
								<td class="data last">${u.getStorage()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getGraphicsChipset()}">
							<tr class="first odd">
								<th class="label">Graphics Chipset</th>
								<td class="data last">${u.getGraphicsChipset()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getGraphicsMemory()}">
							<tr class="first odd">
								<th class="label">Graphics Memory</th>
								<td class="data last">${u.getGraphicsMemory()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getNetworking()}">
							<tr class="first odd">
								<th class="label">Networking</th>
								<td class="data last">${u.getNetworking()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getDisplayPort()}">
							<tr class="first odd">
								<th class="label">Display Port</th>
								<td class="data last">${u.getDisplayPort()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getAudioPort()}">
							<tr class="first odd">
								<th class="label">Audio Port</th>
								<td class="data last">${u.getAudioPort()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getUsbPort()}">
							<tr class="first odd">
								<th class="label">USB Port</th>
								<td class="data last">${u.getUsbPort()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getBettery()}">
							<tr class="first odd">
								<th class="label">Battery</th>
								<td class="data last">${u.getBettery()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getWeight()}">
							<tr class="first odd">
								<th class="label">Weight</th>
								<td class="data last">${u.getWeight()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getColor()}">
							<tr class="first odd">
								<th class="label">Color</th>
								<td class="data last">${u.getColor()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getOperatingSystem()}">
							<tr class="first odd">
								<th class="label">Operating System</th>
								<td class="data last">${u.getOperatingSystem()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getPortNo()}">
							<tr class="first odd">
								<th class="label">Port No</th>
								<td class="data last">${u.getPortNo()}</td>
							</tr>
						</c:if>
						<c:if test="${not empty u.getWarrenty()}">
							<tr class="first odd">
								<th class="label">Warranty</th>
								<td class="data last">${u.getGraphicsMemory()}</td>
							</tr>
						</c:if>

					</tbody>
				</table>
			</div>
			<div class="tab-pane fade" id="comment" role="tabpanel"
				aria-labelledby="contact-tab">
				<div class="py-3 comment-area"></div>

			</div>
		</div>
	</div>
	<div class="container feature-product py-3">
		<h4>Same Product</h4>
		<div class="row">
			<div class="col-lg-3 col-md-6 col-sm-12">
				<div class="card">
					<img class="card-image-top" alt="product Image" src="images/s2.jpg">
					<div class="card-body">
						<h2 class="card-title">Product Name</h2>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- The Modal -->
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
					<p class="text-intro">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Minima maxime quam architecto quo inventore
						harum ex magni, dicta impedit.</p>
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
									class="form-check-input" type="checkbox"> Remember me
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


	<script type="text/javascript" src="js/vendor/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/vendor/bootstrap.bundle.js"></script>
	<script type="text/javascript" src="js/vendor/bootstrap.js"></script>
	<script src="js/vendor/jquery.etalage.min.js"></script>

	<script>
		jQuery(document).ready(function($) {

			$('#etalage').etalage({
				thumb_image_width : 333,
				thumb_image_height : 400,
				source_image_width : 900,
				source_image_height : 1200,
				show_hint : true,
			});

			$('.btn-add-cart').click(function() {
				var id =
	<%=id%>
		;
				$.ajax({
					type : "GET",
					url : "webapi/cart/add?id=" + id,
					cache : false,
					success : function(data) {

						if (data == -1) {
							alert('You have to login first')
							//$('#Mymodal').modal('show');
						} else if (data == 1) {
							alert('added to your cart');
							$('.btn-add-cart').prop("disabled", true);
						} else {

						}
					}
				});
			});

		});
	</script>
</body>
</html>