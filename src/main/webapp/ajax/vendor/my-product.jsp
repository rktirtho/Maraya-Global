<%@page import="com.marayaglobal.product.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.marayaglobal.dao.ProductDBHelper"%>
<%@page import="com.marayaglobal.dao.VendorDBHelper"%>
<%@page import="com.marayaglobal.beans.user.Vendor"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%
	Vendor vendor = VendorDBHelper.getBySession(session.getId());
	if (vendor.getName() == null)
		response.sendRedirect(request.getContextPath());

	List<Product> products = ProductDBHelper.getAllByAuthorId(vendor.getId(), 0, 10);
	request.setAttribute("products", products);
%>
<title>Insert title here</title>
</head>
<body>
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Product Name</th>
				<th scope="col">Category</th>
				<th scope="col">Brand</th>
				<th scope="col">Unit Size</th>
				<th scope="col">Unit/Price</th>
				<th scope="col">View</th>
				<th scope="col">Published</th>
				<th scope="col">Description</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="p" items="${products}">
				<tr>
					<td scope="row">${p.getTitle()}</td>
					<td scope="row">${p.getCategory()}<br>${p.getSubCategory()}</td>
					<td scope="row">${p.getBrandName()}</td>
					<td scope="row">${p.getUnitSize()}</td>
					<td scope="row">Unit Price: ${p.getUnitPrice()}<br>
						Discount: ${p.getDiscount()}%<br>Current Price:
						${p.getCurrentPrice()}
					</td>
					<td scope="row">${p.getView()}</td>
					<td scope="row"><c:choose>
							<c:when test="${p.isIsPublished()}">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="${p.getId() }" checked> <label
										class="custom-control-label" for="${p.getId() }"></label>
								</div>
							</c:when>
							<c:otherwise>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="${p.getId() }"> <label
										class="custom-control-label" for="${p.getId() }"></label>
								</div>
							</c:otherwise>
						</c:choose></td> 
					<td><a class="btn btn-outline-success" target="_blank"
					href="my-product?name=${p.getTitle()}&id=${p.getId()}" >View</a></td>

				</tr>


			</c:forEach>



		</tbody>
	</table>

</body>
</html>