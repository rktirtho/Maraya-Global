/**
 * 
 */
/**
 * 
 */

$(function() {
	var url = location.pathname;
	var path = url.replace('/MarayaGlobal/', '');

	var offset = 0;
	var limit = 36;
	var query = 'webapi/myresource/' + path + '?start' + offset + '&end='
			+ limit;
	$.get(query, showData, 'json');

	function yHandler() {
		
		var wrap = $(document);
		var contentHeight = wrap.innerHeight();
		var yOffset = window.pageYOffset;
		var y = yOffset + window.innerHeight;

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

	$('.sort-type').click(function() {
		var text = $(this).html();
		var order="id desc";
		if(text == "Lowest Prices"){
			order ='regular_price';
		}
		if(text == "Highest Prices"){
			order ='regular_price desc';
		}
		if(text == "Highest Discount"){
			order ='discount desc';
		}
		if(text == "Latest"){
			order ='id desc';
		}
		$.ajax({
			type : "GET",
			url : query + '&orderby='+order,
			cache : false,
			success : function(data) {
				 $('.all-item').empty();
				 showData(data);

			}
		});
	});

	$(window).scroll(function() {
		if ($(this).scrollTop() > 100) {
			$('#scroll').fadeIn();
		} else {
			$('#scroll').fadeOut();
		}
	});
	$('#scroll').click(function() {
		$("html, body").animate({
			scrollTop : 0
		}, 600);
		return false;
	});

	$('.logint-btn').click(
			function() {
				var userName = $('._sh_login_username').val();
				var password = $('._sh_login_password').val();
				if (userName != "" && password != null) {
				}
				$.get(
						'http://localhost:8080/MarayaGlobal/webapi/user/login?email='
								+ userName + '&password=' + password, function(
								data) {
							location.reload();

						}, 'json');

				// $.ajax({
				// type : "POST",
				// url :
				// 'http://localhost:8080/MarayaGlobal/webapi/user/login?email=ipsum@quis.com&password=5726',
				// cache : false,
				// success : function(data) {
				// console.log(data)
				// }

				// });
			});

    function showData(data) {
        data
                .forEach(function (item) {
                    var itemHolder = $('.js_dealslist');
                    var li = $('<li class="deals_item aw_fl_left promo_click">\n\
    <div class="deals_itemtop list_item">\n\
<a href="https://localhost/scale/electronic_luggage_scale_up_to_50kg/dp-1241324/" class="deals_link aw_block" target="_blank">\n\
<div class="aw_row deals_bg notranslate">\n\
</div>\n\
<span class="deals_off aw_bold">76</span>\n\
<div class="aw_row aw_column collapse">\n\
<div class="deals_image aw_imagethmb">\n\
<span class="aw_imagethmb_inner"></span>\n\
<img src="https://s5d.awokcdn.com/static/images/products/iblock-7e5-7e563b3283038632d62e195db18a9212.gif/default-155x155.jpg" alt="">\n\
</div>\n\
</div>\n\
<div class="aw_row aw_column collapse">\n\
<div class="deals_title"><p>'+item.title+'</p></div>\n\
</div></a>\n\
</div><div class="deals_itembottom"><div class="aw_row collapse">\n\
<div class="deals_price notranslate"><span class="old_price">Tk'+item.currentPrice+'</span><span class="new_price aw_bold">Tk'+(item.currentPrice - (item.currentPrice/item.discount))+'</span></div><span class="toast_attributes" data-price="5.28" data-name="Electronic Luggage Scale Up to 50KG" data-img="https://s5d.awokcdn.com/static/images/products/iblock-7e5-7e563b3283038632d62e195db18a9212.gif/default-155x155.jpg"></span><a href="https://localhost/cart/?SKU=1241324&amp;UID=16065d05ce3ece3e8&amp;SSID=3ff56362056ca2fd5fc0c720a5c4e0d2" data-pid="1241324" data-cart-link="/ajax-v2/?bxc=ZGV2LWF3b2s6Y2FydA==&amp;arp=d93df2d872efc9823b64dae08b1ef621&amp;AJAX=Y&amp;SKU=1241324&amp;UID=16065d05ce3ece3e8&amp;SSID=3ff56362056ca2fd5fc0c720a5c4e0d2&amp;popup=Y" class="main_link exec_pop_up deals_buynow " data-event-category="click_tracking" data-event-action="before_add_to_cart" data-event-label="osf">Add to Cart</a></div></div></li>');
                    itemHolder.append(li);

                });
        offset = offset + limit;
    }

});