<%-- 
    Document   : registration
    Created on : May 9, 2019, 10:59:49 AM
    Author     : DELL
--%>
<%

%>
<%@page import="com.marayaglobal.beans.user.Customer"%>
<%@page import="com.marayaglobal.dao.CustomerDBHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Maraya Global | Registration</title>
<link rel="stylesheet" type="text/css" href="css/header/1.css">
<link rel="stylesheet" type="text/css" href="css/header/2.css">
<link rel="stylesheet" type="text/css" href="css/header/3.css">
<link rel="stylesheet" type="text/css" href="css/header/4.css">
<link rel="stylesheet" type="text/css" href="css/header/5.css">
<link rel="stylesheet" type="text/css" href="css/header/7.css">
<link rel="stylesheet" type="text/css" href="css/header/9.css">
<link rel="stylesheet" type="text/css" href="css/header/8.css">
<link rel="stylesheet" type="text/css" href="css/header/13.css">
<link rel="stylesheet" type="text/css" href="css/header/14.css">
<link type="text/css" rel="stylesheet" href="css/vendor/bootstrap_1.css" />
<link rel="stylesheet" type="text/css" href="css/registration.css" />

</head>
<body>
	<%@include file="../static-page/nav-bar.jsp"%>

	<div class="container my-5">
		<div class="row justify-content-center">
			<div class="col-md-5">
				<div class="card">
					<div class="card-header">Register</div>
					<div class="card-body">

						<div class="form-horizontal" id="resistrationForm">

							<div class="form-group">
								<label for="name" class="cols-sm-2 control-label">Your
									Name<span>*</span>
								</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-user fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="name" id="name"
											placeholder="Enter your Name" required
											pattern="[A-Za-z0-9]{1,20}" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="email" class="cols-sm-2 control-label">Your
									Email<span>*</span>
								</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-envelope fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="email" id="email"
											placeholder="Enter your Email" required />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="username" class="cols-sm-2 control-label">Phone
									Number<span>*</span>
								</label>
								<div class="cols-sm-6">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-users fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="phoneNumber"
											id="phoneNumber" placeholder="e.g: 01000000000" required
											pattern="[0-9]{11}" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="password" class="cols-sm-2 control-label">Password<span>*</span></label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
											type="password" class="form-control" name="password"
											id="password" placeholder="Enter your Password" required />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="confirm" class="cols-sm-2 control-label">Confirm
									Password<span>*</span>
								</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
											type="password" class="form-control" name="confirm"
											id="confirm" placeholder="Confirm your Password" required />
									</div>
									<div class="form-group">
										<span class="error" style="color: red"></span><br />
									</div>
								</div>
							</div>


							<div class="custom-control custom-checkbox py-3">
								<input type="checkbox" class="custom-control-input"
									id="customCheck1" checked required> <label
									class="custom-control-label" for="customCheck1">I agree
									to <a href="term-and-condition">terms</a> and <a
									href="privacy-and-policy">privacy policy</a>.
								</label>
							</div>


							<div class="custom-control custom-checkbox ">
								<input type="checkbox" class="custom-control-input"
									id="customCheck1" checked> <label
									class="custom-control-label" for="customCheck1">I would
									like to receive promotional offers from Maraya Global</label>
							</div>
							<div class="login-register">
								<label class="err-msg"
									id="current"> </label>
							</div>

							<div class="form-group mt-3">
								<button id="signup"
									class="btn btn-primary btn-lg btn-block login-button"
									disabled="disabled">Sign Up</button>
							</div>
							<div class="login-register">
								<a href="/marayaglobal">Login</a>
							</div>
						</div>
					</div>

				</div>

			</div>
		</div>






	</div>
	<script type="text/javascript" src="js/vendor/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/vendor/bootstrap.bundle.js"></script>
	<script type="text/javascript" src="js/vendor/bootstrap.js"></script>
	<script type="text/javascript"
		src="js/service-request/product-service/home.js"></script>
	<script>
		$(document).ready(

				function() {
					var name;
					var email;
					var phoneNumber;
					var password;
					var confirm;

					$('#resistrationForm input').keyup(
							function() {
								name = $('#name').val();
								email = $('#email').val();
								phoneNumber = $('#phoneNumber').val();
								password = $('#password').val();
								confirm = $('#confirm').val;
								console.log(name);
								console.log(email);
								console.log(phoneNumber);
								console.log(password);
								if (name != "" && email != ""
										&& phoneNumber != "" && password != ""
										&& confirm != "") {
									if (password == confirm) {

									}

									$('#signup').removeAttr('disabled')
								}
							});

					var allowsubmit = false;
					$(function() {
						//on keypress 
						$('#confirm').keyup(function(e) {
							//get values 
							var pass = $('#password').val();
							var confpass = $(this).val();

							//check the strings
							if (pass == confpass) {
								//if both are same remove the error and allow to submit
								$('.error').text('');
								allowsubmit = true;

							} else {
								//if not matching show error and not allow to submit
								$('.error').text('Password not matching');
								allowsubmit = false;
							}
						});

						//jquery form submit
						$('#resistrationForm').submit(function() {

							var pass = $('#password').val();
							var confpass = $('#confirm').val();

							//just to make sure once again during submit
							//if both are true then only allow submit
							if (pass == confpass) {
								allowsubmit = true;
							}
							if (allowsubmit) {
								return true;
							} else {
								return false;
							}
						});
					});

					$()

					$('#signup').click(function() {

						$.post('signup/check', {
							name : name,
							email : email,
							phoneNumber : phoneNumber,
							password : password
						}, function(data) {
							if (data == "0") {
								colsole.log('failed')
							} else if (data == "1") {
								console.log('success')
							}
							if (data == "2") {
								console.log('user exixt')
							} else {
								console.log(data)
								$("#current").html(data)
							}
						});
					});
				});
	</script>
</body>
</html>
