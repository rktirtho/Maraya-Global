<%@page import="com.marayaglobal.dao.AddressDBHelper"%>
<%@page import="com.marayaglobal.beans.user.Address"%>
<%@page import="com.marayaglobal.dao.VendorDBHelper"%>
<%@page import="com.marayaglobal.beans.user.Vendor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%
	Vendor vendor = VendorDBHelper.getBySession(session.getId());
	if (vendor.getName() == null)
		response.sendRedirect(request.getContextPath());
	request.setAttribute("u", vendor);
	Address address = AddressDBHelper.getByUserId(vendor.getId());
%>
</head>
<body>
	<div class="col-8 mx-auto">
		<h3 class="text-center py-3">Account</h3>
		<form>
			<div class="form-group">
				<label for="formGroupExampleInput">Vendor Name</label> <input
					type="text" class="form-control" id="formGroupExampleInput"
					placeholder="Example input" value="<%=vendor.getName()%>"
					disabled>
			</div>
			<div class="row py-3">
				<div class="col">
					<label for="formGroupExampleInput">Email</label> <input type="text"
						class="form-control" id="formGroupExampleInput"
						placeholder="Example input" value="<%=vendor.getEmail()%>"
						disabled>
				</div>
				<div class="col">
					<label for="formGroupExampleInput">Phone Number</label> <input
						type="text" class="form-control" id="formGroupExampleInput"
						placeholder="Example input" value="<%=vendor.getPhoneNumber()%>"
						disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput2">Address</label>
				<textarea class="form-control" id="formGroupExampleInput2"
					placeholder="Address Details" rows="5s"><%=address.getStreetName()%></textarea>
			</div>

			<div class="row ">
				<div class="col">
					<label for="formGroupExampleInput">Sub District</label> <input
						type="text" class="form-control" id="formGroupExampleInput"
						placeholder="Example input" value="<%=address.getAreaName()%>"
						disabled>
				</div>
				<div class="col">
					<label for="formGroupExampleInput">District</label> <input
						type="text" class="form-control" id="formGroupExampleInput"
						placeholder="Example input" value="<%=address.getDistrict()%>"
						disabled>
				</div>
			</div>

			<div class="row py-3">
				<div class="col">
					<label for="formGroupExampleInput">Post Code</label> <input
						type="text" class="form-control" id="formGroupExampleInput"
						placeholder="Example input" value="<%=address.getPostCode()%>"
						disabled>
				</div>
				<div class="col">
					<label for="formGroupExampleInput">Vendor Name</label> <input
						type="text" class="form-control" id="formGroupExampleInput"
						placeholder="Example input">
				</div>
			</div>
			<div class="d-flex justify-content-center">
				<button class="btn btn-warning px-4" id="edit-btn">Edit</button>
				<button class="btn btn-danger mx-5" id="cancle-btn">Cancle</button>
				<button class="btn btn-success" id="update-btn">Update</button>
				
			</div>

		</form>

	</div>
	<script type="text/javascript">
	$(document).ready(function(){
		$('#update-btn').hide();
		$('#cancle-btn').hide();
		$('#edit-btn').click(function(){
			$('#update-btn').fadeIn(500);
			$('#cancle-btn').fadeIn(500);
			$(this).hide();
			$('.form-control').removeAttr("disabled","disabled");
		});
		
		
		$('#cancle-btn').click(function(){
			$('#update-btn').hide();
			$('#cancle-btn').hide();
			$('#edit-btn').fadeIn(1000);
			$('.form-control').attr("disabled","disabled");
			
		});
	});
	</script>
</body>
</html>