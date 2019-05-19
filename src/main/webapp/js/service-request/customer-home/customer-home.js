$(function() {
	$.ajax({
		url : "ajax/customer/account.jsp",
		success : function(result) {
			$("#account").html(result);
		}
	});
	
	$("#account").click(function() {
		$.ajax({
			url : "ajax/customer/account.jsp",
			success : function(result) {
				$("#account").html(result);
			}
		});
	});
	
	$("#cart-tab").click(function() {
		$.ajax({
			url : "ajax/customer/cart.jsp",
			success : function(result) {
				$("#cart").html(result);
			}
		});
	});
	
	$("#order-tab").click(function() {
		
		$.ajax({
			url : "ajax/customer/order.jsp",
			success : function(result) {
				$("#orders").html(result);
			}
		});
	});

//	$('#cart-tab').click(function() {
//		$.ajax({
//			type : "get",
//			url : 'webapi/customers/1/cart-item',
//			cache : false,
//			success : function(data) {
//				cartSetter(data);
//			}
//		});
//
//	});
//	$("#home-tab").click(function() {
//
//		$.ajax({
//			type : "GET",
//			url : "webapi/customers/1/address",
//			cache : false,
//			success : function(data) {
//				$("#streat").html(data.streetName)
//				$("#area").html(data.areaName)
//				$("#sub-dist").html(data.district)
//				$("#dist").html(data.district + '-' + data.postCode)
//			}
//		}
//
//		);
//		$.ajax({
//			type : "GET",
//			url : "webapi/customers/1/profile",
//			cache : false,
//			success : function(data) {
//				$("#name").html(data.name)
//				$("#email").html(data.email)
//				$("#phone-number").html(data.phoneNumber)
//				$("#gender").html(data.id)
//			}
//
//		});
//	});
//
//});
//
//function cartSetter(data) {
//	data.forEach(function(item) {
//		var productStatus= "";
//		if (item.available) {
//			productStatus = "In Stock"
//		} else {
//			productStatus="Out of Stock"
//		}
//				var tableBody = $('.items');
//				var row = $('<tr></tr>');
//				var td1 = $('<td></td>').addClass('col-sm-8 col-md-6');
//				var td1Media = $('<div></div>').addClass('media');
//				var imageAnchor = $('<a></a>').addClass('thumbnail pull-left');
//				var productImage = $('<img/>')
//						.addClass('media-object')
//						.attr(
//								'src',
//								"http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png");
//
//				var mediaBody = $('<div></div>').addClass('media-body');
//				var title = $('<h4></h4>').addClass('media-heading');
//				var titleText = $('<a></a>').html(item.title);
//				
//				var brandName = $('<h6></h6>').addClass('media-heading');
//				var brandText= $('<a></a>').html("By "+item.brandName);
//				
//				
//				
//				var status = $('<span></span>').html('Status: ');
//				var isAvailable = $('<span></span>').html(productStatus).addClass('text-success');
//				
//				title.append(titleText);
//				brandName.append(brandText)
//				mediaBody.append(title,brandName, status, isAvailable);
//
//				imageAnchor.append(productImage);
//				td1Media.append(imageAnchor,mediaBody);
//				td1.append(td1Media);
//
//				var td2 = $('<td></td>').addClass('col-sm-1 col-md-1');
//				var quantity = $('<input>').addClass('form-control').html(3);
//
//				var td3 = $('<td></td>').addClass(
//						'col-sm-1 col-md-1 text-center');
//				var unitPrice = $('<strong></strong').html(543);
//				td3.append(unitPrice);
//
//				var td4 = $('<td></td>').addClass(
//						'col-sm-1 col-md-1 text-center');
//				var totalPrice = $('<strong></strong').html(1000);
//				td4.append(totalPrice);
//
//				var td5 = $('<td></td>').addClass(
//						'col-sm-1 col-md-1 text-center');
//				var button = $('<button></button>').addClass('btn btn-danger');
//				var span = $('<span></span>').addClass(
//						'glyphicon glyphicon-remove').html('Remove');
//
//				button.append(span);
//				td5.append(button);
//
//				row.append(td1, td2, td3, td4, td5);
//				$('.cart-item-end').before(row);
//			});

});