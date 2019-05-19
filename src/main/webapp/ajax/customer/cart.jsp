<%@page import="com.marayaglobal.order.CartView"%>
<%@page import="com.marayaglobal.dao.CartDBHelper"%>
<%@page import="java.util.List"%>
<%@page import="com.marayaglobal.dao.OrderDBHelper"%>
<%@page import="com.marayaglobal.order.Order"%>
<%@page import="com.marayaglobal.beans.user.Customer"%>
<%@page import="com.marayaglobal.dao.CustomerDBHelper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%
Customer currentUser = (Customer) CustomerDBHelper.getBySession(session.getId());

if(currentUser.getName() == null){
	//response.sendRedirect("signup");
}


List<CartView>  cart = CartDBHelper.getCartByCustomerId(currentUser.getId());
request.setAttribute("user", currentUser);
request.setAttribute("carts", cart);

%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
					<c:forEach var="u" items="${carts}">
					
					
					
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
											<a href="#"><c:out value="${u.getTitle() }"></c:out> </a>
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
							<td class="col-sm-1 col-md-1 text-center"><strong><c:out value="${u.getRegular_price() }"></c:out></strong></td>
							<td class="col-sm-1 col-md-1 text-center"><strong><c:out value="${u.getCurrentPrice() }"></c:out></strong></td>
							<td class="col-sm-1 col-md-1 text-center"><strong><c:out value="${u.getDiscount() }"></c:out>%</strong></td>
							<td class="col-sm-1 col-md-1 text-center"><strong><c:out value="${u.getCurrentPrice() *u.getQuantity() }"></c:out></strong></td>
							<td class="col-sm-1 col-md-1">
								<a href="index.jsp" class="btn btn-danger">
									<span class="glyphicon glyphicon-remove"></span>Remove
								</a>
							</td>
						</tr>
						</c:forEach>
						<tr class="cart-item-end">
							<td> </td>
							<td> </td>
							<td> </td>
							<td><h5>Subtotal</h5></td>
							<td class="text-right"><h5>
									<strong>$24.59</strong>
								</h5></td>
						</tr>
						<tr>
							<td> </td>
							<td> </td>
							<td> </td>
							<td><h5>Estimated shipping</h5></td>
							<td class="text-right"><h5>
									<strong>$6.94</strong>
								</h5></td>
						</tr>
						<tr>
							<td> </td>
							<td> </td>
							<td> </td>
							<td><h3>Total</h3></td>
							<td class="text-right"><h3>
									<strong>$31.53</strong>
								</h3></td>
						</tr>
						<tr>
							<td> </td>
							<td> </td>
							<td> </td>
							<td>
								<button type="button" class="btn btn-default">
									<span class="glyphicon glyphicon-shopping-cart"></span>
									Continue Shopping
								</button>
							</td>
							<td>
								<button type="button" class="btn btn-success">
									Checkout <span class="glyphicon glyphicon-play"></span>
								</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>