
<%@page import="com.marayaglobal.dao.AdminProductDBHelper"%>
<%@page import="com.marayaglobal.product.AdminProduct"%>
<%@page import="com.marayaglobal.dao.ProductDBHelper"%>
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
	
	List<AdminProduct> products = AdminProductDBHelper.getAll();
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
      <th scope="col">Brand</th>
      <th scope="col">Model</th>
      <th scope="col">Processor</th>
      <th scope="col">RAM</th>
      <th scope="col">Graphics</th>
      <th scope="col">Price</th>
      <th scope="col">View</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="u" items="${products}">
   <tr>
      <td scope="row">${u.getTitle()}</td>
      <td><a href="mailto:">${u.getBrand()}</a></td>
      <td>${u.getModel()}%</td>
      <td>${u.getProcessor()} - ${u.getGenaration()} Gen</td>
      <td>${u.getRam()}</td>
      <td>${u. getGraphicsMemory()}</td>
      <td><span>Regular: BDT</span> ${u.getRegularprice()} <br> <span>Discount: </span> ${u.getDiscount()}% <br><span>Now: BDT</span> ${u.currentPrice()} </td>
      <td>${u.getView()}</td>
      <td><a href="" class="btn btn-primary">Details</a></td>
     
    </tr>
  
  
  </c:forEach>

  
   
  </tbody>
</table>


</body>
</html>