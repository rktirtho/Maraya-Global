window.prodCounter = 0;
window.primePromoViewProducts = [];
window.PAGE = 0;
window.lastPageRendered = false;
window.dataPrepend = '';

$(document).ready(function () {
	$.ajaxSetup({
		cache: true
	});
	$.getScript(ConnectCDN +"/bitrix/templates/awok-lang/js/timer.js");

	/* ANALYTICS EVENTS STARTS */

	$(document).on('click', '.list_item a', function (e) {
		var obj = $(this).closest('.promo_click');
		if (obj.data('event') == 'promo') {
			var clickData = {
				id: obj.data('eventid'),
				name: obj.data('eventname'),
				creative: obj.data('eventcreative'),
				position: obj.data('eventposition'),
				destinationUrl: $(this).attr('href'),
			};
			onPromoClick(clickData, $(this)); // ananlytics
		}
	});

	/* Delay analytics */
	function pushDelayedResponse(viewData) {
		dataLayer.push({
			'event': 'delayPromotionResponse',
			'ecommerce': {
				'delayPromoResponse': {
					'promotions': viewData
				}
			}
		});

		/* Log user data */
		$.ajax({
			type: 'POST',
			dataType: 'json',
			url: OSFajaxLink,
			data: {
				PAGE: viewData.page,
				LOG_INFO: 'Y'
			},
			success: function (data) {}
		});
	}

	function onPromoClick(promoObj, clickObj) {
		dataLayer.push({
			'event': 'promotionClick',
			'ecommerce': {
				'promoClick': {
					'promotions': [{
						'id': promoObj.id, // Name or ID is required.
						'name': promoObj.name,
						'creative': promoObj.creative,
						'position': promoObj.pos
					}]
				}
			},
			'eventCallback': function () {}
		});
	}

	function PrimePromotionView(promoObj) {

		if (Object.keys(promoObj).length < 2) return;
		dataLayer.push({
			'event': 'primePromotionView',
			'ecommerce': {
				'primePromoView': {
					'promotions': promoObj
				}
			},
			'eventCallback': function () {}
		});
	}

	/* ANALYTICS EVENTS ENDS */

	if (typeof (query_element) != "function") {
		function query_element(selector) {
			return $('[data-jsbind="' + selector + '"]');
		}
	}

	/* POPUP STARTS*/
	query_element('flashsale_showpopup').on('click', function () {
		if ($(this).parent().hasClass('flashsale_productfinished')) return false;

		$('.error-message').hide();
		window.id_to_buy = $(this).attr('data-id');
		window.product_hash = $(this).attr('data-hash');
		$('html').addClass('slide_overlay');
		$('.flash_popup').show();
	});

	$('.flash_popup_close').on('click', function () {
		$('html').removeClass('slide_overlay');
		$('.flash_popup').hide();
	});

	$(document).on('click', '.js_flashsale_showpopup', function (e) {
		e.preventDefault();
		$('html').addClass('slide_overlay');
		$('.terms_popup').show();
	});

	$('.terms_popup_close').on('click', function (e) {
		$('html').removeClass('slide_overlay');
		$('.terms_popup').hide();
		$("body").removeClass("modal-open");
		//$('.header_site').css("z-index", "9999");
	})

	query_element('readmore').on('click', function () {
		if (!$(this).closest('.flashsale_manual').hasClass('expanded')) {
			$(this).text(hide);
			$(this).closest('.flashsale_manual').addClass('expanded');
		} else {
			$(this).text(read_more);
			$(this).closest('.flashsale_manual').removeClass('expanded');
		}
	});

	$('.popup_wrapp_body').click(function (e) {
		if (e.target.id != 'popup_wrapp_body') {
			return false;
		} else {
			$(this).hide();
		}
	});

	var cartItem = Math.abs($('.header_top_links_cart .notification').eq(0).text());
	window.cartIncrement = (cartItem != '') ? parseInt(cartItem) : 0;

	if ($('.pop-up').length > 0) {
		$('.add_cart').removeClass('ajax_reload').unbind('click');

		window.toastTimer = '';

		$(document).on('click', '.exec_pop_up', function (e) {
			e.preventDefault();
			e.stopPropagation();

			var toastAttributes = $(this).parent().find('.toast_attributes');
			if ($(toastAttributes).length > 0) {
				$('.toast-wrapper .checkout a img').hide();
				var productName = toastAttributes.data('name');
				var productPrice = toastAttributes.data('price');
				var productImage = toastAttributes.data('img');
				$('.toast-wrapper .product-image img').attr('src', productImage);
				$('.toast-wrapper .product-info .product-name').html(productName);
				$('.toast-wrapper .product-info .product-price .new-price').html(productPrice + ' ' + currency);
				$('.toast-wrapper .loader').show();
				if ($('.install_popup').is(':visible')) {
					$('.install_popup').hide();
				}
				clearTimeout(toastTimer);
				toastTimer = null;
				$(".toast-wrapper").stop();
				$('#return-to-top').css('visibility', 'hidden');

				if (!$('.toast-wrapper').is(':visible')) {
					$(".toast-wrapper").slideToggle("slow");
				}
			}

			/*if( ( cartIncrement  ) >= 3 ){
				// delete window.cartIncrement;
				window.location = $(this).attr( 'href' );
				return false;
			}*/

			// $('.pop-up').show();
			$('.product_details_addcart').removeClass('btn_disable');
			$('.cartproduct_box').addClass('cloading').empty();
			cartclicked = $(this);

			var link = $(this).attr('data-cart-link');
			cartclicked.text(pleaseWait).css({
				'background': '#F5F5F5',
				'color': '#4CAF50',
				'border': '1px solid #4CAF50',
				'padding': '0px'
			}).addClass('mob_loading');
			$.ajax({
				url: link,
				dataType: 'html',
				success: function (response) {
					$('.cartproduct_box').removeClass('cloading');
					$('.exec_pop_up.mob_loading').text(viewCart).removeClass('exec_pop_up ajax_reload').attr({
						href: '/cart/'
					}).attr({
						'data-event-action': 'before_view_cart'
					});

					// Do not remove this. Its to update header icon count though the popup is deprecated
					$('.cartproduct_box').empty().html(response);
					updateCartCount();
					$('.toast-wrapper .loader').hide();
					$('.toast-wrapper .checkout a img').show();
					clearTimeout(toastTimer);
					toastTimer = null;
					$(".toast-wrapper").stop();
					toastTimer = setTimeout(function () {
						$(".toast-wrapper").slideToggle('slow', function () {
							$('#return-to-top').css('visibility', 'visible');
						});
					}, 3000);
				}
			});

			$(document).on('click', '.cartproduct_overlayclose, .cartproduct_addmore', function () {
				$('.pop-up').hide();
			});
		});

		function updateCartCount() {
			var total_count = $('.cartproduct_box .itemstotal').data('total-count');
			cartIncrement = total_count;
			if ($('.header_top_links_cart .notification').length > 0) {
				$('.header_top_links_cart .notification').text(total_count);
			} else {
				$('.header_top_links_cart a').append($('<span/>').attr({
					class: 'notification'
				}).text(total_count));
			}
		}
	}
	/* POPUP ENDS */

	var parser = new UAParser();
	var deviceOS = parser.getResult();

	function toTimestamp(strDate) {
		if (typeof strDate === 'undefined' || strDate == '') {
			var d = new Date();
			d.setHours(24, 0, 0, 0);
			timeStamp = d / 1000;
		} else {
			if (typeof deviceOS == 'undefined') {
				return timestampNextJS;
			} else if (typeof deviceOS != 'undefined' && deviceOS.os.name == 'iOS') {
				var now = new Date();
				timeStamp = new Date(now.getFullYear(), now.getMonth() + 1, 1).getTime() / 1000;
			} else {
				timeStamp = new Date(strDate).getTime() / 1000;
			}
		}
		return timeStamp;
	}

	function htmlTemplate(data, page, iteration) {
		var activeTo = toTimestamp(data.ACTIVE_TO);
		prodCounter = prodCounter + 1;
		var PROD_SORT = data.SORT;

		var IMAGE_URL 		= "https://m1.awokcdn.com/static/images/products/" + data.IMAGE.ID + "/default-150x150.jpg";
		var GD_CART_LINK 	= ajaxLink + "&SKU=" + data.CART_DATA.SKU + "&UID=" + data.CART_DATA.UID + "&SSID=" + data.CART_DATA.SSID + "&popup=Y&buy_group=Y";
		if (typeof data.CLEARANCE != 'undefined' && data.CLEARANCE == 'Y') {
			var LINK = "https://" + window.location.hostname + "/cart/?SKU=" + data.CART_DATA.SKU + "&UID=" + data.CART_DATA.UID + "&SSID=" + data.CART_DATA.SSID + "&osf-clearance=Y";
			var CART_LINK = ajaxLink + "&SKU=" + data.CART_DATA.SKU + "&UID=" + data.CART_DATA.UID + "&SSID=" + data.CART_DATA.SSID + "&popup=Y&osf-clearance=Y";
			var product_url = "https://" + window.location.hostname + data.PRODUCT_LINK + '?osf-clearance=Y';
		} else {
			var LINK = "https://" + window.location.hostname + "/cart/?SKU=" + data.CART_DATA.SKU + "&UID=" + data.CART_DATA.UID + "&SSID=" + data.CART_DATA.SSID;
			var CART_LINK = ajaxLink + "&SKU=" + data.CART_DATA.SKU + "&UID=" + data.CART_DATA.UID + "&SSID=" + data.CART_DATA.SSID + "&popup=Y";
			var product_url = "https://" + window.location.hostname + data.PRODUCT_LINK;
		}
		var CURR_INDEX 		= page;

		if (typeof dataPrepend != 'undefined' && page == 1) {
			var iterationCheck = 7;
		} else {
			var iterationCheck = 8;
		}

		if (page == 1 && iteration < iterationCheck) {
			var timerDiv = '<div class="aw_row deals_bg notranslate">' +
				'<span class="deals_timer aw_bold js_dealstimer" data-timestamp="' + activeTo + '"></span>' +
				'</div>';
		} else {
			var timerDiv = '';
		}

		if (typeof currency_display_cart != 'undefined' && currency_display_cart != false) {
			var currentCurrency = displayCurrency = currency_display_cart;
			var currentCurrencySymbol = (typeof SymbolCurrency[currency_display_cart] != 'undefined') ? SymbolCurrency[currency_display_cart]['symbol'] : currency_display_cart;
		} else {
			var displayCurrency = currency;
			var currentCurrency = currency_cart;
			var currentCurrencySymbol = (typeof SymbolCurrency[currency_cart] != 'undefined') ? SymbolCurrency[currency_cart]['symbol'] : currency_cart;
		}

		data.PRICES.PRICE_OLD 	= PriceSpacingFillet(data.PRICES.PRICE_OLD);
		data.PRICES.PRICE_NEW 	= PriceSpacingFillet(data.PRICES.PRICE_NEW);
		data.PRICES.GROUP_PRICE = PriceSpacingFillet(data.PRICES.GROUP_PRICE);
		
		if (currentCurrencySymbol != currentCurrency) {
			var oldPrice = currentCurrencySymbol + data.PRICES.PRICE_OLD;
			var newPrice = currentCurrencySymbol + data.PRICES.PRICE_NEW;
			var gdPrice = currentCurrencySymbol + data.PRICES.GROUP_PRICE;
		} else {
			var oldPrice = data.PRICES.PRICE_OLD + ' ' + displayCurrency;
			var newPrice = data.PRICES.PRICE_NEW + ' ' + displayCurrency;
			var gdPrice = data.PRICES.GROUP_PRICE + ' ' + displayCurrency;
		}

		if (data.SORT > 4000) {
			var viewData = {
				id: data.ID,
				name: "Promo-Deals",
				creative: data.NAME,
				position: prodCounter,
				destinationUrl: product_url
			};
			primePromoViewProducts.push(viewData); // analytics
		}

		var productButtonText = '';
		if (data.PRE_ORDER == 'Y') {
			productButtonText = d7preOrderButton;
		} else {
			productButtonText = d7BuyNow;
		}

		var priceHtml = '';
		if (data.PRICES.GROUP_PRICE > 0){
			priceHtml = '<div class="buyNowBtn">' +
				'<span class="toast_attributes" data-price="' + data.PRICES.PRICE_NEW + '" data-name="' + data.NAME + '" data-img="' + data.IMAGE.SRC + '"></span>' +
				'<a href="' + LINK + '" data-pid="' + data.LINKED_PROD_ID + '" data-cart-link="' + CART_LINK + '" class="main_link exec_pop_up deals_buynow "  data-event-category="click_tracking" data-event-action="before_add_to_cart" data-event-label="osf">' +
					'<p>' + RDBtnText + '</p>' +
					'<div class="priceStructure">' +
						'<span class="newPrice">' + newPrice + '</span>' +
						'<span class="oldPrice">' + oldPrice + '</span>' +
					'</div>' +
				'</a>' +
			'</div>' +
			'<div class="buyNowWithBtn">' +
				'<span class="toast_attributes" data-price="' + data.PRICES.GROUP_PRICE + '" data-name="' + data.NAME + '" data-img="' + data.IMAGE.SRC + '"></span>' +
				'<a href="' + LINK + '&buy_group=Y" data-pid="' + data.LINKED_PROD_ID + '" data-cart-link="' + GD_CART_LINK + '" class="main_link exec_pop_up deals_buynow "  data-event-category="click_tracking" data-event-action="before_add_to_cart" data-event-label="osf">' +
					'<p>' + GDBtnText + '</p>' +
					'<div class="priceStructure">' +
						'<span class="newPrice">' + gdPrice + '</span>' +
						'<span class="oldPrice">' + oldPrice + '</span>' +
					'</div>' +
				'</a>' +
			'</div>';
		}
		else{
			priceHtml = '<div class="deals_price notranslate">' +
					'<span class="old_price">' + oldPrice + '</span>' +
					'<span class="new_price aw_bold">' + newPrice + '</span>' +
				'</div>' +
				'<span class="toast_attributes" data-price="' + data.PRICES.PRICE_NEW + '" data-name="' + data.NAME + '" data-img="' + data.IMAGE.SRC + '"></span>' +
				'<a href="' + LINK + '" data-pid="' + data.LINKED_PROD_ID + '" data-cart-link="' + CART_LINK + '" class="main_link exec_pop_up deals_buynow "  data-event-category="click_tracking" data-event-action="before_add_to_cart" data-event-label="osf">' + productButtonText + '</a>';
		}

		return '<li class="deals_item aw_fl_left promo_click" data-event="promo" data-eventid="' + data.ID + '" data-page="' + CURR_INDEX + '" data-eventname="Promo-Deals" data-eventcreative="' + data.NAME + '" data-eventposition="' + prodCounter + '">' +
			'<div class="deals_itemtop list_item">' +
				'<a href="' + product_url + '" class="deals_link aw_block" target="_blank">' +
					timerDiv +
					'<span class="deals_off aw_bold">' + data.PRICES.PERCENT + '</span>' +
					'<div class="aw_row aw_column collapse">' +
						'<div class="deals_image aw_imagethmb">' +
							'<span class="aw_imagethmb_inner"></span>' +
							'<img src="' + data.IMAGE.SRC + '" alt="">' +
						'</div>' +
						'</div>' +
						'<div class="aw_row aw_column collapse">' +
						'<div class="deals_title">' +
							'<p>' + data.NAME + '</p>' +
						'</div>' +
					'</div>' +
				'</a>' +
			'</div>' +
			'<div class="deals_itembottom">' +
				'<div class="aw_row collapse">' +
					priceHtml +
				'</div>' +
			'</div>' +
		'</li>'
	}

	function htmlPrependTemplate(data) {
		var product_url = "https://" + window.location.hostname + data.PRODUCT_LINK;
		return '<li class="deals_item aw_fl_left fb_item">' +
			'<div class ="deals_itemtop list_item"><a href = "' + product_url + '" class = "deals_link aw_block" target = "_blank">' +
			'<span class = "deals_off aw_bold">82</span><div class="aw_row aw_column collapse">' +
			'<div class="deals_image aw_imagethmb"><span class="aw_imagethmb_inner"></span>' +
			'<img src="' + data.IMAGE.SRC + '" alt = "" >' +
			'</div>' +
			'</div>' +
			'<div class = "aw_row aw_column collapse"><div class="deals_title"><p>' + data.NAME + '</p></div>' +
			'</div></a>' +
			'</div>' +
			'<div class="deals_itembottom"><div class="aw_row collapse">' +
			'<a href="' + product_url + '" class="deals_buynow" >' + viewDetails + '</a></div></div>' +
			'</li>';
	}

	jQuery.getScript(ConnectCDN +"/bitrix/templates/awok/js/infinitescroll.js").done(function () {
		$.extend($.infinitescroll.prototype, {
			_setup_awok: function infscr_setup_awok() {
				var instance = this;
				var opts = instance.options;
				instance._binding('unbind');				
				$(window).scroll(function () {
					var scrollLocate = $(document).height() / 2;
					if ($(window).scrollTop() + $(window).height() > scrollLocate && $(opts.contentSelector).attr('locked') != 'yes' && lastPageRendered) {
						lastPageRendered = false;
						$(opts.contentSelector).attr('locked', 'yes');
						$(opts.contentSelector).infinitescroll('retrieve');
					}
				});
				this.options.loading.finished = function () {

					/*if( PAGE < 3){
						$(opts.contentSelector).infinitescroll('retrieve');
					}*/

					$(opts.contentSelector).removeAttr('locked');
					opts.loading.msg.fadeOut('normal');
					jQuery(document).ajaxError(function (e, xhr, opt) {
						if (xhr.status == 404)
							jQuery(opts.nextSelector).remove();
					});
				}
				return false;
			},
			_error_awok: function infscr_error_awok(callStatus) {
				if (callStatus == 'end') {
					var instance = this;
					var opts = instance.options;
					instance._binding('unbind');
					$(document).off('ajaxError').on('ajaxError', function (event, jqxhr, settings, thrownError) {
						if (jqxhr.statusText == 'timeout') {
							pushDelayedResponse({
								'page': PAGE + 1
							});
							$(opts.contentSelector).infinitescroll('update', {
								'state': {
									'currPage': PAGE + 1
								}
							});
							$(opts.contentSelector).infinitescroll('retrieve');
						}
					});
				}
				return false;
			}
		});
		window.$container = $('main .aw_wrapper .main_flash_sale_wrapper .deals_list');

		function triggerTimer() {
			$.each($('.js_dealstimer'), function (key, value) {
				var time_stamp = $(this).data('timestamp');
				if (time_stamp != '') {
					$(this).empty().countdown({
						'timestamp': (new Date(time_stamp)) * 1000,
						'days': false,
						'desc': false,
						'hours': false
					});
				};
			});
		}

		window.create_scroll = function () {
			window.$container.infinitescroll({
					navSelector: '.bs_products',
					nextSelector: '.bs_products a[rel="next"]',
					itemSelector: 'li',
					contentSelector: 'main .aw_wrapper .main_flash_sale_wrapper .deals_list',
					bufferPX: 500,
					dataType: 'json',
					appendCallback: true,
					template: function (jsonResponse) {
						var templateData = '';
                        var arIds = [];

                        $.each(jsonResponse.OUTPUT.DATA.ITEMS, function (key, value) {
                            arIds.push(value.LINKED_PROD_ID);
                        });

                        if (typeof fbq.push === "function"){
                            fbq.push('track', 'ViewContent',{
                                'content_ids': arIds, 'content_type': 'product'
                            });
                        }

						PAGE = jsonResponse.OUTPUT.NAVIGATION.PAGE;

						dataPrepend = jsonResponse.OUTPUT.DATA.PREPEND_ITEM;
						if (typeof dataPrepend != 'undefined' && PAGE == 1) {
							templateData += htmlPrependTemplate(dataPrepend);
						}

						var data = jsonResponse.OUTPUT.DATA.ITEMS;
						var promoSort = 0;
						if (data.length > 0) {
							for (var count = 0; count < data.length; count++) {
								if (PAGE == 1 && data[count].SORT >= 4000) {
									promoSort++;
								}
								templateData += htmlTemplate(data[count], PAGE, count);
							}

							if (PAGE == 1) {
								PrimePromotionView(primePromoViewProducts); // analytics
								if (promoSort == 0) {
									PrimePromotionViewSkip(PAGE);
								}
							}
						}
						lastPageRendered = true;
						return templateData;
					},
					loading: {
						msgText: '',
						finishedMsg: '',
						img: ConnectCDN +'/bitrix/templates/awok/images/content-loader_small.gif',
						selector: ".bs_loading"
					},
					path: function generatePageUrl(currentPageNumber) {
						var inf_url = (apiLink) ? apiLink : $('.bs_products a').attr('href');
						var page = parseInt(currentPageNumber) - 1;

						/* capture skipped pages */
						var currPage = page;
						var prevPage = PAGE;
						var pageDiff = currPage - prevPage;
						if (pageDiff > 1) {
							for (i = prevPage + 1; i < currPage; i++) {
								pushPromoPageSkip(i);
							}
						}
						/* capture skipped pages */

						return inf_url + "page/" + Number(page) + '?IW=155&IH=155';
					},
					behavior: 'awok'
				},
				function (jsonResponse) {
					if (PAGE == 1) {
						triggerTimer();
					}

					if ( typeof dataLayer === "object" && typeof dataLayer.push === "function" && PAGE != 1 )
						/* PV analytics */
						dataLayer.push({
							"event": "gtm.load",
							"pageview": '/deals-api/page-' + PAGE + '/index.php'
						}); // analytics

					/* FB analytics */
					fbq('trackCustom', "OSF", {
						Page: PAGE
					});

					/* Real User Monitoring - boomerang.js script */
					if (typeof BOOMR !== 'undefined' && BOOMR.plugins.TrackClicks){
						typeof BOOMR.plugins.TrackClicks.trackEvent ("scroll",{"page":"/","pagenum":PAGE,"source":"wm"});
					}
				});
		}
		create_scroll();
		window.$container.infinitescroll('retrieve');
	});

	$.ajaxPrefilter(function (options) {
		var inf_url = (apiLink) ? apiLink : $('.bs_products a').attr('href');
		if (options.url.indexOf(inf_url) >= 0) {
			options.timeout = 10000;
		}
	});
});

function pushPromoPageSkip(page) {
	dataLayer.push({
		'event': 'promotionPageSkip',
		'ecommerce': {
			'promoPageSkip': {
				'promotions': {
					'page': page
				}
			}
		}
	});
}

function PrimePromotionViewSkip(page) {
	dataLayer.push({
		'event': 'primePromotionViewSkip'
	});
}
