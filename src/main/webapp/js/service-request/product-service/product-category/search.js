/**
 * 
 */
$(function() {
var url= location.search;
var path=location.search;

	console.log(path)
	var offset = 0;
	var limit = 36;
	var query = 'webapi/myresource/search'+path+'&start'+offset+'&end='+limit;
	$.get(query, showData, 'json');

	function yHandler() {
		// Watch video for line by line explanation of the code
		// http://www.youtube.com/watch?v=eziREnZPml4
		var wrap = $(document);
		var contentHeight = wrap.innerHeight();
		var yOffset = window.pageYOffset;
		var y = yOffset + window.innerHeight;
		console.log(contentHeight);
		console.log(y);

		if (y >= contentHeight) {
			$.ajax({
				type : "GET",
				url : query,
				cache : false,
				success : function(data) {
					showData(data);
					
				}
			});
		}

	}
	window.onscroll = yHandler;
	
	
	
    $(window).scroll(function(){ 
        if ($(this).scrollTop() > 100) { 
            $('#scroll').fadeIn(); 
        } else { 
            $('#scroll').fadeOut(); 
        } 
    }); 
    $('#scroll').click(function(){ 
        $("html, body").animate({ scrollTop: 0 }, 600); 
        return false; 
    });
    
    
    
	$('.logint-btn').click(
			function() {
				var userName = $('._sh_login_username').val();
				var password = $('._sh_login_password').val();
				if(userName !="" && password !=null){}
				$.get('http://localhost:8080/MarayaGlobal/webapi/user/login?email='+userName+'&password='+password, function(data) {
					 location.reload();	
					
				}, 'json');
				
				//$.ajax({
					//type : "POST",
					//url : 'http://localhost:8080/MarayaGlobal/webapi/user/login?email=ipsum@quis.com&password=5726',
					//cache : false,
					//success : function(data) {
						//console.log(data)
				//	}

				//});
			});
	
	

	function showData(data) {
		data
				.forEach(function(item) {
					var row = $('.all-item');

					var col = $("<div></div>").addClass('col-lg-3 col-md-6 py-4');
					var card = $('<div></div>').addClass('card');
					var image = $(
							"<img src='http://lorempixel.com/400/200/sports/"
									+ Math.ceil(Math.random() * 10) + "'>")
							.addClass('card-image p-2');

					var cardBody = $('<div></div>').addClass('card-body');
					var cardTitle = $('<a target="_blank"></a>').addClass(
							'card-title text-center').attr('href',
							'product-view.jsp?id=' + item.id);
					var cardTextContainer = $('<div></div>')
							.addClass(
									'd-flex justify-content-between align-items-center');

					var priceContainer = $('<div></div>').addClass(
							'price add-card');

					var currentPrice = $('<strong></strong>')
							.html(
									'Tk'
											+ (item.regularprice - (item.regularprice * item.discount) / 100));
					var mainPrice = $('<del></del>').html(
							"Tk " + item.regularprice);

					var buttonContainer = $('<div></div>').addClass('add-card');
					var cardButton = $('<button value="'+item.id+'" id="product'+item.id+'"></button>').addClass(
							'btn btn-danger add-to-cart rounded-0')
							.html('ADD TO CART').click(function(){
								var itemId= $(this).val()
								$.ajax({
									type : "GET",
									url : "webapi/cart/add?id=" + itemId,
									cache : false,
									success : function(data) {
										
										if (data == -1) {
											alert('You Have to login first')
										} else if(data == 1){
											alert('added to your cart');
											$('.btn-add-cart').prop("disabled",true);
										}else{
											
										}
									}
								});
							});

					if (item.discount > 0) {
						priceContainer
								.append(currentPrice, "<br>", mainPrice,
										'<br> <span>Save ' + item.discount
												+ '%</span>');
					} else {
						priceContainer.append(mainPrice);
					}
					buttonContainer.append(cardButton);
					cardTextContainer.append(priceContainer, buttonContainer);
					cardTitle.html(item.title);
					cardBody.append(cardTitle, cardTextContainer);
					card.append(image);
					card.append(cardBody);
					col.append(card);
					row.append(col);

				});
		offset = offset + limit;
	}

});