
<%@page import="com.marayaglobal.dao.VendorDBHelper"%>
<%@page import="com.marayaglobal.beans.user.Vendor"%>
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
	
	List<Vendor> vendors = VendorDBHelper.getAllVendorAccountRequest();
	request.setAttribute("vendors", vendors);
%>

<head>
<title>All Product</title>

</head>
<body>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Phone Number</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="u" items="${vendors}">
   <tr>
      <td scope="row">${u.getName()}</td>
      <td><a href="mailto:">${u.getEmail()}</a></td>
      <td>${u.getPhoneNumber()}</td>
      <td><a href="" class="btn btn-primary">Verify</a></td>
     
    </tr>
  
  
  </c:forEach>

  
   
  </tbody>
</table>


</body>
</html>