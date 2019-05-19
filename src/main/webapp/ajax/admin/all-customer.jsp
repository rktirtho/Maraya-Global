
<%@page import="com.marayaglobal.beans.user.Customer"%>
<%@page import="java.util.List"%>
<%@page import="com.marayaglobal.dao.CustomerDBHelper"%>
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
	
	List<Customer> customers = CustomerDBHelper.getall();
	request.setAttribute("customers", customers);
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
      <th scope="col">Active</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="u" items="${customers}">
   <tr>
      <td scope="row">${u.getName()}</td>
      <td><a href="mailto:">${u.getEmail()}</a></td>
      <td>${u.getPhoneNumber()}</td>
      <td>${u.isActive()}</td>
      <td><a href="" class="btn btn-primary">Show Profile</a></td>
     
    </tr>
  
  
  </c:forEach>

  
   
  </tbody>
</table>


</body>
</html>