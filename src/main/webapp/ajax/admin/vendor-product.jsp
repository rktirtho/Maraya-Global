
<%@page import="com.marayaglobal.dao.ProductDBHelper"%>
<%@page import="com.marayaglobal.product.Product"%>
<%@page import="com.marayaglobal.dao.VendorDBHelper"%>
<%@page import="java.util.List"%>
<%@page import="com.marayaglobal.dao.AdminDBHelper"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	String name = AdminDBHelper.adminName(session.getId());
	if (name == null)
		response.sendRedirect("signup");
	
	List<Product> products = ProductDBHelper.getAll(0, 20);
	request.setAttribute("products", products);
%>

<head>
<title>All Product</title>

</head>
<body>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Title</th>
      <th scope="col">Unit Price</th>
      <th scope="col">Discount</th>
      <th scope="col">Current Price</th>
      <th scope="col">View</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="u" items="${products}">
   <tr>
      <td scope="row">${u.getTitle()}</td>
      <td><a href="mailto:">${u.getUnitPrice()}</a></td>
      <td>${u.getDiscount()}%</td>
      <td>${u.getUnitPrice() - (u.getUnitPrice()/u.getDiscount())}</td>
      <td>${u.getView()}</td>
      <td><a href="" class="btn btn-primary">Show Profile</a></td>
     
    </tr>
  
  
  </c:forEach>

  
   
  </tbody>
</table>


</body>
</html>