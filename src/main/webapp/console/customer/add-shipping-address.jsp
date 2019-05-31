<%@page import="com.marayaglobal.dao.CustomerDBHelper"%>
<%@page import="org.glassfish.jersey.internal.inject.Custom"%>
<%@page import="com.marayaglobal.beans.user.Customer"%>
<%@page import="com.marayaglobal.util.Basic"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
	Customer currentUser = (Customer) CustomerDBHelper.getBySession(session.getId());

	if (currentUser.getName() == null) {
		response.sendRedirect(Basic.DOMAIN_NAME);
	}
%>
<title>Maraya Global |Shipping Address</title>
<link rel="stylesheet" href="css/vendor/bootstrap.css">
</head>
<body>
	<div class="container  col-lg-6 mx-auto">
		<div class="py-3">
			<a href="<%=Basic.DOMAIN_NAME%>"><img alt="maraya global"
				style="height: 50px" src="images/util/logo.png"> </a>
		</div>
		<div class="">
			<form action="place-order" method="post">
				<div class="form-group">
					<!-- left unspecified, .bmd-form-group will be automatically added (inspect the code) -->
					<label for="formGroupExampleInput" class="bmd-label-floating">Name</label>
					<input type="text" value="<%= currentUser.getName()%>" name="name" class="form-control"
						id="formGroupExampleInput">
				</div>
				<div class="form-group bmd-form-group">
					<!-- manually specified -->
					<label for="formGroupExampleInput2" class="bmd-label-floating">Shipping
						Phone Number</label> <input name="phoneNumber" type="text" class="form-control"
						id="formGroupExampleInput2">
				</div>
				<div class="form-group">
					<!-- left unspecified, .bmd-form-group will be automatically added (inspect the code) -->
					<label for="formGroupExampleInput" class="bmd-label-floating">Shipping
						City</label> <input name="city" type="text" class="form-control"
						id="formGroupExampleInput">
				</div>
				<div class="form-group bmd-form-group">
					<!-- manually specified -->
					<label for="formGroupExampleInput2" class="bmd-label-floating">Shipping
						Post Code</label> <input name="postCode" type="text" class="form-control"
						id="formGroupExampleInput2">
				</div>
				<div class="form-group">
					<!-- left unspecified, .bmd-form-group will be automatically added (inspect the code) -->
					<label for="formGroupExampleInput" class="bmd-label-floating">Shipping
						Address</label> <input name="address" type="text" class="form-control"
						id="formGroupExampleInput">
				</div>
				<div class="float-right">
					<a href="cart" class="btn btn-outline-dark px-3">Back</a>
					<button type="submit" class="btn btn-danger px-3">Continue</button>
				</div>
			</form>
		</div>
	</div>

	<script type="text/javascript" src="../../js/vendor/jquery-3.3.1.js"></script>
	<script type="text/javascript"
		src="../../js/vendor/bootstrap.bundle.js"></script>
	<script type="text/javascript" src="../../js/vendor/bootstrap.js"></script>
</body>
</html>