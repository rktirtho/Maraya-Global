<%@page import="com.marayaglobal.dao.AddressDBHelper"%>
<%@page import="com.marayaglobal.beans.user.Address"%>
<%@page import="com.marayaglobal.dao.CustomerDBHelper"%>
<%@page import="com.marayaglobal.beans.user.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<%
Customer currentUser = (Customer) CustomerDBHelper.getBySession(session.getId());

if(currentUser.getName() == null){
	//response.sendRedirect("signup");
}


Address address = AddressDBHelper.getByUserId(currentUser.getId());
request.setAttribute("user", currentUser);
request.setAttribute("a", address);

%>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid py-4">
					<div class="row">
						<div class="col-lg-4 col-md-12 pb-3 pb-5">
							<div class="card">
								<div class="card-body">
									<h4 class="py-3 font-weight-bold">Personal Profile</h4>
									<p class="card-text" id="name"><c:out value="${user.getName()}"></c:out></p>
									<p class="card-text py-2" id="email"><c:out value="${user.getEmail()}"></c:out></p>
									<p class="card-text" id="phone-number"><c:out value="${user.getPhoneNumber()}"></c:out> </p>
									<p class="card-text py-2" id="gender">Male</p>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-12 pb-5">
							<div class="card">
								<div class="card-body">
									<h4 class="py-3 font-weight-bold">Personal Address</h4>
									<p class="card-text" id="streat"><c:out value="${a.getStreetName()}"></c:out> </p>
									<p class="card-text py-2" id="area" ><c:out value="${a.getAreaName()}"></c:out></p>
									<p class="card-text" id="sub-dist"><c:out value="${a.getDistrict()}"></c:out></p>
									<p class="card-text py-2" id = "dist"><c:out value="${a.getPostCode()}"></c:out></p>


								</div>
							</div>

						</div>

						<div class="col-lg-4 col-md-12 pb-3 pb-5">
							<div class="card">
								<div class="card-body">
									<h4 class="py-3 font-weight-bold">Billing Address</h4>
									<p class="card-text">89/3 Nasir Uddin Sardar Lane</p>
									<p class="card-text py-2">Koltabazar</p>
									<p class="card-text">Sutrapur</p>
									<p class="card-text py-2">Dhaka-1100</p>


								</div>
							</div>

						</div>

						<div class="col-12 my-2 card">
							<h4 class="py-3">Recent Orders</h4>
							<table class="table">
								<thead>
									<tr>
										<th scope="col">Order#</th>
										<th scope="col">Placed On</th>
										<th scope="col">Item</th>
										<th scope="col">Quantity</th>
										<th scope="col">Total</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">4514556851</th>
										<td>12/3/2019</td>
										<td>Otto</td>
										<td>5</td>
										<td>1200</td>
									</tr>
									<tr>
										<th scope="row">45145562131</th>
										<td>4/12/2018</td>
										<td>Thornton</td>
										<td>1</td>
										<td>15000</td>
									</tr>
									<tr>
										<th scope="row">4514556415</th>
										<td>8/10/2018</td>
										<td>the Bird</td>
										<td>2</td>
										<td>9523</td>
									</tr>
								</tbody>
							</table>

						</div>
					</div>
				</div>

</body>
</html>