<%@page import="com.marayaglobal.dao.MassageDBHelper"%>
<%@page import="com.marayaglobal.beans.massage.Massage"%>
<%@page import="java.util.List"%>
<%@page import="com.marayaglobal.dao.AdminDBHelper"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%
	String name = AdminDBHelper.adminName(session.getId());
	if (name == null)
		response.sendRedirect("signup");
	
	List<Massage> massages = MassageDBHelper.getMassages();
	request.setAttribute("u", massages);
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
      <th scope="col">Massage</th>
      <th scope="col">Time</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="u" items="${u}">
   <tr>
      <td scope="row">${u.getName()}</td>
      <td><a href="mailto:">${u.getEmail()}</a></td>
      <td>${u.getMassage()}</td>
      <td>${u.getTime()}</td>
      <td><a href="" class="btn btn-primary">Show Profile</a></td>
     
    </tr>
  
  
  </c:forEach>

  
   
  </tbody>
</table>


</body>
</html>