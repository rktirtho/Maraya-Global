<%@page import="com.marayaglobal.dao.VendorDBHelper"%>
<%@page import="com.marayaglobal.beans.user.Vendor"%>
<%@page import="java.util.List"%>
<%@page import="com.marayaglobal.dao.AdminDBHelper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<%
	String name = AdminDBHelper.adminName(session.getId());
	if (name == null)
		response.sendRedirect("signup");
	
	List<Vendor> vendors = VendorDBHelper.getVerifiedVendor();
	request.setAttribute("customers", vendors);
%>

<head>
<title>All Product</title>

</head>
<body>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="u" items="${vendors}">
   <tr>
      <td scope="row">${u.getName()}</td>
      <td><a href="mailto:">${u.getEmail()}</a></td>
      <td>${u.getPhoneNumber()}</td>
      <td>${u.isActive()}</td>
      <td>${u.getPhoneNumber()}</td>
      <td><a href="" class="btn btn-primary">Show Profile</a></td>
     
    </tr>
  
  
  </c:forEach>
   
  
   
  </tbody>
</table>

</body>
</html>