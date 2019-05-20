<%@page import="com.marayaglobal.dao.AdminDBHelper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<%
	String name = AdminDBHelper.adminName(session.getId());
	if (name == null)
		response.sendRedirect("signup");
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add new product</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="css/a-panel.css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/customer-console.css">
</head>
<body>
	<div class="container">
		<form class="border border-light p-5" action="product-registration-check"
			method="post">

			<p class="h4 mb-4 text-center">Add New Product</p>



			<div class="form-group">
				<label for="title">Title*</label> <input type="text"
					class="form-control" id="title" name="title" aria-describedby="emailHelp"
					placeholder="Product Title">
				<!-- <small id="emailHelp"
				class="form-text text-muted">We'll never share your email
				with anyone else.</small> -->
			</div>

			<!-- ===============================================Category, Brand, Model================================= -->
			<div class="form-row mb-4">
				<div class="col">
					<div class="form-group">
						<label for="category">Category*</label> <input type="text"
							class="form-control" id="category"  name="category" aria-describedby="emailHelp"
							placeholder="Category">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="brand">Brand*</label> <input type="text"
							class="form-control" id="brand"  name="brand" aria-describedby="emailHelp"
							placeholder="brand">
					</div>
				</div>

				<div class="col">
					<div class="form-group">
						<label for="model">Model*</label> <input type="text"
							class="form-control" id="model" name="model" aria-describedby="emailHelp"
							placeholder="model">
					</div>
				</div>

			</div>

			<!-- ===============================================Category, Brand, Model================================= -->

			<div class="form-row mb-4">
				<div class="col">
					<div class="form-group">
						<label for="regular_price">Regular Price*</label> <input
							type="text" class="form-control" id="regular_price"
							name="regularprice" aria-describedby="emailHelp" placeholder="regular price">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="discount">Discount%*</label> <input type="text"
							class="form-control" id="discount" name="discount" aria-describedby="emailHelp"
							placeholder="discount">
					</div>
				</div>

			</div>

			<!-- ===============================================RAM and Storage================================= -->
			<div class="form-row mb-4">
				<div class="col">
					<div class="form-group">
						<label for="display_type">RAM Type</label> <input type="text"
							class="form-control" id="display_type"
							name="ramType" aria-describedby="emailHelp" placeholder="display_type">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="display_size">RAM</label> <input type="text"
							class="form-control" id="display_size"
							name="ram" aria-describedby="emailHelp" placeholder="generation">
					</div>
				</div>

				<div class="col">
					<div class="form-group">
						<label for="display_resolution">Storage</label> <input type="text"
							class="form-control" id="display_resolution"
							name="storage" aria-describedby="emailHelp" placeholder="clock speed">
					</div>
				</div>

			</div>


			<!-- ===============================================processor, generation, clock speed================================= -->
			<div class="form-row mb-4">
				<div class="col">
					<div class="form-group">
						<label for="processor">Processor</label> <input type="text"
							class="form-control" id="processor" name="processor" aria-describedby="emailHelp"
							placeholder="processor">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="generation">Generation</label> <input type="text"
							class="form-control" id="generation" name="genaration" aria-describedby="emailHelp"
							placeholder="7th">
					</div>
				</div>

				<div class="col">
					<div class="form-group">
						<label for="clock_speed">Clock Speed</label> <input type="text"
							class="form-control" id="clock_speed"
							name="clockSpeed" aria-describedby="emailHelp" placeholder="clock speed">
					</div>
				</div>

			</div>



			<!-- ===============================================Display Type, Display Size, Display Resolution================================= -->
			<div class="form-row mb-4">
				<div class="col">
					<div class="form-group">
						<label for="display_type">Display Type</label> <input type="text"
							class="form-control" id="display_type"
							name="displayType" aria-describedby="emailHelp" placeholder="display_type">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="display_size">Display Size</label> <input type="text"
							class="form-control" id="display_size"
							name="displaySize" aria-describedby="emailHelp" placeholder="generation">
					</div>
				</div>

				<div class="col">
					<div class="form-group">
						<label for="display_resolution">Display Resolution</label> <input
							type="text" class="form-control" id="display_resolution"
							name="displayResulation" aria-describedby="emailHelp" placeholder="clock speed">
					</div>
				</div>

				<div class="col">
					<div class="form-group">
						<label for="display_resolution">Touch</label> <input type="text"
							class="form-control" id="display_resolution"
							name="touch" aria-describedby="emailHelp" placeholder="clock speed">
					</div>
				</div>


			</div>


			<!-- ===============================================processor, generation, clock speed================================= -->
			<div class="form-row mb-4">
				<div class="col">
					<div class="form-group">
						<label for="processor">Cache Memory</label> <input type="text"
							class="form-control" id="processor" name="touch" aria-describedby="emailHelp"
							placeholder="Category">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="generation">Graphics Chipset</label> <input
							type="text" class="form-control" id="generation"
							name="graphicsChipset" aria-describedby="emailHelp" placeholder="generation">
					</div>
				</div>

				<div class="col">
					<div class="form-group">
						<label for="clock_speed">Graphics Memory</label> <input
							type="text" class="form-control" id="clock_speed"
							name="graphicsMemory" aria-describedby="emailHelp" placeholder="clock speed">
					</div>
				</div>

			</div>
			<!-- ===============================================Network================================= -->
			<div class="form-row mb-4">
				<div class="col">
					<div class="form-group">
						<label for="processor">Networking</label> <input type="text"
							class="form-control" id="processor" name="networking" aria-describedby="emailHelp"
							placeholder="Category">
					</div>
				</div>

			</div>
			<!-- ===============================================Port================================= -->

			<div class="form-row mb-4">
				<div class="col">
					<div class="form-group">
						<label for="processor">Display Port</label> <input type="text"
							class="form-control" id="processor" name="displayPort" aria-describedby="emailHelp"
							placeholder="Category">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="generation">Audio Port</label> <input type="text"
							class="form-control" id="generation" name="audioPort" aria-describedby="emailHelp"
							placeholder="generation">
					</div>
				</div>

				<div class="col">
					<div class="form-group">
						<label for="clock_speed">USB Port</label> <input type="text"
							class="form-control" id="clock_speed"
							name="usbPort" aria-describedby="emailHelp" placeholder="clock speed">
					</div>
				</div>

			</div>


			<!-- ===============================================External Cheractaristic================================= -->

			<div class="form-row mb-4">
				<div class="col">
					<div class="form-group">
						<label for="processor">Bettery</label> <input type="text"
							class="form-control" id="processor" name="bettery" aria-describedby="emailHelp"
							placeholder="Category">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="generation">Weight</label> <input type="text"
							class="form-control" id="generation" name="weight" aria-describedby="emailHelp"
							placeholder="generation">
					</div>
				</div>

				<div class="col">
					<div class="form-group">
						<label for="clock_speed">Color</label> <input type="text"
							class="form-control" id="clock_speed"
							name="color" aria-describedby="emailHelp" placeholder="clock speed">
					</div>
				</div>

			</div>


			<!-- ===============================================Others================================= -->

			<div class="form-row mb-4">
				<div class="col">
					<div class="form-group">
						<label for="processor">Operating System</label> <input type="text"
							class="form-control" id="processor" name="operatingSystem" aria-describedby="emailHelp"
							placeholder="Category">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="generation">Port No</label> <input type="text"
							class="form-control" id="generation" name="portNo" aria-describedby="emailHelp"
							placeholder="generation">
					</div>
				</div>

				<div class="col">
					<div class="form-group">
						<label for="clock_speed">Warranty</label> <input type="text"
							class="form-control" id="clock_speed"
							name="warrenty" aria-describedby="emailHelp" placeholder="clock speed">
					</div>
				</div>

			</div>
			<!-- ===============================================Description================================= -->

			<div class="form-row mb-4">
				<div class="col">
					<div class="form-group">
						<label for="processor">Operating System</label>
						<textarea rows="7" class="form-control" id="processor"
							placeholder="Category" name="description"> </textarea>
					</div>
				</div>


			</div>


			<!-- ===============================================Image================================= -->

			<div class="form-row mb-4">
				<div class="col">
					<div class="form-group">
						<label for="processor">Operating System</label> <input type="file"
							class="form-control" id="processor" name="primaryImage" aria-describedby="emailHelp"
							placeholder="Category">
					</div>
				</div>
			</div>



			<!-- Sign up button -->
			<button class="btn btn-info my-4 btn-block" type="submit">Registration</button>


		</form>
	</div>
</body>
</html>