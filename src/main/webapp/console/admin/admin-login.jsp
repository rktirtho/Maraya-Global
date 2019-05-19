<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="css/vendor/bootstrap_1.css">
<link rel="stylesheet" type="text/css"
	href="css/vendor/fontawesome-all.min.css">
</head>
<body>
	<div class="cotainer">
		<div class="col-lg-5 col-md-10 col-sm-12 mx-auto">
			<div class="card">

				<h5 class="card-header bg-primary white-text text-center py-4">
					<strong>Sign in</strong>
				</h5>

				<div class="card-body px-lg-5 pt-5">

					<form class="md-form" style="color: #757575;" action="admin-login-check" method="POST">
						<label for="materialLoginFormEmail">E-mail</label> <input
							type="email" name="email" id="materialLoginFormEmail" class="form-control">

						<label for="materialLoginFormPassword">Password</label> <input
							type="password" name="password" id="materialLoginFormPassword"
							class="form-control">


						<div class="d-flex align-items-center justify-content-between">
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									id="materialLoginFormRemember"> <label
									class="form-check-label" for="materialLoginFormRemember">Remember
									me</label>
							</div>
							<div>
								<a href="">Forgot password?</a>
							</div>
						</div>


						<button
							class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0"
							type="submit">Sign in</button>

						<div class="text-center">
							<p>
								Not a member? <a href="">Register</a>
							</p>

							<p>or sign in with:</p>
							<a type="button" class="btn-floating btn-fb btn-sm"> <i
								class="fab fa-facebook-f"></i>
							</a> <a type="button" class="btn-floating btn-tw btn-sm"> <i
								class="fab fa-twitter"></i>
							</a> <a type="button" class="btn-floating btn-li btn-sm"> <i
								class="fab fa-linkedin-in"></i>
							</a> <a type="button" class="btn-floating btn-git btn-sm"> <i
								class="fab fa-github"></i>
							</a>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>

</body>
</html>