<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/vendor/etalage.css">
<link rel="stylesheet" href="css/vendor/bootstrap_1.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
	<form class="border border-light p-5">

		<p class="h4 mb-4">Sign up</p>



		<div class="form-group">
			<label for="title">Title*</label> <input type="text" required
				class="form-control" id="title" aria-describedby="emailHelp"
				placeholder="Product Title"> <small id="emailHelp"
				class="form-text text-muted">We'll never share your email
				with anyone else.</small>
		</div>

		<!-- ===============================================Category, Brand, Model================================= -->
		<div class="form-row mb-4">
			<div class="col">
				<div class="form-group">
					<label for="category">Category*</label> <input type="text" required
						class="form-control" id="category" aria-describedby="emailHelp"
						placeholder="Category">
				</div>
			</div>
			<div class="col">
				<div class="form-group">
					<label for="brand">Brand*</label> <input type="text"
						class="form-control" id="brand" aria-describedby="emailHelp"
						placeholder="Product Title">
				</div>
			</div>

			<div class="col">
				<div class="form-group">
					<label for="model">Model*</label> <input type="text" required
						class="form-control" id="model" aria-describedby="emailHelp"
						placeholder="Product Title">
				</div>
			</div>

		</div>

		<!-- ===============================================Category, Brand, Model================================= -->

		<div class="form-row mb-4">
			<div class="col">
				<div class="form-group">
					<label for="regular_price">Regular Price*</label> <input
						type="text" required class="form-control" id="regular_price"
						aria-describedby="emailHelp" placeholder="Category">
				</div>
			</div>
			<div class="col">
				<div class="form-group">
					<label for="discount">Discount%*</label> <input type="text"
						class="form-control" id="discount" aria-describedby="emailHelp"
						placeholder="Product Title">
				</div>
			</div>

		</div>

		<!-- ===============================================RAM and Storage================================= -->
		<div class="form-row mb-4">
			<div class="col">
				<div class="form-group">
					<label for="display_type">RAM Type</label> <input type="text"
						required class="form-control" id="display_type"
						aria-describedby="emailHelp" placeholder="display_type">
				</div>
			</div>
			<div class="col">
				<div class="form-group">
					<label for="display_size">RAM</label> <input type="text"
						class="form-control" id="display_size"
						aria-describedby="emailHelp" placeholder="generation">
				</div>
			</div>

			<div class="col">
				<div class="form-group">
					<label for="display_resolution">Storage</label> <input type="text"
						required class="form-control" id="display_resolution"
						aria-describedby="emailHelp" placeholder="clock speed">
				</div>
			</div>

		</div>


		<!-- ===============================================processor, generation, clock speed================================= -->
		<div class="form-row mb-4">
			<div class="col">
				<div class="form-group">
					<label for="processor">Processor</label> <input type="text"
						required class="form-control" id="processor"
						aria-describedby="emailHelp" placeholder="Category">
				</div>
			</div>
			<div class="col">
				<div class="form-group">
					<label for="generation">Generation</label> <input type="text"
						class="form-control" id="generation" aria-describedby="emailHelp"
						placeholder="generation">
				</div>
			</div>

			<div class="col">
				<div class="form-group">
					<label for="clock_speed">Clock Speed</label> <input type="text"
						required class="form-control" id="clock_speed"
						aria-describedby="emailHelp" placeholder="clock speed">
				</div>
			</div>

		</div>



		<!-- ===============================================Display Type, Display Size, Display Resolution================================= -->
		<div class="form-row mb-4">
			<div class="col">
				<div class="form-group">
					<label for="display_type">Display Type</label> <input type="text"
						required class="form-control" id="display_type"
						aria-describedby="emailHelp" placeholder="display_type">
				</div>
			</div>
			<div class="col">
				<div class="form-group">
					<label for="display_size">Display Size</label> <input type="text"
						class="form-control" id="display_size"
						aria-describedby="emailHelp" placeholder="generation">
				</div>
			</div>

			<div class="col">
				<div class="form-group">
					<label for="display_resolution">Display Resolution</label> <input
						type="text" required class="form-control" id="display_resolution"
						aria-describedby="emailHelp" placeholder="clock speed">
				</div>
			</div>

			<div class="col">
				<div class="form-group">
					<label for="display_resolution">Touch</label> <input type="text"
						required class="form-control" id="display_resolution"
						aria-describedby="emailHelp" placeholder="clock speed">
				</div>
			</div>


		</div>


		<!-- ===============================================processor, generation, clock speed================================= -->
		<div class="form-row mb-4">
			<div class="col">
				<div class="form-group">
					<label for="processor">Cache Memory</label> <input type="text"
						required class="form-control" id="processor"
						aria-describedby="emailHelp" placeholder="Category">
				</div>
			</div>
			<div class="col">
				<div class="form-group">
					<label for="generation">Graphics Chipset</label> <input type="text"
						class="form-control" id="generation" aria-describedby="emailHelp"
						placeholder="generation">
				</div>
			</div>

			<div class="col">
				<div class="form-group">
					<label for="clock_speed">Graphics Memory</label> <input type="text"
						required class="form-control" id="clock_speed"
						aria-describedby="emailHelp" placeholder="clock speed">
				</div>
			</div>

		</div>
		<!-- ===============================================Network================================= -->
		<div class="form-row mb-4">
			<div class="col">
				<div class="form-group">
					<label for="processor">Networking</label> <input type="text"
						required class="form-control" id="processor"
						aria-describedby="emailHelp" placeholder="Category">
				</div>
			</div>

		</div>
		<!-- ===============================================Port================================= -->

		<div class="form-row mb-4">
			<div class="col">
				<div class="form-group">
					<label for="processor">Display Port</label> <input type="text"
						required class="form-control" id="processor"
						aria-describedby="emailHelp" placeholder="Category">
				</div>
			</div>
			<div class="col">
				<div class="form-group">
					<label for="generation">Audio Port</label> <input type="text"
						class="form-control" id="generation" aria-describedby="emailHelp"
						placeholder="generation">
				</div>
			</div>

			<div class="col">
				<div class="form-group">
					<label for="clock_speed">USB Port</label> <input type="text"
						required class="form-control" id="clock_speed"
						aria-describedby="emailHelp" placeholder="clock speed">
				</div>
			</div>

		</div>


		<!-- ===============================================External Cheractaristic================================= -->

		<div class="form-row mb-4">
			<div class="col">
				<div class="form-group">
					<label for="processor">Bettery</label> <input type="text" required
						class="form-control" id="processor" aria-describedby="emailHelp"
						placeholder="Category">
				</div>
			</div>
			<div class="col">
				<div class="form-group">
					<label for="generation">Weight</label> <input type="text"
						class="form-control" id="generation" aria-describedby="emailHelp"
						placeholder="generation">
				</div>
			</div>

			<div class="col">
				<div class="form-group">
					<label for="clock_speed">Color</label> <input type="text" required
						class="form-control" id="clock_speed" aria-describedby="emailHelp"
						placeholder="clock speed">
				</div>
			</div>

		</div>


		<!-- ===============================================Others================================= -->

		<div class="form-row mb-4">
			<div class="col">
				<div class="form-group">
					<label for="processor">Operating System</label> <input type="text"
						required class="form-control" id="processor"
						aria-describedby="emailHelp" placeholder="Category">
				</div>
			</div>
			<div class="col">
				<div class="form-group">
					<label for="generation">Port No</label> <input type="text"
						class="form-control" id="generation" aria-describedby="emailHelp"
						placeholder="generation">
				</div>
			</div>

			<div class="col">
				<div class="form-group">
					<label for="clock_speed">Warranty</label> <input type="text"
						required class="form-control" id="clock_speed"
						aria-describedby="emailHelp" placeholder="clock speed">
				</div>
			</div>

		</div>
		<!-- ===============================================Description================================= -->

		<div class="form-row mb-4">
			<div class="col">
				<div class="form-group">
					<label for="processor">Operating System</label>
					<textarea rows="7" class="form-control" id="processor"
						placeholder="Category"> </textarea>
				</div>
			</div>


		</div>


		<!-- ===============================================Image================================= -->

		<div class="form-row mb-4">
			<div class="col">
				<div class="form-group">
					<label for="processor">Operating System</label> <input type="file"
						required class="form-control" id="processor"
						aria-describedby="emailHelp" placeholder="Category">
				</div>
			</div>
		</div>



		<!-- Sign up button -->
		<button class="btn btn-info my-4 btn-block" type="submit">Registration</button>


	</form>
</body>
</html>