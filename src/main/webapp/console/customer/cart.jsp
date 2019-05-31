<%@page import="com.marayaglobal.util.Basic"%>
<%@page import="com.marayaglobal.dao.CustomerDBHelper"%>
<%@page import="com.marayaglobal.dao.CartDBHelper"%>
<%@page import="com.marayaglobal.order.CartView"%>
<%@page import="java.util.List"%>
<%@page import="com.marayaglobal.beans.user.Customer"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<%
	Customer currentUser = (Customer) CustomerDBHelper.getBySession(session.getId());

	if (currentUser.getName() == null) {
		response.sendRedirect(Basic.DOMAIN_NAME);
	}

	List<CartView> cart = CartDBHelper.getCartByCustomerId(currentUser.getId());
	request.setAttribute("user", currentUser);
	request.setAttribute("carts", cart);
%>


<title>Your Shopping Cart | Maraya Global Shopping</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=yes">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="robots" content="noindex, nofollow" />
<meta name="keywords" content="Shopping Cart, AWOK Online Shopping" />
<meta name="description"
	content="Your Shopping Cart : AWOK offer best online Shopping webstore" />

<link
	href="https://global.awok.com/bitrix/js/main/core/css/core.css?15202454443963"
	type="text/css" rel="stylesheet" />
<link href="css/vendor/bootstrap.css" type="text/css" rel="stylesheet" />
<link
	href="https://global.awok.com/bitrix/templates/awok-lang/components/dev-awok/cart/.awok-new-coupon-v2/style.css?154614893322535"
	type="text/css" rel="stylesheet" />
<link
	href="https://global.awok.com/bitrix/templates/awok-lang/css/style.css?1558341138175495"
	type="text/css" data-template-style="true" rel="stylesheet" />

<link rel="manifest" href="/manifest.json">
</head>
<body class="pay-page currency-usd currency-disp-Y">
	<div class="grey_bg"></div>
	<div class="admin_panel"></div>
	<div class="main">
		<style type="text/css">
.header, .page_breadcrums_box, body .bg-ads-ramadan {
	display: none;
}
</style>
		<div class="empty-cart-page">
			<div class="header-box">
				<div class="wrapper">
					<div class="header-area">
						<div class="left">
							<div class="logo-box">
								<a href="/"> <img src="images/util/logo.png" />
								</a>
								<div class="clear"></div>
							</div>
						</div>
						<div class="right"></div>
						<div class="clear"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="cart-page py-3">
			<div class="wrapper">
				<div class="box">
					<!-- Errors -->


					<div class="cart-list">
<div class="seller-wrap">
							<div class="seller-name">
								<span>SOLD BY: </span>Maraya Global
							</div>
							<div class="seller-subtotal">
								<span>Subtotal:</span> $8.05
							</div>
							<div class="seller-item-count">
								<span>Total Items:</span> 1
							</div>
						</div>
						<!-- Items -->
						<ul>
							<c:set var="total" value=""></c:set>
							<c:set var="shippingCost" value="${50}"></c:set>

							<c:forEach var="u" items="${carts}">
								<c:set var="total"
									value="${u.getCurrentPrice() *u.getQuantity() + total}"></c:set>
								<li>
									<div class="product-image">
										<img
											src="https://s5d.awokcdn.com/upload/resize_cache/iblock/5d7/75_75_1/5d7bed2854f686cd12e7b200a9e2efc9.png"
											alt="Party Home Decoration Digital Light Series Curtain Design LED String Light  Multi Color With 8 Modes, F-14">
									</div>
									<div class="product-desp">
										<h2>
											<c:out value="${u.getTitle() }"></c:out>
										</h2>
									</div>
									<div class="quantity">
										<p>Qty:</p>
										<div class="select-box">
											<form method="POST">
												<select name="QUANTITY" class="product_quantity">
													<option value="1" selected>1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>
												</select> <input type="hidden" name="CID" value="167264760" /> <input
													type="hidden" name="ACTION" value="UPDATE" /> <input
													type="submit" name="SAVE" value="Save"
													class="text_button remove_red_bg" />
											</form>
											<div class="item_remove">
												<img
													src="/bitrix/templates/awok-lang/components/dev-awok/cart/.awok-new-coupon-v2/images/ico_close.svg">
												<form method="POST">
													<input type="hidden" name="ACTION" value="REMOVE" /> <input
														type="hidden" name="CID" value="167264760" /> <input
														type="hidden" name="PID" value="1521395" /> <input
														class="remove_ico" type="submit" name="Update"
														value="Remove" />
												</form>
											</div>
										</div>
										<div class="cross">X</div>
										<div class="price">
											<span class="new_price"><c:out
													value="${u.getCurrentPrice() }"></c:out></span> <span
												class="discount-price"><c:out
													value="${u.getRegular_price() }"></c:out></span>
										</div>
										<div class="off-price">
											<c:out value="${u.getDiscount() }"></c:out>
											% OFF
										</div>
										<div class="delivery-price">
											Brand: <span><c:out value="${u.getBrand() }"></c:out></span>
										</div>
										<div class="clear"></div>
									</div>
									<div class="fullfilledby">
										<span>Fulfilled By</span>
										<div class="fullfilledby-img"></div>
									</div>
									<div class="clear"></div>
								</li>
							</c:forEach>

						</ul>
					</div>
				</div>
				<!-- Payments and coupons -->
				<div class="total-payment-area">
					<!-- <div class="right left-width"> -->

					<div class="coupon-code-box js-coupon-code-box ">
						<div class="coupon-code-heading">
							<div class="left">
								<h1>Coupon Code</h1>
							</div>
							<div class="right">
								<a href="/user/mycoupons/" target="_blank">SELECT COUPON</a>
							</div>
							<div class="clear"></div>
						</div>
						<div class="coupon-code-description">
							<form method="post" id="apply-coupon-form" novalidate>
								<!-- Don not remove the hidden inputs, its decides the action -->
								<input type="hidden" name="ACTION" value="add_coupon">
								<div class="left coupon-input-width">
									<fieldset>
										<input type="text" name="coupon" id="coupon"
											class="js-coupon-input" autocomplete="off" value="" required>
										<label for="coupon">Enter your coupon code here</label>
										<div class="after"></div>
									</fieldset>
								</div>

								<div class="right">
									<button type="submit" class="submit-coupon-button">Apply</button>
								</div>
								<div class="clear"></div>

								<!-- Invalid coupon -->
							</form>
						</div>
					</div>
					<!-- </div> -->
					<div class="clear"></div>
				</div>
				<div class="cart-button cart-footer">
					<div class="left">
						<div class="total-text">
							<p>Total:</p>
						</div>
						<!-- Without coupon !-->
						<!-- Without coupon !-->
						<div class="total-amount without-coupon">
							<p><c:out value="${total}"></c:out></p>
						</div>
					</div>
					<div class="right">
						<a class="proceed-btn" type="button" href="shipping-address">Order
							Now</a>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>