<%-- 
    Document   : nav-bar
    Created on : May 8, 2019, 3:33:35 PM
    Author     : DELL
--%>

<%@page import="com.marayaglobal.beans.user.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<style type="text/css">


</style>

<%
	Customer customer = (Customer) session.getAttribute("currentUser");
	request.setAttribute("user", customer);
%>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=yes">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="robots" content="index, follow" />
<meta name="keywords"
	content="Online shopping in Bangladesh, online shopping BD, Bangladesh online shopping, BD best deals, Deals in BD Daily Deals, Deal of the day, Best Deals" />
<meta name="description"
	content="Get the best deals and offers with No.1 Online Shopping in BD Bangladesh, Buy the latest daily deals in BD, deal of the day, mobiles, tablets, laptops and home appliances at low prices and enjoy online shopping with cash on delivery and free deivery* across the Bangladesh." />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript">
	if (!window.BX)
		window.BX = {
			message : function(mess) {
				if (typeof mess == 'object')
					for ( var i in mess)
						BX.message[i] = mess[i];
				return true;
			}
		};
</script>
<script type="text/javascript">
	(window.BX || top.BX).message({
		'JS_CORE_LOADING' : 'Loading...',
		'JS_CORE_WINDOW_CLOSE' : 'Close',
		'JS_CORE_WINDOW_EXPAND' : 'Expand',
		'JS_CORE_WINDOW_NARROW' : 'Restore',
		'JS_CORE_WINDOW_SAVE' : 'Save',
		'JS_CORE_WINDOW_CANCEL' : 'Cancel',
		'JS_CORE_H' : 'h',
		'JS_CORE_M' : 'm',
		'JS_CORE_S' : 's',
		'JS_CORE_NO_DATA' : '- No data -',
		'JSADM_AI_HIDE_EXTRA' : 'Hide extra items',
		'JSADM_AI_ALL_NOTIF' : 'All notifications',
		'JSADM_AUTH_REQ' : 'Authentication is required!',
		'JS_CORE_WINDOW_AUTH' : 'Log In',
		'JS_CORE_IMAGE_FULL' : 'Full size'
	});
</script>
<script type="text/javascript">
	(window.BX || top.BX).message({
		'LANGUAGE_ID' : 'en',
		'FORMAT_DATE' : 'DD.MM.YYYY',
		'FORMAT_DATETIME' : 'DD.MM.YYYY HH:MI:SS',
		'COOKIE_PREFIX' : 'awok',
		'SERVER_TZ_OFFSET' : '14400',
		'SITE_ID' : 's5',
		'USER_ID' : '',
		'SERVER_TIME' : '1557308439',
		'USER_TZ_OFFSET' : '0',
		'USER_TZ_AUTO' : 'Y',
		'bitrix_sessid' : '455ecd59a3137f2187662bcc7aa183f0'
	});
</script>



<script
	src="https://s5d.awokcdn.com/bitrix/templates/awok-lang/js/jquery.js?"></script>
<script
	src="https://s5d.awokcdn.com/bitrix/templates/awok-lang/js/scripts.js?"></script>
<script type="text/javascript"
	src="https://global.awok.com/bitrix/js/main/core/core.js"></script>
<meta name="msvalidate.01" content="FA70474D3B24F93B1C3F13C58690360C" />
<meta name="google-site-verification"
	content="0KsfOXHtHT5IK3f1y5LZznnQ3Mkqy_aijkvKbidBA8Y" />
<link href="https://www.google.com/+AlifcaUAE/" rel="publisher" />
<meta name="msvalidate.01" content="DF53B2ACE7B57BF60A098FBDC753A3D0" />
<script type="text/javascript">
	if (!window.BX)
		window.BX = {
			message : function(mess) {
				if (typeof mess == 'object')
					for ( var i in mess)
						BX.message[i] = mess[i];
				return true;
			}
		};
</script>
<script type="text/javascript">
	(window.BX || top.BX).message({
		'JS_CORE_LOADING' : 'Loading...',
		'JS_CORE_WINDOW_CLOSE' : 'Close',
		'JS_CORE_WINDOW_EXPAND' : 'Expand',
		'JS_CORE_WINDOW_NARROW' : 'Restore',
		'JS_CORE_WINDOW_SAVE' : 'Save',
		'JS_CORE_WINDOW_CANCEL' : 'Cancel',
		'JS_CORE_H' : 'h',
		'JS_CORE_M' : 'm',
		'JS_CORE_S' : 's',
		'JS_CORE_NO_DATA' : '- No data -',
		'JSADM_AI_HIDE_EXTRA' : 'Hide extra items',
		'JSADM_AI_ALL_NOTIF' : 'All notifications',
		'JSADM_AUTH_REQ' : 'Authentication is required!',
		'JS_CORE_WINDOW_AUTH' : 'Log In',
		'JS_CORE_IMAGE_FULL' : 'Full size'
	});
</script>



<script type="text/javascript"
	src="/bitrix/js/main/core/core.js?1520245444110032"></script>
<script type="text/javascript">
	(function() {
		"use strict";

		var counter = function() {
			var cookie = (function(name) {
				var parts = ("; " + document.cookie).split("; " + name + "=");
				if (parts.length == 2) {
					try {
						return JSON.parse(decodeURIComponent(parts.pop().split(
								";").shift()));
					} catch (e) {
					}
				}
			})("BITRIX_CONVERSION_CONTEXT_s5");

			if (cookie && cookie.EXPIRE >= BX.message("SERVER_TIME")
					&& cookie.UNIQUE && cookie.UNIQUE.length > 0) {
				for (var i = 0; i < cookie.UNIQUE.length; i++) {
					if (cookie.UNIQUE[i] == "conversion_visit_day")
						return;
				}
			}

		};

		if (window.frameRequestStart === true)
			BX.addCustomEvent("onFrameDataReceived", counter);
		else
			BX.ready(counter);
	})();
</script>
<!--[if lt IE 9]><link rel="stylesheet" type="text/css" href="/bitrix/templates/awok-lang/css/style-ie8.css" /><![endif]-->
<!--[if (gte IE 9) | (!IE)]><!-->
<script
	src="https://s5d.awokcdn.com/bitrix/templates/awok-lang/js/jquery.js?"></script>
<!--<![endif]-->
<script
	src="https://s5d.awokcdn.com/bitrix/templates/awok-lang/js/cross-fetch.js?"></script>
<!--[if lt IE 9]><script src="https://s5d.awokcdn.com/bitrix/templates/awok-lang/js/jquery-ie8.js?"></script><![endif]-->
<script
	src="https://s5d.awokcdn.com/bitrix/templates/awok-lang/js/scripts.js?"></script>
<meta name="msvalidate.01" content="FA70474D3B24F93B1C3F13C58690360C" />
<meta name="google-site-verification"
	content="0KsfOXHtHT5IK3f1y5LZznnQ3Mkqy_aijkvKbidBA8Y" />
<link href="https://www.google.com/+AlifcaUAE/" rel="publisher" />
<meta name="msvalidate.01" content="DF53B2ACE7B57BF60A098FBDC753A3D0" />


<script type="text/javascript"
	src="https://global.awok.com//bitrix/templates/awok-lang/components/dev-awok/quick.search/.awok-refactored/script.js?15398625115147"></script>
<script type="text/javascript"
	src="https://global.awok.com//bitrix/templates/awok-lang/components/dev-awok/quick.search/.awok-refactored/algoliasearch.js?1539862511135614"></script>
<script type="text/javascript"
	src="https://s5d.awokcdn.com/bitrix/templates/awok-lang/js/mousewheel.js?1520245453"></script>
<script type="text/javascript"
	src="https://s5d.awokcdn.com/bitrix/templates/awok-lang/js/timer.js?1520245453"></script>
<script type="text/javascript"
	src="https://global.awok.com//bitrix/templates/awok-lang/components/dev-awok/deals.api/.awok-infscr-clean/script.js?155600110318861"></script>
<script type="text/javascript"
	src="https://global.awok.com//bitrix/templates/awok-lang/components/dev-awok/authorize/register-flashpop-ajax/script.js?15202454512429"></script>




</head>
<body class="is_deals currency-usd currency-disp-Y">
	<div class="grey_bg"></div>
	<div class="admin_panel"></div>
	<!--new header start-->
	<div class="header">

		<div class="header_top_box ">
			<div
				class="site_main_wrapper reset_padding reset_background clearFix">
				<div class="toll_free">
					<a href="contact" target="_blank"><span>Contact Us</span></a>
				</div>

				<div class="download_app">
					<span>Download App</span>
					<ul class="show">
						<li><a
							href="https://play.google.com/store/apps/details?id=com.awok.store&hl=en"
							target="_blank" class="android">Android Devices</a></li>
						<li><a
							href="https://itunes.apple.com/us/app/awok.com/id1116482931?mt=8"
							class="apple" target="_blank">Apple Devices</a></li>
					</ul>
				</div>

				<div class="user_track_order">
					<a href="/track-order/">Track Order</a>
				</div>

			</div>
		</div>
		<div class="header_bottom_box ">
			<div class="site_main_wrapper reset_padding clearFix">
				<div class="site_main_menu ">
					<div class="menu_link">
						<a href="javascript:void(0);" class="drop_link "><i
							class="fa fa-bars" aria-hidden="true"></i></a>
					</div>
					<div class="menu_content">
						<ul class="content_inner menu_items">
							<li class="has_child alloffers_icon"><a class="ico"
								href="javascript:void"><span>All Offers</span> </a>
								<div class="child">
									<div class="sub_menu">
										<ul class="sub_menu_list">
											<li class="no_child"><a href="/deals/"></a></li>
											<li class="no_child"><a href="/clearance/">Clearance</a></li>
											<li class="no_child"><a href="/open-box/">Open Box</a></li>
											<li class="no_child"><a href="/gift-sets/">Gift Sets</a></li>
											<li class="has_child"><a href="/deals/latest/">Daily
													Deals</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/deals/latest/"> <b>Shop Deals By</b>
															</a>
															<ul>
																<li><a href="/deals/latest/">Show All</a></li>
																<li><a href="/deals/latest/?section=mobiles">Mobiles</a></li>
																<li><a href="/deals/latest/?section=tablets">Tablets</a></li>
																<li><a href="/deals/latest/?section=jewellery">Jewellery</a></li>
																<li><a href="/deals/latest/?section=laptops">PCs
																		& Laptops</a></li>
																<li><a href="/deals/latest/?section=cameras">Cameras</a></li>
																<li><a href="/deals/latest/?section=fashion-beauty">Fashion
																		& Beauty</a></li>
																<li><a href="/deals/latest/?section=perfumes">Perfumes</a></li>
																<li><a href="/deals/latest/?section=watches">Watches</a></li>
																<li><a href="/deals/latest/?section=electronics">Electronics</a></li>
																<li><a href="/deals/latest/?section=others">Other
																		Deals</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="no_child"><a href="/offers/">Special
													Offers</a></li>
										</ul>
									</div>
								</div></li>

							<li class="has_child mobile_icon"><a class="ico"
								href="/mobile-and-accessories/ds-581/"><img class="menu_ico"
									src="/bitrix/templates/awok-lang/images/header/mobiles-icon.svg"
									title="" alt="" /><span>Mobiles & Accessories</span> </a>
								<div class="child">
									<div class="sub_menu">
										<ul class="sub_menu_list">
											<li class="has_child"><a href="/Mobile-Phones/ds-582/">Mobile
													Phones</a>
												<div class="child section3">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/mobile-phones/ds-582/"> <b>All Mobile
																	Phones</b>
															</a>
															<ul>
																<li><a href="/mobile-phones/ds-582/">Smart
																		Phones</a></li>
																<li><a
																	href="/smart-watches/ds-1038/?keywords=Watch+Mobile&set-filter=Y">Watch
																		Mobiles</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?operating-system=android&set-filter=Y">Android
																		Phones</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?brand=apple&set-filter=Y">Apple
																		iPhones</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?brand=samsung&set-filter=Y">Samsung
																		Mobiles</a></li>
																<li><a
																	href="/Mobile-Phones/ds-582/?operating-system=windows,windows-phone&set-filter=Y">Windows
																		Phones</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/smart-watches/ds-1038/"> <b>All Smart
																	Watches</b>
															</a>
															<ul>
																<li><a
																	href="/smart-watches/ds-1038/?brand=apple&set-filter=Y">Apple
																		Watches</a></li>
																<li><a href="/smart-watches/ds-1038/">Other
																		Smart Watches</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/mobile-phones/ds-582/"> <b>Shop by Size</b>
															</a>
															<ul>
																<li><a
																	href="/mobile-phones/ds-582/?screen-size-range=below-3-inch&set-filter=Y">Below
																		3 inches</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?screen-size-range=3---4-inch&set-filter=Y">3-4
																		inches</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?screen-size-range=4.1----5-inch&set-filter=Y">4.1-5
																		inches</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?screen-size-range=above-5-inch&set-filter=Y">Above
																		5 inches</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/mobile-phones/ds-582/"> <b>Shop by
																	Price</b>
															</a>
															<ul>
																<li><a
																	href="/mobile-phones/ds-582/?max-price=200&set-filter=Y">Below
																		200 BDT</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?min-price=201&max-price=300&set-filter=Y">201
																		- 300 BDT</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?min-price=301&max-price=500&set-filter=Y">301
																		- 500 BDT</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?min-price=501&max-price=1000&set-filter=Y">501
																		- 1000 BDT</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?min-price=1001&set-filter=Y">Above
																		1000 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/mobile-phones/ds-582/"> <b>SHOP BY
																	BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/mobile-phones/ds-582/?brand=apple&set-filter=Y">Apple</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?brand=samsung&set-filter=Y">Samsung</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?brand=sony&set-filter=Y">Sony</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?brand=lenovo&set-filter=Y">Lenovo</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?brand=blackberry&set-filter=Y">BlackBerry</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?brand=htc&set-filter=Y">HTC</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?brand=nokia&set-filter=Y">Nokia</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?brand=motorola&set-filter=Y">Motorola</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?brand=huawei&set-filter=Y">Huawei</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?brand=alcatel&set-filter=Y">Alcatel</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?brand=acer&set-filter=Y">Acer</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?brand=hisense&set-filter=Y">Hisense</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?brand=lg&set-filter=Y">LG</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?brand=xiaomi&set-filter=Y">Xiaomi</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?brand=s-color&set-filter=Y">S
																		Color</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?brand=gmango&set-filter=Y">G
																		mango</a></li>
																<li><a
																	href="/mobile-phones/ds-582/?brand=ken-xin-da&set-filter=Y">Kenxinda</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/smart-watches/ds-1038/">Smart
													Watches & Accessories</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/smart-watches/ds-1038/"> <b>All Smart
																	Watches</b>
															</a>
															<ul>
																<li><a
																	href="/smart-watches/ds-1038/?brand=apple&set-filter=Y">Apple
																		Watches</a></li>
																<li><a
																	href="/smart-watches/ds-1038/?brand=sony&set-filter=Y">Sony
																		Smart Watches & Smart Bands</a></li>
																<li><a
																	href="/smart-watches/ds-1038/?brand=motorola&set-filter=Y">Motorola
																		Smart Watches</a></li>
																<li><a
																	href="/smart-watches/ds-1038/?brand=s-color&set-filter=Y">S-Color
																		Mobile Watches</a></li>
																<li><a
																	href="/smart-watches/ds-1038/?brand=gmango&set-filter=Y">GMango
																		Mobile Watches</a></li>
																<li><a
																	href="/smart-watches/ds-1038/?brand=ken-xin-da,vell-com&set-filter=Y">Kenxinda
																		Mobile Watches</a></li>
															</ul>
														</div>
													</div>
													<!--<div class="sub_menu_sections">
                                                                <div class="sub_menu_links">
                                                                        <a href="/smart-watch-accessories/ds-1039/">
                                                                                <b>Smart Watch Accessories</b>
                                                                        </a>
                                                                </div>
                                                        </div>-->
												</div></li>
											<li class="has_child"><a
												href="/mobile-accessories/ds-820/">Mobile Accessories</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/mobile-accessories/ds-820/"> <b>All
																	Accessories</b>
															</a>
															<ul>
																<li><a href="/mobile-screen-protectors/ds-1073/">Mobile
																		Screen Protectors</a></li>
																<li><a
																	href="/mobile-accessories/ds-820/?type=cables-and-chargers&set-filter=Y">Cables
																		& Chargers</a></li>
																<li><a href="/mobile-cases-covers/ds-1029/">Cases
																		and Covers</a></li>
																<li><a
																	href="/mobile-accessories/ds-820/?type=battery&set-filter=Y">Batteries</a></li>
																<li><a href="/memory-cards/ds-1031/">Memory
																		Card & Flash</a></li>
																<li><a href="/selfie-sticks-tripods/ds-1075/">Selfie
																		Sticks & Tripods</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/mobile-cases-covers/ds-1029/">Cases & Covers</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/mobile-cases-covers/ds-1029/"> <b>SHOP
																	BY DEVICE</b>
															</a>
															<ul>
																<li><a
																	href="/mobile-cases-covers/ds-1029/?keywords=iPhone&set-filter=Y">Apple</a></li>
																<li><a
																	href="/mobile-cases-covers/ds-1029/?keywords=Samsung&set-filter=Y">Samsung</a></li>
																<li><a
																	href="/mobile-cases-covers/ds-1029/?keywords=Sony&set-filter=Y">Sony</a></li>
																<li><a
																	href="/mobile-cases-covers/ds-1029/?keywords=Lenovo&set-filter=Y">Lenovo</a></li>
																<li><a
																	href="/mobile-cases-covers/ds-1029/?keywords=Blackberry&set-filter=Y">BlackBerry</a></li>
																<li><a
																	href="/mobile-cases-covers/ds-1029/?keywords=HTC&set-filter=Y">HTC</a></li>
																<li><a
																	href="/mobile-cases-covers/ds-1029/?keywords=Nokia&set-filter=Y">Nokia</a></li>
																<li><a
																	href="/mobile-cases-covers/ds-1029/?keywords=Microsoft&set-filter=Y">Microsoft</a></li>
																<li><a
																	href="/mobile-cases-covers/ds-1029/?keywords=Motorola&set-filter=Y">Motorola</a></li>
																<li><a
																	href="/mobile-cases-covers/ds-1029/?keywords=Huawei&set-filter=Y">Huawei</a></li>
																<li><a
																	href="/mobile-cases-covers/ds-1029/?keywords=Alcatel&set-filter=Y">Alcatel</a></li>
																<li><a
																	href="/mobile-cases-covers/ds-1029/?keywords=Acer&set-filter=Y">Acer</a></li>
																<li><a
																	href="/mobile-cases-covers/ds-1029/?keywords=Hisense&set-filter=Y">Hisense</a></li>
																<li><a
																	href="/mobile-cases-covers/ds-1029/?keywords=LG&set-filter=Y">LG</a></li>
																<li><a
																	href="/mobile-cases-covers/ds-1029/?keywords=Xiaomi&set-filter=Y">Xiaomi</a></li>
																<li><a
																	href="/mobile-cases-covers/ds-1029/?keywords=S+Color&set-filter=Y">S
																		Color</a></li>
																<li><a
																	href="/mobile-cases-covers/ds-1029/?keywords=G+Mango&set-filter=Y">G
																		mango</a></li>
																<li><a
																	href="/mobile-cases-covers/ds-1029/?keywords=Kenxinda&set-filter=Y">Kenxinda</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/power-banks/ds-1030/">Power
													Banks</a>
												<div class="child section1">
													<!-- <div class="sub_menu_sections">
                                                                                        <div class="sub_menu_links">
                                                                                                <a href="/Mobile-Accessories/ds-820/?type=power+bank&set-filter=Y">
                                                                                                        <b>Shop by Capacity</b>
                                                                                                </a>
                                                                                                <ul>
                                                                                                        <li><a href="javascript:void(0);" >Below 3000mAh</a></li>
                                                                                                        <li><a href="javascript:void(0);" >3,000 - 10,000mAh</a></li>
                                                                                                        <li><a href="javascript:void(0);" >Above - 10,000mAh</a></li>
                                                                                                </ul>
                                                                                        </div>
                                                                                </div> -->
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a
																href="/Mobile-Accessories/ds-820/?type=power+bank&set-filter=Y">
																<b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?#category=Power%20Banks&price=0-20">Below
																		20 BDT</a></li>
																<li><a
																	href="/search/?#category=Power%20Banks&price=20-50">20
																		- 50 BDT</a></li>
																<li><a
																	href="/search/?#category=Power%20Banks&price=50-100">50
																		- 100 BDT</a></li>
																<li><a
																	href="/search/?#category=Power%20Banks&price=100-300">100
																		- 300 BDT</a></li>
																<li><a
																	href="/search/?#category=Power%20Banks&price=300-14999">Above
																		300 BDT</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/memory-cards/ds-1031/">Memory
													Cards</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a
																href="/Mobile-Accessories/ds-820/?keywords=micro&type=memory-card%2Fflash&set-filter=Filter+Results">
																<b>SHOP BY TYPE</b>
															</a>
															<ul>
																<li><a
																	href="/memory-cards/ds-1031/?keywords=MicroSD&set-filter=Y">MicroSD</a></li>
																<li><a
																	href="/memory-cards/ds-1031/?keywords=USB&set-filter=Y">USB
																		Flash Drives</a></li>
																<li><a
																	href="/Hard-Drives/ds-719/?keywords=External&set-filter=Y">External
																		Hard Disks</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/memory-cards/ds-1031/"> <b>SHOP BY SIZE</b>
															</a>
															<ul>
																<li><a
																	href="/memory-cards/ds-1031/?storage=4gb&set-filter=Y">4
																		GB</a></li>
																<li><a
																	href="/memory-cards/ds-1031/?storage=8gb&set-filter=Y">8
																		GB</a></li>
																<li><a
																	href="/memory-cards/ds-1031/?storage=16gb&set-filter=Y">16
																		GB</a></li>
																<li><a
																	href="/memory-cards/ds-1031/?storage=32gb&set-filter=Y">32
																		GB</a></li>
																<li><a
																	href="/memory-cards/ds-1031/?storage=64gb&set-filter=Y">64
																		GB</a></li>
																<li><a
																	href="/memory-cards/ds-1031/?storage=128gb&set-filter=Y">128
																		GB</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/memory-cards/ds-1031/"> <b>SHOP BY
																	BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/memory-cards/ds-1031/?brand=adata&set-filter=Y">Adata</a></li>
																<li><a
																	href="/memory-cards/ds-1031/?brand=sandisk&set-filter=Y">Sandisk</a></li>
																<li><a
																	href="/memory-cards/ds-1031/?brand=apacer&set-filter=Y">Apacer</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="no_child"><a
												href="/earphones-headsets/ds-612/">Headphones/Headsets</a></li>
											<li class="no_child"><a
												href="/bluetooth-speakers/ds-1293/">Bluetooth Speakers</a></li>
										</ul>
									</div>
								</div></li>
							<li class="has_child tablet_icon"><a class="ico"
								href="/tablet-pcs-and-accessories/ds-1032/"><img
									class="menu_ico"
									src="/bitrix/templates/awok-lang/images/header/tablets-icon.svg"
									title="" alt="" /><span>Tablets & Accessories</span> </a>
								<div class="child">
									<div class="sub_menu">
										<ul class="sub_menu_list">
											<li class="has_child"><a href="/tablet-pcs/ds-747/">Tablets</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/tablet-pcs/ds-747/"> <b>ALL TABLET
																	COMPUTERS</b>
															</a>
															<ul>
																<li><a
																	href="/tablet-pcs/ds-747/?operating-system=android&set-filter=Y">Android
																		Tablets</a></li>
																<li><a
																	href="/tablet-pcs/ds-747/?brand=samsung&set-filter=Y">Samsung
																		Tablets</a></li>
																<li><a
																	href="/tablet-pcs/ds-747/?brand=apple&set-filter=Y">Apple
																		iPads</a></li>
																<li><a
																	href="/tablet-pcs/ds-747/?operating-system=windows,windows-rt&set-filter=Y">Window
																		Tablets</a></li>
																<li><a href="/tablet-pcs/ds-747/">All Tablet
																		Pcs</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/tablet-pcs/ds-747/"> <b>SHOP BY SIZE</b>
															</a>
															<ul>
																<li><a
																	href="/tablet-pcs/ds-747/?screen-size-range=7.1-inch---8-inch&set-filter=Y">7.1"
																		to 8"</a></li>
																<li><a
																	href="/tablet-pcs/ds-747/?screen-size-range=8.1-inch---9-inch&set-filter=Y">8.1"
																		to 9"</a></li>
																<li><a
																	href="/tablet-pcs/ds-747/?screen-size-range=above-10-inch&set-filter=Y">Above
																		10"</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/tablet-pcs/ds-747/"> <b>SHOP BY TYPE</b>
															</a>
															<ul>
																<li><a
																	href="/tablet-pcs/ds-747/?keywords=wifi&set-filter=Filter+Results">Wifi
																		Tablets</a></li>
																<li><a
																	href="/tablet-pcs/ds-747/?data=3g,2g&set-filter=Y">2G-3G
																		Tablets</a></li>
																<li><a
																	href="/tablet-pcs/ds-747/?data=4g-/-lte&set-filter=Y">4G
																		Tablets</a></li>
																<li><a
																	href="/tablet-pcs/ds-747/?sim-support=dual-sim&set-filter=Y">Dual
																		SIM Tablets</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Mobile-Phones/ds-582/"> <b>SHOP BY
																	BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/tablet-pcs/ds-747/?brand=apple&set-filter=Y">Apple</a></li>
																<li><a
																	href="/tablet-pcs/ds-747/?brand=samsung&set-filter=Y">Samsung</a></li>
																<li><a
																	href="/tablet-pcs/ds-747/?brand=lenovo&set-filter=Y">Lenovo</a></li>
																<li><a
																	href="/tablet-pcs/ds-747/?brand=huawei&set-filter=Y">Huawei</a></li>
																<li><a
																	href="/tablet-pcs/ds-747/?brand=atouch&set-filter=Y">A
																		Touch</a></li>
																<li><a
																	href="/tablet-pcs/ds-747/?brand=call-touch&set-filter=Y">Call
																		Touch</a></li>
																<li><a
																	href="/tablet-pcs/ds-747/?brand=event&set-filter=Y">Event</a></li>
																<li><a
																	href="/tablet-pcs/ds-747/?brand=e-top&set-filter=Y">E
																		Top</a></li>
																<li><a
																	href="/tablet-pcs/ds-747/?brand=epad&set-filter=Y">E
																		Pad</a></li>
																<li><a
																	href="/tablet-pcs/ds-747/?brand=s-color&set-filter=Y">S
																		Color</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/tablet-accessories/ds-825/">Tablet Accessories</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Tablet-Accessories/ds-825/"> <b>ALL
																	ACCESSORIES</b>
															</a>
															<ul>
																<li><a
																	href="/tablet-accessories/ds-825/?type=screens-protectors&set-filter=Y">Tablet
																		Screen Protectors</a></li>
																<li><a href="/tablet-cases-covers/ds-1037/">Cases
																		and Covers</a></li>
																<li><a
																	href="/tablet-accessories/ds-825/?type=cables-and-chargers&set-filter=Y">Cables
																		& Chargers</a></li>
																<li><a
																	href="/tablet-accessories/ds-825/?type=miscellaneous-accessories&set-filter=Y">Miscellaneous
																		Accessories</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/tablet-accessories/ds-825/"> <b>SHOP BY
																	PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/tablet-accessories/ds-825/?max-price=20&set-filter=Y">Below
																		20 BDT</a></li>
																<li><a
																	href="/tablet-accessories/ds-825/?min-price=20&max-price=50&set-filter=Y">20
																		- 50 BDT</a></li>
																<li><a
																	href="/tablet-accessories/ds-825/?min-price=50&max-price=100&set-filter=Y">50
																		- 100 BDT</a></li>
																<li><a
																	href="/tablet-accessories/ds-825/?min-price=100&max-price=300&set-filter=Y">100
																		- 300 BDT</a></li>
																<li><a
																	href="/tablet-accessories/ds-825/?min-price=300&set-filter=Y">Above
																		300 BDT</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/tablet-cases-covers/ds-1037/">Cases & Covers</a>
												<div class="child section1">
													<!--<div class="sub_menu_sections">					<div class="sub_menu_links">
                                                                        <a href="/Tablet-Accessories/ds-825/?keywords=case&set-filter=Y" >
                                                                                <b></b>
                                                                        </a>
                                                                        <ul>
                                                                                                                                                <li><a href="" ></a></li>
                                                                                                                                </ul>
                                                                </div>
                                                        </div>-->
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a
																href="/Tablet-Accessories/ds-825/?keywords=case&set-filter=Y">
																<b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=case#category=Tablet%20Accessories&price=0-20">Below
																		20 BDT</a></li>
																<li><a
																	href="/search/?q=case#category=Tablet%20Accessories&price=20-50">20
																		- 50 BDT</a></li>
																<li><a
																	href="/search/?q=case#category=Tablet%20Accessories&price=50-100">50
																		- 100 BDT</a></li>
																<li><a
																	href="/search/?q=case#category=Tablet%20Accessories&price=100-300">100
																		- 300 BDT</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="no_child"><a href="/power-banks/ds-1030/">Power
													Banks</a>
												<div class="child section1"></div></li>
											<li class="has_child"><a href="/memory-cards/ds-1031/">Memory
													Cards</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a
																href="/Mobile-Accessories/ds-820/?keywords=micro&type=memory-card%2Fflash&set-filter=Filter+Results">
																<b>SHOP BY TYPE</b>
															</a>
															<ul>
																<li><a
																	href="/memory-cards/ds-1031/?keywords=MicroSD&set-filter=Y">MicroSD</a></li>
																<li><a
																	href="/memory-cards/ds-1031/?keywords=USB&set-filter=Y">USB
																		Flash Drives</a></li>
																<li><a
																	href="/Hard-Drives/ds-719/?keywords=External&set-filter=Y">External
																		Hard Disks</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/memory-cards/ds-1031/"> <b>SHOP BY SIZE</b>
															</a>
															<ul>
																<li><a
																	href="/memory-cards/ds-1031/?storage=4gb&set-filter=Y">4
																		GB</a></li>
																<li><a
																	href="/memory-cards/ds-1031/?storage=8gb&set-filter=Y">8
																		GB</a></li>
																<li><a
																	href="/memory-cards/ds-1031/?storage=16gb&set-filter=Y">16
																		GB</a></li>
																<li><a
																	href="/memory-cards/ds-1031/?storage=32gb&set-filter=Y">32
																		GB</a></li>
																<li><a
																	href="/memory-cards/ds-1031/?storage=64gb&set-filter=Y">64
																		GB</a></li>
																<li><a
																	href="/memory-cards/ds-1031/?storage=128gb&set-filter=Y">128
																		GB</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/memory-cards/ds-1031/"> <b>SHOP BY
																	BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/memory-cards/ds-1031/?brand=adata&set-filter=Y">Adata</a></li>
																<li><a
																	href="/memory-cards/ds-1031/?brand=sandisk&set-filter=Y">Sandisk</a></li>
																<li><a
																	href="/memory-cards/ds-1031/?brand=apacer&set-filter=Y">Apacer</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="no_child"><a
												href="/earphones-headsets/ds-612/">Headphones/Headsets</a></li>
										</ul>
									</div>
								</div></li>
							<li class="has_child jewellery_icon"><a class="ico"
								href="/jewellery/ds-962/"><img class="menu_ico"
									src="/bitrix/templates/awok-lang/images/header/watches-icon.svg"
									title="" alt="" /><span>Jewellery</span> </a>
								<div class="child">
									<div class="sub_menu">
										<ul class="sub_menu_list">
											<li class="has_child"><a href="/jewellery/ds-962/">Jewellery</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/jewellery/ds-962/"> <b>ALL JEWELLERY</b>
															</a>
															<ul>
																<li><a href="/search/?#category=Pendant%20Sets">Pendant
																		Set</a></li>
																<li><a href="/search/?#category=Necklaces">Necklace
																		Set</a></li>
																<li><a href="/search/?#category=Rings">Ring</a></li>
																<li><a href="/search/?#category=Bangles">Bangles</a></li>
																<li><a href="/search/?#category=Bracelets">Bracelet</a></li>
																<li><a href="/search/?#category=Earrings">Earings</a></li>

															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/jewellery/ds-962/"> <b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?#category=Jewellery,Necklaces,Pendant%20Sets,Rings,Bangles,Bracelets,Earrings&price=50-100">50
																		- 100 BDT</a></li>
																<li><a
																	href="/search/?#category=Jewellery,Necklaces,Pendant%20Sets,Rings,Bangles,Bracelets,Earrings&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?#category=Jewellery,Necklaces,Pendant%20Sets,Rings,Bangles,Bracelets,Earrings&price=200-14999">Above
																		200 BDT</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/watches/ds-848/">Watches</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/watches/ds-848/"> <b>ALL WATCHES</b>
															</a>
															<ul>
																<li><a
																	href="/watches/ds-848/?targeted-gender=men&set-filter=Y">Mens
																		Watches</a></li>
																<li><a
																	href="/watches/ds-848/?targeted-gender=women&set-filter=Y">Women
																		Watches</a></li>
																<li><a href="/watches/ds-848/?keywords=sport">Sporty
																		Watches</a></li>
																<li><a
																	href="/watches/ds-848/?sort=price-desc&min-price=500">Expensive
																		Watches</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/watches/ds-848/"> <b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?#category=Watches&price=0-100">Below
																		100 BDT</a></li>
																<li><a
																	href="/search/?#category=Watches&price=100-300">100
																		- 300 BDT</a></li>
																<li><a
																	href="/search/?#category=Watches&price=300-500">300
																		- 500 BDT</a></li>
																<li><a
																	href="/search/?#category=Watches&price=500-1000">500
																		- 1000 BDT</a></li>
																<li><a
																	href="/search/?#category=Watches&price=1000-14999">Above
																		1000 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/watches/ds-848/"> <b>SHOP BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?#category=Watches&brand=Casio">Casio</a></li>
																<li><a
																	href="/search/?#category=Watches&brand=Curren">Curren</a></li>
																<li><a
																	href="/search/?#category=Watches&brand=Tissot">Tissot</a></li>
																<li><a href="/search/?#category=Watches&brand=Omax">Omax</a></li>
																<li><a
																	href="/search/?#category=Watches&brand=Quartz">Quartz</a></li>
																<li><a
																	href="/search/?#category=Watches&brand=Swiscardin">Swiscardin</a></li>
																<li><a
																	href="/search/?#category=Watches&brand=Slimstar">Slimstar</a></li>
																<li><a
																	href="/search/?#category=Watches&brand=Xetex">Xetex</a></li>
																<li><a
																	href="/search/?#category=Watches&brand=Titan">Titan</a></li>
																<li><a
																	href="/search/?#category=Watches&brand=Kenneth%20Cole">Kenneth
																		Cole</a></li>
															</ul>
														</div>
													</div>
												</div></li>
										</ul>
									</div>
								</div></li>
							<li class="has_child apparel_icon"><a class="ico"
								href="/apparel-and-accessories/ds-961/"><img
									class="menu_ico"
									src="/bitrix/templates/awok-lang/images/header/apparel-icon.svg"
									title="" alt="" /><span>Apparel & Accessories</span> </a>
								<div class="child">
									<div class="sub_menu">
										<ul class="sub_menu_list">
											<li class="no_child"><a href="/sunglasses/ds-963/">Sunglasses</a></li>
											<li class="no_child"><a href="/bags/ds-1012/">Bags</a></li>
											<li class="no_child"><a href="/eyewear-frames/ds-1024/">Eyewear
													Frames</a></li>
											<li class="no_child"><a href="/watches/ds-848/">Watches</a></li>
											<li class="no_child"><a href="/footwear/ds-1238/">FootWear</a></li>
										</ul>
									</div>
								</div></li>

							<li class="has_child clothes_icon"><a class="ico"
								href="/clothes/ds-1255/"><img class="menu_ico"
									src="/bitrix/templates/awok-lang/images/header/apparel-icon.svg"
									title="" alt="" /><span>Clothes</span> </a>
								<div class="child">
									<div class="sub_menu">
										<ul class="sub_menu_list">
											<li class="has_child"><a href="/mens-fashion/ds-1256/">Men's
													Fashion</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/jewellery/ds-962/"> <b>Shop Deals By</b>
															</a>
															<ul>
																<li><a href="/bermuda/ds-1262/">Bermuda</a></li>
																<li><a href="/blazers/ds-1265/">Blazers</a></li>
																<li><a href="/hat-and-cap/ds-1266/">Hat and Cap</a></li>
																<li><a href="/jackets/ds-1270/">Jackets</a></li>
																<li><a href="/jeans/ds-1259/">Jeans</a></li>
																<li><a href="/jogging-set/ds-1273/">Jogging Set</a></li>
																<li><a href="/kandora/ds-1267/">Kandora</a></li>
																<li><a href="/pajama/ds-1268/">Pajama</a></li>
																<li><a href="/shirts/ds-1261/">Shirts</a></li>
																<li><a href="/socks/ds-1263/">Socks</a></li>
																<li><a href="/suit/ds-1269/">Suit</a></li>
																<li><a href="/sweaters/ds-1271/">Sweaters and
																		Sweatshirts</a></li>
																<li><a href="/t-shirts/ds-1258/">T-shirts</a></li>
																<li><a href="/tie/ds-1272/">Tie</a></li>
																<li><a href="/trousers/ds-1260/">Trousers</a></li>
																<li><a href="/underwear/ds-1264/">Underwear</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/womens-fashion/ds-1257/">Women's
													Fashion</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/watches/ds-848/"> <b>Shop Deals By</b>
															</a>
															<ul>
																<li><a href="/abhaya/ds-1285/">Abhaya</a></li>
																<li><a href="/jackets-f/ds-1279/">Jackets</a></li>
																<li><a href="/jeans-f/ds-1276/">Jeans</a></li>
																<li><a href="/leggings/ds-1284/">Leggings</a></li>
																<li><a href="/lingerie/ds-1286/">Lingerie</a></li>
																<li><a href="/long-dresses/ds-1282/">Long
																		Dresses</a></li>
																<li><a href="/pajama-f/ds-1283/">Pajama</a></li>
																<li><a href="/shirts-f/ds-1275/">Shirts</a></li>
																<li><a href="/skirts/ds-1281/">Skirts</a></li>
																<li><a href="/socks-f/ds-1288/">Socks</a></li>
																<li><a href="/sweaters-f/ds-1280/">Sweaters and
																		Sweatshirts</a></li>
																<li><a href="/t-shirts-f/ds-1274/">T-shirts</a></li>
																<li><a href="/tops/ds-1278/">Tops</a></li>
																<li><a href="/trousers-f/ds-1277/">Trousers</a></li>
																<li><a href="/underwear-f/ds-1287/">Underwear</a></li>
															</ul>
														</div>
													</div>
												</div></li>
										</ul>
									</div>
								</div></li>

							<li class="has_child health_icon"><a class="ico"
								href="/health-and-beauty/ds-858/"><img class="menu_ico"
									src="/bitrix/templates/awok-lang/images/header/health-beauty-icon.svg"
									title="" alt="" /><span>Health & Beauty</span> </a>
								<div class="child">
									<div class="sub_menu">
										<ul class="sub_menu_list">
											<li class="has_child"><a href="/cosmetics/ds-999/">Cosmetics</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/cosmetics/ds-999/"> <b>ALL COSMETICS</b>
															</a>
															<ul>
																<li><a href="/search/?q=makeup#category=Cosmetics">Make
																		up kit</a></li>
																<li><a href="/search/?q=mascara#category=Cosmetics">Mascara</a></li>
																<li><a href="/search/?q=blusher#category=Cosmetics">Blusher</a></li>
																<li><a href="/search/?q=eye#category=Cosmetics">For
																		Eyes</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/cosmetics/ds-999/"> <b>SHOP BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=beauty treasure&BRAND=brand:beauty treasure&CATEGORY=category:cosmetics">Beauty
																		Treasure</a></li>
																<li><a
																	href="/search/?q=calvin klein&BRAND=brand:calvin klein&CATEGORY=category:cosmetics">Calvin
																		Klein</a></li>
																<li><a
																	href="/search/?q=christian dior&BRAND=brand:christian dior&CATEGORY=category:cosmetics">Christian
																		Dior</a></li>
																<li><a
																	href="/search/?q=dolce & gabbana&BRAND=brand:dolce %20%26%20 gabbana&CATEGORY=category:cosmetics">Dolce
																		& Gabbana</a></li>
																<li><a
																	href="/search/?q=lchear&BRAND=brand:lchear&CATEGORY=category:cosmetics">Lchear</a></li>
																<li><a
																	href="/search/?q=lidanxiu&BRAND=brand:lidanxiu&CATEGORY=category:cosmetics">Lidanxiu</a></li>
																<li><a
																	href="/search/?q=liza&BRAND=brand:liza&CATEGORY=category:cosmetics">Liza</a></li>
																<li><a
																	href="/search/?q=naked&BRAND=brand:naked&CATEGORY=category:cosmetics">Naked</a></li>
																<li><a
																	href="/search/?q=noor kajal&BRAND=brand:noor kajal&CATEGORY=category:cosmetics">Noor
																		Kajal</a></li>
																<li><a
																	href="/search/?q=olay&BRAND=brand:olay&CATEGORY=category:cosmetics">Olay</a></li>
																<li><a
																	href="/search/?q=tailaimei&BRAND=brand:tailaimei&CATEGORY=category:cosmetics">Tailaimei</a></li>
																<li><a
																	href="/search/?q=top lady&BRAND=brand:top lady&CATEGORY=category:cosmetics">Top
																		Lady</a></li>
																<li><a
																	href="/search/?q=victoria's secret&BRAND=brand:victoria's secret&CATEGORY=category:cosmetics">Victoria's
																		Secret</a></li>
																<li><a
																	href="/search/?q=vivadana&BRAND=brand:vivadana&CATEGORY=category:cosmetics">Vivadana</a></li>
																<li><a
																	href="/search/?q=xlx&BRAND=brand:xlx&CATEGORY=category:cosmetics">Xlx</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/cosmetics/ds-999/"> <b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=#category=Cosmetics&price=1-100">Below
																		100 BDT</a></li>
																<li><a
																	href="/search/?q=#category=Cosmetics&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?q=#category=Cosmetics&price=200-300">200
																		- 300 BDT</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/perfumes/ds-846/">Perfumes</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/perfumes/ds-846/"> <b>ALL PERFUMES</b>
															</a>
															<ul>
																<li><a
																	href="/perfumes/ds-846/?fragrance-for=men&set-filter=Y">Perfumes
																		for Men</a></li>
																<li><a
																	href="/perfumes/ds-846/?fragrance-for=women&set-filter=Y">Perfumes
																		for Women</a></li>
																<li><a
																	href="/perfumes/ds-846/?fragrance-for=unisex&set-filter=Y">Perfumes
																		for Unisex</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/perfumes/ds-846/"> <b>SHOP BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=#category=Perfumes&brand=Ferrari">Ferrari</a></li>
																<li><a
																	href="/search/?q=#category=Perfumes&brand=Calvin%20Klein">Calvin
																		Klein</a></li>
																<li><a
																	href="/search/?q=#category=Perfumes&brand=Versace">Versace</a></li>
																<li><a
																	href="/search/?q=#category=Perfumes&brand=Hugo%20Boss">Hugo
																		Boss</a></li>
																<li><a
																	href="/search/?q=#category=Perfumes&brand=Azzaro">Azzaro</a></li>
																<li><a
																	href="/search/?q=#category=Perfumes&brand=Lacoste">Lacoste</a></li>
																<li><a
																	href="/search/?q=#category=Perfumes&brand=Victoria%27s%20Secret">Victoria
																		Secret</a></li>
																<li><a
																	href="/search/?q=#category=Perfumes&brand=Christian%20Dior">Christian
																		Dior</a></li>
																<li><a
																	href="/search/?q=#category=Perfumes&brand=Carolina%20Herrera">Carolina
																		Herrera</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/perfumes/ds-846/"> <b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=#category=Perfumes&price=1-100">Below
																		100 BDT</a></li>
																<li><a
																	href="/search/?q=#category=Perfumes&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?q=#category=Perfumes&price=200-300">200
																		- 300 BDT</a></li>
																<li><a
																	href="/search/?q=#category=Perfumes&price=300-500">300
																		- 500 BDT</a></li>
																<li><a
																	href="/search/?q=#category=Perfumes&price=500-14999">Above
																		500 BDT</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/shavers-trimmers/ds-839/">Shavers & Trimmers</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/shavers-trimmers/ds-839/"> <b>ALL
																	SHAVERS & TRIMMERS</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=beard%20trimmer&#category=Shavers%20%26%20Trimmers">Beard
																		Trimmer</a></li>
																<li><a
																	href="/search/?q=Hair%20Trimmer&#category=Shavers%20%26%20Trimmers">Hair
																		Trimmer</a></li>
																<li><a
																	href="/search/?q=Hair%20Clipper&#category=Shavers%20%26%20Trimmers">Hair
																		Clipper</a></li>
																<li><a
																	href="/search/?q=women%20shaver&#category=Shavers%20%26%20Trimmers">Beauty
																		Epilator</a></li>
																<li><a
																	href="/search/?q=shaver&#category=Shavers%20%26%20Trimmers">Shavers</a></li>
																<li><a
																	href="/search/?q=nose%20trimmer&#category=Shavers%20%26%20Trimmers">Nose
																		Trimmer</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/shavers-trimmers/ds-839/"> <b>SHOP BY
																	PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&price=1-100">Below
																		100 BDT</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&price=200-500">200
																		- 500 BDT</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&price=500-14999">Above
																		500 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/shavers-trimmers/ds-839/"> <b>SHOP BY
																	BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&brand=Panasonic">Panasonic</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&brand=Braun">Braun</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&brand=Philips">Philips</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&brand=Moser">Moser</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&brand=Cyber">Cyber</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&brand=Nevica">Nevica</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&brand=Palson">Palson</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&brand=Olympia">Olympia</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&brand=Sonashi">Sonashi</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&brand=Sanford">Sanford</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/health-and-beauty/ds-858/">Hair Stylers and Body
													Massagers</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/shavers-trimmers/ds-839/"> <b>All
																	Stylers and Massagers</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=Hair%20Straighteners&#category=Shavers%20%26%20Trimmers,Health%20and%20Beauty">Hair
																		Straighteners</a></li>
																<li><a
																	href="/search/?q=Hair%20Stylers&#category=Shavers%20%26%20Trimmers">Hair
																		Stylers</a></li>
																<li><a
																	href="/search/?q=Hair%20Curler&#category=Shavers%20%26%20Trimmers">Hair
																		Curler</a></li>
																<li><a
																	href="/search/?q=Foot%20SPA&#category=Shavers%20%26%20Trimmers">Foot
																		SPA</a></li>
																<li><a
																	href="/search/?q=Body%20Massagers&#category=Shavers%20%26%20Trimmers">Body
																		Massagers</a></li>
																<li><a
																	href="/search/?q=Facial%20Steamers&#category=Shavers%20%26%20Trimmers">Facial
																		Steamers</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/shavers-trimmers/ds-839/"> <b>SHOP BY
																	PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&price=1-100">Below
																		100 BDT</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&price=200-500">200
																		- 500 BDT</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&price=500-14999">Above
																		500 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/shavers-trimmers/ds-839/"> <b>SHOP BY
																	BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&brand=Braun">Braun</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&brand=Babyliss">Babyliss</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&brand=Panasonic">Panasonic</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&brand=Philips">Philips</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&brand=Cyber">Cyber</a></li>
																<li><a
																	href="/search/?#category=Shavers%20%26%20Trimmers&brand=Nevica">Nevica</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="no_child"><a href="/skin-care/ds-1180/">
													Skin Care </a></li>
											<li class="no_child"><a href="/hair-care/ds-1181/">
													Hair Care </a></li>
										</ul>
									</div>
								</div></li>
							<li class="has_child homeappl_icon"><a class="ico"
								href="/Home-Appliances/ds-830/"><img class="menu_ico"
									src="/bitrix/templates/awok-lang/images/header/home-appliances-icon.svg"
									title="" alt="" /><span>Home & Kitchen</span> </a>
								<div class="child">
									<div class="sub_menu">
										<ul class="sub_menu_list">
											<li class="has_child"><a href="/Blenders/ds-832/">Blenders</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Blenders/ds-832/"> <b>ALL BLENDERS</b>
															</a>
															<ul>
																<li><a href="/search/?q=blender&#category=Blenders">Blender</a></li>
																<li><a
																	href="/search/?q=hand+blender&#category=Blenders">Hand
																		Blender</a></li>
																<li><a
																	href="/search/?q=juicer+blender&#category=Blenders">Juicer
																		Blender</a></li>
																<li><a href="/search/?q=vegetable+chopper">Vegetable
																		Chopper</a></li>
																<li><a
																	href="/search/?q=blender+with+grinder&#category=Blenders">Blender
																		with Grinder</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Blenders/ds-832/"> <b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=#category=Blenders&price=1-100">Below
																		100 BDT</a></li>
																<li><a
																	href="/search/?q=#category=Blenders&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?q=#category=Blenders&price=200-300">200
																		- 300 BDT</a></li>
																<li><a
																	href="/search/?q=#category=Blenders&price=300-500">300
																		- 500 BDT</a></li>
																<li><a
																	href="/search/?q=#category=Blenders&price=500-14999">Above
																		500 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Blenders/ds-832/"> <b>SHOP BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=aftron&BRAND=brand:aftron&CATEGORY=category:blenders">Aftron</a></li>
																<li><a
																	href="/search/?q=black and decker&BRAND=brand:black and decker&CATEGORY=category:blenders">Black
																		And Decker</a></li>
																<li><a
																	href="/search/?q=cyber&BRAND=brand:cyber&CATEGORY=category:blenders">Cyber</a></li>
																<li><a
																	href="/search/?q=eurolux&BRAND=brand:eurolux&CATEGORY=category:blenders">Eurolux</a></li>
																<li><a
																	href="/search/?q=eurosonic&BRAND=brand:eurosonic&CATEGORY=category:blenders">Eurosonic</a></li>
																<li><a
																	href="/search/?q=geepas&BRAND=brand:geepas&CATEGORY=category:blenders">Geepas</a></li>
																<li><a
																	href="/search/?q=kenwood&BRAND=brand:kenwood&CATEGORY=category:blenders">Kenwood</a></li>
																<li><a
																	href="/search/?q=moulinex&BRAND=brand:moulinex&CATEGORY=category:blenders">Moulinex</a></li>
																<li><a
																	href="/search/?q=nevica&BRAND=brand:nevica&CATEGORY=category:blenders">Nevica</a></li>
																<li><a
																	href="/search/?q=nova&BRAND=brand:nova&CATEGORY=category:blenders">Nova</a></li>
																<li><a
																	href="/search/?q=olsenmark&BRAND=brand:olsenmark&CATEGORY=category:blenders">Olsenmark</a></li>
																<li><a
																	href="/search/?q=olympia&BRAND=brand:olympia&CATEGORY=category:blenders">Olympia</a></li>
																<li><a
																	href="/search/?q=panasonic&BRAND=brand:panasonic&CATEGORY=category:blenders">Panasonic</a></li>
																<li><a
																	href="/search/?q=philips&BRAND=brand:philips&CATEGORY=category:blenders">Philips</a></li>
																<li><a
																	href="/search/?q=sonashi&BRAND=brand:sonashi&CATEGORY=category:blenders">Sonashi</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/Food-Processor/ds-833/">Food
													Processors</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Food-Processor/ds-833/"> <b>ALL FOOD
																	PROCESSORS</b>
															</a>
															<ul>
																<li><a href="/search/?q=food+processor">Food
																		Processor</a></li>
																<li><a href="/search/?q=food+steamer">Food
																		Steamer</a></li>
																<li><a
																	href="/search/?q=Hand%20Mixer&#category=Home%20Appliances,Other%20Home%20Appliances,Food%20Processors,Blenders">ALL
																		FOOD PROCESSORS</a></li>
																<li><a href="/search/?q=Induction+Cooker">Induction
																		Cooker</a></li>
																<li><a href="/search/?q=Egg+Boiler">Egg Boiler</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Food-Processor/ds-833/"> <b>SHOP BY
																	PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?#category=Food%20Processors&price=1-100">Below
																		100 BDT</a></li>
																<li><a
																	href="/search/?#category=Food%20Processors&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?#category=Food%20Processors&price=200-300">200
																		- 300 BDT</a></li>
																<li><a
																	href="/search/?#category=Food%20Processors&price=300-500">300
																		- 500 BDT</a></li>
																<li><a
																	href="/search/?#category=Food%20Processors&price=500-14999">Above
																		500 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Food-Processor/ds-833/"> <b>SHOP BY
																	BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=aftron&BRAND=brand:aftron&CATEGORY=category:food processors">Aftron</a></li>
																<li><a
																	href="/search/?q=black and decker&BRAND=brand:black and decker&CATEGORY=category:food processors">Black
																		And Decker</a></li>
																<li><a
																	href="/search/?q=braun&BRAND=brand:braun&CATEGORY=category:food processors">Braun</a></li>
																<li><a
																	href="/search/?q=cyber&BRAND=brand:cyber&CATEGORY=category:food processors">Cyber</a></li>
																<li><a
																	href="/search/?q=geepas&BRAND=brand:geepas&CATEGORY=category:food processors">Geepas</a></li>
																<li><a
																	href="/search/?q=kenwood&BRAND=brand:kenwood&CATEGORY=category:food processors">Kenwood</a></li>
																<li><a
																	href="/search/?q=moulinex&BRAND=brand:moulinex&CATEGORY=category:food processors">Moulinex</a></li>
																<li><a
																	href="/search/?q=nevica&BRAND=brand:nevica&CATEGORY=category:food processors">Nevica</a></li>
																<li><a
																	href="/search/?q=nova&BRAND=brand:nova&CATEGORY=category:food processors">Nova</a></li>
																<li><a
																	href="/search/?q=olympia&BRAND=brand:olympia&CATEGORY=category:food processors">Olympia</a></li>
																<li><a
																	href="/search/?q=panasonic&BRAND=brand:panasonic&CATEGORY=category:food processors">Panasonic</a></li>
																<li><a
																	href="/search/?q=philips&BRAND=brand:philips&CATEGORY=category:food processors">Philips</a></li>
																<li><a
																	href="/search/?q=preethi&BRAND=brand:preethi&CATEGORY=category:food processors">Preethi</a></li>
																<li><a
																	href="/search/?q=sanford&BRAND=brand:sanford&CATEGORY=category:food processors">Sanford</a></li>
																<li><a
																	href="/search/?q=sonashi&BRAND=brand:sonashi&CATEGORY=category:food processors">Sonashi</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/Irons/ds-834/">Irons</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Irons/ds-834/"> <b>ALL IRONS</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=steam%20iron&#category=Irons,Home%20Appliances">Steam
																		Iron</a></li>
																<li><a
																	href="/search/?q=dry%20iron&#category=Irons,Home%20Appliances">Dry
																		Iron</a></li>
																<li><a
																	href="/search/?q=Spray%20iron&#category=Irons">Spray
																		Iron</a></li>
																<li><a
																	href="/search/?q=Garment%20Steamer&#category=Irons">Garment
																		Steamer</a></li>
																<li><a
																	href="/search/?q=travel%20iron&#category=Irons">Travel
																		Iron</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Irons/ds-834/"> <b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=iron&#category=Irons,Home%20Appliances,Other%20Home%20Appliances&price=1-100">Below
																		100 BDT</a></li>
																<li><a
																	href="/search/?q=iron&#category=Irons,Home%20Appliances,Other%20Home%20Appliances&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?q=iron&#category=Irons,Home%20Appliances,Other%20Home%20Appliances&price=200-300">200
																		- 300 BDT</a></li>
																<li><a
																	href="/search/?q=iron&#category=Irons,Home%20Appliances,Other%20Home%20Appliances&price=300-500">300
																		- 500 BDT</a></li>
																<li><a
																	href="/search/?q=iron&#category=Irons,Home%20Appliances,Other%20Home%20Appliances&price=500-14999">Above
																		500 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Irons/ds-834/"> <b>SHOP BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=aftron&BRAND=brand:aftron&CATEGORY=category:irons">Aftron</a></li>
																<li><a
																	href="/search/?q=black and decker&BRAND=brand:black and decker&CATEGORY=category:irons">Black
																		And Decker</a></li>
																<li><a
																	href="/search/?q=cyber&BRAND=brand:cyber&CATEGORY=category:irons">Cyber</a></li>
																<li><a
																	href="/search/?q=geepas&BRAND=brand:geepas&CATEGORY=category:irons">Geepas</a></li>
																<li><a
																	href="/search/?q=hitachi&BRAND=brand:hitachi&CATEGORY=category:irons">Hitachi</a></li>
																<li><a
																	href="/search/?q=nevica&BRAND=brand:nevica&CATEGORY=category:irons">Nevica</a></li>
																<li><a
																	href="/search/?q=nikai&BRAND=brand:nikai&CATEGORY=category:irons">Nikai</a></li>
																<li><a
																	href="/search/?q=nova&BRAND=brand:nova&CATEGORY=category:irons">Nova</a></li>
																<li><a
																	href="/search/?q=olsenmark&BRAND=brand:olsenmark&CATEGORY=category:irons">Olsenmark</a></li>
																<li><a
																	href="/search/?q=olympia&BRAND=brand:olympia&CATEGORY=category:irons">Olympia</a></li>
																<li><a
																	href="/search/?q=panasonic&BRAND=brand:panasonic&CATEGORY=category:irons">Panasonic</a></li>
																<li><a
																	href="/search/?q=philips&BRAND=brand:philips&CATEGORY=category:irons">Philips</a></li>
																<li><a
																	href="/search/?q=sonashi&BRAND=brand:sonashi&CATEGORY=category:irons">Sonashi</a></li>
																<li><a
																	href="/search/?q=tefal&BRAND=brand:tefal&CATEGORY=category:irons">Tefal</a></li>
																<li><a
																	href="/search/?q=zaiba&BRAND=brand:zaiba&CATEGORY=category:irons">Zaiba</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/kettle/ds-1019/">Kettle</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/kettle/ds-1019/"> <b>ALL KETTLE</b>
															</a>
															<ul>
																<li><a href="/search/?q=plastic&#category=Kettle">Plastic
																		Kettle</a></li>
																<li><a href="/search/?q=steel&#category=Kettle">Steel
																		Kettle</a></li>
																<li><a
																	href="/search/?q=travelling&#category=Kettle">Travelling
																		Kettle</a></li>
																<li><a href="/search/?q=cordless&#category=Kettle">Cordless
																		Kettle</a></li>
																<li><a href="/search/?q=electric&#category=Kettle">Electric
																		Kettle</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/kettle/ds-1019/"> <b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=&#category=Kettle&price=1-100">Below
																		100 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Kettle&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Kettle&price=200-300">200
																		- 300 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/kettle/ds-1019/"> <b>SHOP BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=black and decker&BRAND=brand:black and decker&CATEGORY=category:kettle">Black
																		And Decker</a></li>
																<li><a
																	href="/search/?q=braun&BRAND=brand:braun&CATEGORY=category:kettle">Braun</a></li>
																<li><a
																	href="/search/?q=cyber&BRAND=brand:cyber&CATEGORY=category:kettle">Cyber</a></li>
																<li><a
																	href="/search/?q=eurosonic&BRAND=brand:eurosonic&CATEGORY=category:kettle">Eurosonic</a></li>
																<li><a
																	href="/search/?q=geepas&BRAND=brand:geepas&CATEGORY=category:kettle">Geepas</a></li>
																<li><a
																	href="/search/?q=hitachi&BRAND=brand:hitachi&CATEGORY=category:kettle">Hitachi</a></li>
																<li><a
																	href="/search/?q=kenwood&BRAND=brand:kenwood&CATEGORY=category:kettle">Kenwood</a></li>
																<li><a
																	href="/search/?q=nevica&BRAND=brand:nevica&CATEGORY=category:kettle">Nevica</a></li>
																<li><a
																	href="/search/?q=nikai&BRAND=brand:nikai&CATEGORY=category:kettle">Nikai</a></li>
																<li><a
																	href="/search/?q=nova&BRAND=brand:nova&CATEGORY=category:kettle">Nova</a></li>
																<li><a
																	href="/search/?q=olsenmark&BRAND=brand:olsenmark&CATEGORY=category:kettle">Olsenmark</a></li>
																<li><a
																	href="/search/?q=olympia&BRAND=brand:olympia&CATEGORY=category:kettle">Olympia</a></li>
																<li><a
																	href="/search/?q=recke&BRAND=brand:recke&CATEGORY=category:kettle">Recke</a></li>
																<li><a
																	href="/search/?q=sonashi&BRAND=brand:sonashi&CATEGORY=category:kettle">Sonashi</a></li>
																<li><a
																	href="/search/?q=wtrtr&BRAND=brand:wtrtr&CATEGORY=category:kettle">Wtrtr</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/Kitchen-Ware/ds-985/">Kitchen
													Ware</a>
												<div class="child section3">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Kitchen-Ware/ds-985/"> <b>ALL KITCHEN
																	WARE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=serving&#category=Kitchen%20Supplies">Servingware</a></li>
																<li><a
																	href="/search/?q=peeler&#category=Kitchen%20Supplies">Peeler</a></li>
																<li><a
																	href="/search/?q=tongs&#category=Kitchen%20Supplies">Tongs</a></li>
																<li><a
																	href="/search/?q=pizza&#category=Other%20Home%20Appliances,Kitchen%20Supplies,Home%20Appliances,Pans">Pizza
																		Cutter & Turner</a></li>
																<li><a
																	href="/search/?q=ice%20cream&#category=Kitchen%20Supplies,Cookware%20Set">Ice
																		Cream Scoops</a></li>
																<li><a
																	href="/search/?q=egg%20slicer&#category=Kitchen%20Supplies">Egg
																		Slicer</a></li>
																<li><a
																	href="/search/?q=whisk&#category=Kitchen%20Supplies">Whisk</a></li>
																<li><a
																	href="/search/?q=can+opener&#category=Kitchen%20Supplies">Can
																		opener</a></li>
																<li><a
																	href="/search/?q=Plastic%20Basket&#category=Kitchen%20Supplies,Home%20Appliances">Plastic
																		Basket</a></li>
																<li><a
																	href="/search/?q=Apple%20Slicer&#category=Home%20Appliances,Other%20Home%20Appliances,Kitchen%20Supplies">Apple
																		Slicer & Cutter</a></li>
																<li><a
																	href="/search/?q=Rolling&#category=Home%20Appliances,Kitchen%20Supplies">Rolling</a></li>
																<li><a href="/search/?q=food+container">Food
																		Containers</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<ul>
																<li><a href="/search/?q=air+tight+container">Airtight
																		Containers</a></li>
																<li><a href="/search/?q=insulated+cassarole">Insulated
																		Casserole</a></li>
																<li><a
																	href="/search/?q=fry+pan&#category=Pans%2CHome+Appliances%2CFood+Processors">Fry
																		Pan</a></li>
																<li><a href="/search/?q=grill+pan">Grill Pan</a></li>
																<li><a href="/search/?q=cutting+board">Cutting
																		Board</a></li>
																<li><a
																	href="/search/?q=flask&#category=Home%20Appliances,Other%20Home%20Appliances,Hot%20Pot">Flask</a></li>
																<li><a
																	href="/search/?q=cutlery%20set&#category=Kitchen%20Supplies,Home%20Appliances">Cutlery
																		Set</a></li>
																<li><a
																	href="/search/?q=dish%20rack&#category=Other%20Home%20Appliances,Home%20Appliances,Kitchen%20Supplies">Dish
																		Rack</a></li>
																<li><a
																	href="/search/?q=dinner%20set&#category=Dinner%20Set,Home%20Appliances">Dinner
																		Set</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Kitchen-Ware/ds-985/"> <b>SHOP BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=cyber&BRAND=brand:cyber&CATEGORY=category:kitchen ware,kitchen supplies%,pans,dinner set,home appliances,cookware set,food container,food warmer,hot pot,casserole,pressure cooker">Cyber</a></li>
																<li><a
																	href="/search/?q=epsilon&BRAND=brand:epsilon&CATEGORY=category:kitchen ware,kitchen supplies%,pans,dinner set,home appliances,cookware set,food container,food warmer,hot pot,casserole,pressure cooker">Epsilon</a></li>
																<li><a
																	href="/search/?q=flamingo&BRAND=brand:flamingo&CATEGORY=category:kitchen ware,kitchen supplies%,pans,dinner set,home appliances,cookware set,food container,food warmer,hot pot,casserole,pressure cooker">Flamingo</a></li>
																<li><a
																	href="/search/?q=nevica&BRAND=brand:nevica&CATEGORY=category:kitchen ware,kitchen supplies%,pans,dinner set,home appliances,cookware set,food container,food warmer,hot pot,casserole,pressure cooker">Nevica</a></li>
																<li><a
																	href="/search/?q=olsenmark&BRAND=brand:olsenmark&CATEGORY=category:kitchen ware,kitchen supplies%,pans,dinner set,home appliances,cookware set,food container,food warmer,hot pot,casserole,pressure cooker">Olsenmark</a></li>
																<li><a
																	href="/search/?q=olympia&BRAND=brand:olympia&CATEGORY=category:kitchen ware,kitchen supplies%,pans,dinner set,home appliances,cookware set,food container,food warmer,hot pot,casserole,pressure cooker">Olympia</a></li>
																<li><a
																	href="/search/?q=royal ford&BRAND=brand:royal ford&CATEGORY=category:kitchen ware,kitchen supplies%,pans,dinner set,home appliances,cookware set,food container,food warmer,hot pot,casserole,pressure cooker">Royal
																		Ford</a></li>
																<li><a
																	href="/search/?q=royal mark&BRAND=brand:royal mark&CATEGORY=category:kitchen ware,kitchen supplies%,pans,dinner set,home appliances,cookware set,food container,food warmer,hot pot,casserole,pressure cooker">Royal
																		Mark</a></li>
																<li><a
																	href="/search/?q=selecto&BRAND=brand:selecto&CATEGORY=category:kitchen ware,kitchen supplies%,pans,dinner set,home appliances,cookware set,food container,food warmer,hot pot,casserole,pressure cooker">Selecto</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Kitchen-Ware/ds-985/"> <b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=dish%20rack&#category=Other%20Home%20Appliances,Home%20Appliances,Kitchen%20Supplies,Dinner%20Set,Hot%20Pot&price=50-100">50
																		- 100 BDT</a></li>
																<li><a
																	href="/search/?q=dish%20rack&#category=Other%20Home%20Appliances,Home%20Appliances,Kitchen%20Supplies,Dinner%20Set,Hot%20Pot&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?q=dish%20rack&#category=Other%20Home%20Appliances,Home%20Appliances,Kitchen%20Supplies,Dinner%20Set,Hot%20Pot&price=200-14999">Above
																		200 BDT</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/Meat-Grinder-Mincer/ds-835/">Meat
													Grinders/Mincers</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Meat-Grinder-Mincer/ds-835/"> <b>ALL
																	MEAT GRINDERS/MINCERS</b>
															</a>
															<ul>
																<li><a href="/search/?q=meat+grinder">Meat
																		Grinders</a></li>
																<li><a href="/search/?q=meat+mincer">Meat
																		Mincers</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Meat-Grinder-Mincer/ds-835/"> <b>SHOP
																	BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=meat&#category=Meat%20Grinders/Mincers,Home%20Appliances&price=0-200">Below
																		200 BDT</a></li>
																<li><a
																	href="/search/?q=meat&#category=Meat%20Grinders/Mincers,Home%20Appliances&price=200-300">200
																		- 300 BDT</a></li>
																<li><a
																	href="/search/?q=meat&#category=Meat%20Grinders/Mincers,Home%20Appliances&price=300-500">300
																		- 500 BDT</a></li>
																<li><a
																	href="/search/?q=meat&#category=Meat%20Grinders/Mincers,Home%20Appliances&price=500-14999">Above
																		500 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Meat-Grinder-Mincer/ds-835/"> <b>SHOP
																	BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=cyber&BRAND=brand:cyber&CATEGORY=category:meat grinders/mincers">Cyber</a></li>
																<li><a
																	href="/search/?q=eurosonic&BRAND=brand:eurosonic&CATEGORY=category:meat grinders/mincers">Eurosonic</a></li>
																<li><a
																	href="/search/?q=flamingo&BRAND=brand:flamingo&CATEGORY=category:meat grinders/mincers">Flamingo</a></li>
																<li><a
																	href="/search/?q=geepas&BRAND=brand:geepas&CATEGORY=category:meat grinders/mincers">Geepas</a></li>
																<li><a
																	href="/search/?q=moulinex&BRAND=brand:moulinex&CATEGORY=category:meat grinders/mincers">Moulinex</a></li>
																<li><a
																	href="/search/?q=nikai&BRAND=brand:nikai&CATEGORY=category:meat grinders/mincers">Nikai</a></li>
																<li><a
																	href="/search/?q=nova&BRAND=brand:nova&CATEGORY=category:meat grinders/mincers">Nova</a></li>
																<li><a
																	href="/search/?q=olsenmark&BRAND=brand:olsenmark&CATEGORY=category:meat grinders/mincers">Olsenmark</a></li>
																<li><a
																	href="/search/?q=olympia&BRAND=brand:olympia&CATEGORY=category:meat grinders/mincers">Olympia</a></li>
																<li><a
																	href="/search/?q=panasonic&BRAND=brand:panasonic&CATEGORY=category:meat grinders/mincers">Panasonic</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/MICROWAVE-OVEN/ds-838/">Microwave
													Ovens</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/MICROWAVE-OVEN/ds-838/"> <b>ALL
																	MICROWAVE OVENS</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=oven&#category=Microwave%20Oven,Home%20Appliances">Microwave
																		Oven</a></li>
																<li><a href="/search/?q=grill+microwave">Grill
																		Microwave</a></li>
																<li><a href="/search/?q=electric+toaster">Electic
																		Oven Toaster</a></li>
																<li><a
																	href="/search/?q=digital%20microwave&#category=Microwave%20Oven">Digital
																		Microwave</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/MICROWAVE-OVEN/ds-838/"> <b>SHOP BY
																	PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=&#category=Microwave%20Oven&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Microwave%20Oven&price=200-300">200
																		- 300 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Microwave%20Oven&price=300-500">300
																		- 500 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Microwave%20Oven&price=500-14999">Above
																		500 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/MICROWAVE-OVEN/ds-838/"> <b>SHOP BY
																	BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=aftron&BRAND=brand:aftron&CATEGORY=category:microwave oven">Aftron</a></li>
																<li><a
																	href="/search/?q=black and decker&BRAND=brand:black and decker&CATEGORY=category:microwave oven">Black
																		And Decker</a></li>
																<li><a
																	href="/search/?q=eurosonic&BRAND=brand:eurosonic&CATEGORY=category:microwave oven">Eurosonic</a></li>
																<li><a
																	href="/search/?q=geepas&BRAND=brand:geepas&CATEGORY=category:microwave oven">Geepas</a></li>
																<li><a
																	href="/search/?q=impex&BRAND=brand:impex&CATEGORY=category:microwave oven">Impex</a></li>
																<li><a
																	href="/search/?q=jakemy&BRAND=brand:jakemy&CATEGORY=category:microwave oven">Jakemy</a></li>
																<li><a
																	href="/search/?q=kenwood&BRAND=brand:kenwood&CATEGORY=category:microwave oven">Kenwood</a></li>
																<li><a
																	href="/search/?q=lg&BRAND=brand:lg&CATEGORY=category:microwave oven">Lg</a></li>
																<li><a
																	href="/search/?q=nevica&BRAND=brand:nevica&CATEGORY=category:microwave oven">Nevica</a></li>
																<li><a
																	href="/search/?q=nikai&BRAND=brand:nikai&CATEGORY=category:microwave oven">Nikai</a></li>
																<li><a
																	href="/search/?q=nova&BRAND=brand:nova&CATEGORY=category:microwave oven">Nova</a></li>
																<li><a
																	href="/search/?q=olsenmark&BRAND=brand:olsenmark&CATEGORY=category:microwave oven">Olsenmark</a></li>
																<li><a
																	href="/search/?q=panasonic&BRAND=brand:panasonic&CATEGORY=category:microwave oven">Panasonic</a></li>
																<li><a
																	href="/search/?q=sanyo&BRAND=brand:sanyo&CATEGORY=category:microwave oven">Sanyo</a></li>
																<li><a
																	href="/search/?q=sonashi&BRAND=brand:sonashi&CATEGORY=category:microwave oven">Sonashi</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/Other-Home-Appliances/ds-855/">Other Home
													Appliances</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Other-Home-Appliances/ds-855/"> <b>ALL
																	HOME APPLIANCES</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=hot%20plate&#category=Home%20Appliances,Other%20Home%20Appliances,Food%20Processors">Hot
																		Plate</a></li>
																<li><a
																	href="/search/?q=hand%20mixer&#category=Home%20Appliances,Other%20Home%20Appliances,Food%20Processors">Hand
																		Mixer</a></li>
																<li><a
																	href="/search/?q=coffee%20maker&#category=Home%20Appliances,Other%20Home%20Appliances">Coffee
																		Maker</a></li>
																<li><a
																	href="/search/?q=pizza%20maker&#category=Other%20Home%20Appliances,Home%20Appliances">Pizza
																		Maker</a></li>
																<li><a
																	href="/search/?q=room%20heater&#category=Other%20Home%20Appliances">Room
																		Heater</a></li>
																<li><a href="/search/?q=water+dispenser">Water
																		Dispenser</a></li>
																<li><a
																	href="/search/?q=gas%20burner&#category=Other%20Home%20Appliances,Home%20Appliances,Microwave%20Oven">Gas
																		Burner</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Other-Home-Appliances/ds-855/"> <b>SHOP
																	BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=&#category=Other%20Home%20Appliances,Home%20Appliances&price=0-100">Below
																		100 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Other%20Home%20Appliances,Home%20Appliances&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Other%20Home%20Appliances,Home%20Appliances&price=200-300">200
																		- 300 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Other%20Home%20Appliances,Home%20Appliances&price=300-500">300
																		- 500 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Other%20Home%20Appliances,Home%20Appliances&price=500-14999">Above
																		500 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Other-Home-Appliances/ds-855/"> <b>SHOP
																	BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=black and decker&BRAND=brand:black and decker&CATEGORY=category:other home appliances">Black
																		And Decker</a></li>
																<li><a
																	href="/search/?q=cyber&BRAND=brand:cyber&CATEGORY=category:other home appliances">Cyber</a></li>
																<li><a
																	href="/search/?q=delonghi&BRAND=brand:delonghi&CATEGORY=category:other home appliances">Delonghi</a></li>
																<li><a
																	href="/search/?q=doulton&BRAND=brand:doulton&CATEGORY=category:other home appliances">Doulton</a></li>
																<li><a
																	href="/search/?q=eurolux&BRAND=brand:eurolux&CATEGORY=category:other home appliances">Eurolux</a></li>
																<li><a
																	href="/search/?q=fabi&BRAND=brand:fabi&CATEGORY=category:other home appliances">Fabi</a></li>
																<li><a
																	href="/search/?q=flamingo&BRAND=brand:flamingo&CATEGORY=category:other home appliances">Flamingo</a></li>
																<li><a
																	href="/search/?q=geepas&BRAND=brand:geepas&CATEGORY=category:other home appliances">Geepas</a></li>
																<li><a
																	href="/search/?q=nevica&BRAND=brand:nevica&CATEGORY=category:other home appliances">Nevica</a></li>
																<li><a
																	href="/search/?q=nova&BRAND=brand:nova&CATEGORY=category:other home appliances">Nova</a></li>
																<li><a
																	href="/search/?q=olsenmark&BRAND=brand:olsenmark&CATEGORY=category:other home appliances">Olsenmark</a></li>
																<li><a
																	href="/search/?q=olympia&BRAND=brand:olympia&CATEGORY=category:other home appliances">Olympia</a></li>
																<li><a
																	href="/search/?q=royal ford&BRAND=brand:royal ford&CATEGORY=category:other home appliances">Royal
																		Ford</a></li>
																<li><a
																	href="/search/?q=sanford&BRAND=brand:sanford&CATEGORY=category:other home appliances">Sanford</a></li>
																<li><a
																	href="/search/?q=sonashi&BRAND=brand:sonashi&CATEGORY=category:other home appliances">Sonashi</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/rice-cooker/ds-1021/">Cooker</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/rice-cooker/ds-1021/"> <b>ALL COOKER</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=rice%20cooker&#category=Home%20Appliances,Rice%20Cooker,Food%20Processors">Rice
																		Cooker</a></li>
																<li><a
																	href="/search/?q=rice%20cooker&#category=Home%20Appliances,Rice%20Cooker,Food%20Processors">Electric
																		Rice Cooker</a></li>
																<li><a href="/search/?q=&#category=Food%20Steamer">Food
																		Steamer</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/rice-cooker/ds-1021/"> <b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=rice%20cooker&#category=Home%20Appliances,Rice%20Cooker,Food%20Processors,Food%20Steamer&price=0-100">Below
																		100 BDT</a></li>
																<li><a
																	href="/search/?q=rice%20cooker&#category=Home%20Appliances,Rice%20Cooker,Food%20Processors,Food%20Steamer&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?q=rice%20cooker&#category=Home%20Appliances,Rice%20Cooker,Food%20Processors,Food%20Steamer&price=200-300">200
																		- 300 BDT</a></li>
																<li><a
																	href="/search/?q=rice%20cooker&#category=Home%20Appliances,Rice%20Cooker,Food%20Processors,Food%20Steamer&price=500-14999">Above
																		500 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/rice-cooker/ds-1021/"> <b>SHOP BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=clikon&BRAND=brand:clikon&CATEGORY=category:cooker">Clikon</a></li>
																<li><a
																	href="/search/?q=cyber&BRAND=brand:cyber&CATEGORY=category:cooker">Cyber</a></li>
																<li><a
																	href="/search/?q=epa&BRAND=brand:epa&CATEGORY=category:cooker">Epa</a></li>
																<li><a
																	href="/search/?q=geepas&BRAND=brand:geepas&CATEGORY=category:cooker">Geepas</a></li>
																<li><a
																	href="/search/?q=hi-fi&BRAND=brand:hi-fi&CATEGORY=category:cooker">Hi-fi</a></li>
																<li><a
																	href="/search/?q=htc&BRAND=brand:htc&CATEGORY=category:cooker">Htc</a></li>
																<li><a
																	href="/search/?q=milano&BRAND=brand:milano&CATEGORY=category:cooker">Milano</a></li>
																<li><a
																	href="/search/?q=nevica&BRAND=brand:nevica&CATEGORY=category:cooker">Nevica</a></li>
																<li><a
																	href="/search/?q=nikai&BRAND=brand:nikai&CATEGORY=category:cooker">Nikai</a></li>
																<li><a
																	href="/search/?q=nova&BRAND=brand:nova&CATEGORY=category:cooker">Nova</a></li>
																<li><a
																	href="/search/?q=olsenmark&BRAND=brand:olsenmark&CATEGORY=category:cooker">Olsenmark</a></li>
																<li><a
																	href="/search/?q=olympia&BRAND=brand:olympia&CATEGORY=category:cooker">Olympia</a></li>
																<li><a
																	href="/search/?q=panasonic&BRAND=brand:panasonic&CATEGORY=category:cooker">Panasonic</a></li>
																<li><a
																	href="/search/?q=philips&BRAND=brand:philips&CATEGORY=category:cooker">Philips</a></li>
																<li><a
																	href="/search/?q=sonashi&BRAND=brand:sonashi&CATEGORY=category:cooker">Sonashi</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/sandwich-maker/ds-1018/">Sandwich
													Maker</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/sandwich-maker/ds-1018/"> <b>ALL
																	SANDWICH MAKER</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=&#category=Sandwich%20Maker">Sandwich
																		Maker</a></li>
																<li><a href="/search/?q=grill+maker">Grill
																		Maker</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/sandwich-maker/ds-1018/"> <b>SHOP BY
																	PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=&#category=Sandwich%20Maker&price=0-100">Below
																		100 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Sandwich%20Maker&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Sandwich%20Maker&price=200-300">200
																		- 300 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/sandwich-maker/ds-1018/"> <b>SHOP BY
																	BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=black and decker&BRAND=brand:black and decker&CATEGORY=category:sandwich maker">Black
																		And Decker</a></li>
																<li><a
																	href="/search/?q=cyber&BRAND=brand:cyber&CATEGORY=category:sandwich maker">Cyber</a></li>
																<li><a
																	href="/search/?q=eurosonic&BRAND=brand:eurosonic&CATEGORY=category:sandwich maker">Eurosonic</a></li>
																<li><a
																	href="/search/?q=fg&BRAND=brand:fg&CATEGORY=category:sandwich maker">Fg</a></li>
																<li><a
																	href="/search/?q=geepas&BRAND=brand:geepas&CATEGORY=category:sandwich maker">Geepas</a></li>
																<li><a
																	href="/search/?q=kenwood&BRAND=brand:kenwood&CATEGORY=category:sandwich maker">Kenwood</a></li>
																<li><a
																	href="/search/?q=nevica&BRAND=brand:nevica&CATEGORY=category:sandwich maker">Nevica</a></li>
																<li><a
																	href="/search/?q=nhormus&BRAND=brand:nhormus&CATEGORY=category:sandwich maker">Nhormus</a></li>
																<li><a
																	href="/search/?q=nikai&BRAND=brand:nikai&CATEGORY=category:sandwich maker">Nikai</a></li>
																<li><a
																	href="/search/?q=nova&BRAND=brand:nova&CATEGORY=category:sandwich maker">Nova</a></li>
																<li><a
																	href="/search/?q=olsenmark&BRAND=brand:olsenmark&CATEGORY=category:sandwich maker">Olsenmark</a></li>
																<li><a
																	href="/search/?q=olympia&BRAND=brand:olympia&CATEGORY=category:sandwich maker">Olympia</a></li>
																<li><a
																	href="/search/?q=royal mark&BRAND=brand:royal mark&CATEGORY=category:sandwich maker">Royal
																		Mark</a></li>
																<li><a
																	href="/search/?q=sansui&BRAND=brand:sansui&CATEGORY=category:sandwich maker">Sansui</a></li>
																<li><a
																	href="/search/?q=sonashi&BRAND=brand:sonashi&CATEGORY=category:sandwich maker">Sonashi</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/torch-emergency-lights/ds-1020/">Torch &
													Emergency Lights</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/torch-emergency-lights/ds-1020/"> <b>ALL
																	TORCH AND EMERGENCY LIGHTS</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=torch&#category=Torch%20%26%20Emergency%20Lights">Torch</a></li>
																<li><a
																	href="/search/?q=emergency%20lights&#category=Torch%20%26%20Emergency%20Lights">Emergency
																		Lights</a></li>
																<li><a
																	href="/search/?q=flash&#category=Torch%20%26%20Emergency%20Lights">Flash
																		Lights</a></li>
																<li><a
																	href="/search/?q=led%20torch&#category=Torch%20%26%20Emergency%20Lights">LED
																		Torch</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/torch-emergency-lights/ds-1020/"> <b>SHOP
																	BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=led%20torch&#category=Torch%20%26%20Emergency%20Lights&price=0-100">Below
																		100 BDT</a></li>
																<li><a
																	href="/search/?q=led%20torch&#category=Torch%20%26%20Emergency%20Lights&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?q=led%20torch&#category=Torch%20%26%20Emergency%20Lights&price=200-300">200
																		- 300 BDT</a></li>

															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/torch-emergency-lights/ds-1020/"> <b>SHOP
																	BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=admirai&BRAND=brand:admirai&CATEGORY=category:torch %26amp%3B emergency lights">Admirai</a></li>
																<li><a
																	href="/search/?q=casibao&BRAND=brand:casibao&CATEGORY=category:torch %26amp%3B emergency lights">Casibao</a></li>
																<li><a
																	href="/search/?q=clikon&BRAND=brand:clikon&CATEGORY=category:torch %26amp%3B emergency lights">Clikon</a></li>
																<li><a
																	href="/search/?q=cyber&BRAND=brand:cyber&CATEGORY=category:torch %26amp%3B emergency lights">Cyber</a></li>
																<li><a
																	href="/search/?q=epsilon&BRAND=brand:epsilon&CATEGORY=category:torch %26amp%3B emergency lights">Epsilon</a></li>
																<li><a
																	href="/search/?q=eurolux&BRAND=brand:eurolux&CATEGORY=category:torch %26amp%3B emergency lights">Eurolux</a></li>
																<li><a
																	href="/search/?q=fsl&BRAND=brand:fsl&CATEGORY=category:torch %26amp%3B emergency lights">Fsl</a></li>
																<li><a
																	href="/search/?q=kamisafe&BRAND=brand:kamisafe&CATEGORY=category:torch %26amp%3B emergency lights">Kamisafe</a></li>
																<li><a
																	href="/search/?q=microlab&BRAND=brand:microlab&CATEGORY=category:torch %26amp%3B emergency lights">Microlab</a></li>
																<li><a
																	href="/search/?q=nevica&BRAND=brand:nevica&CATEGORY=category:torch %26amp%3B emergency lights">Nevica</a></li>
																<li><a
																	href="/search/?q=olympia&BRAND=brand:olympia&CATEGORY=category:torch %26amp%3B emergency lights">Olympia</a></li>
																<li><a
																	href="/search/?q=sanford&BRAND=brand:sanford&CATEGORY=category:torch %26amp%3B emergency lights">Sanford</a></li>
																<li><a
																	href="/search/?q=sonashi&BRAND=brand:sonashi&CATEGORY=category:torch %26amp%3B emergency lights">Sonashi</a></li>
																<li><a
																	href="/search/?q=stronglite&BRAND=brand:stronglite&CATEGORY=category:torch %26amp%3B emergency lights">Stronglite</a></li>
																<li><a
																	href="/search/?q=toshiba&BRAND=brand:toshiba&CATEGORY=category:torch %26amp%3B emergency lights">Toshiba</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/Vacuum-Cleaner/ds-831/">Vacuum
													Cleaners</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Vacuum-Cleaner/ds-831/"> <b>SHOP BY
																	PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=#category=Vacuum%20Cleaners&price=0-100">Below
																		100 BDT</a></li>
																<li><a
																	href="/search/?q=#category=Vacuum%20Cleaners&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?q=#category=Vacuum%20Cleaners&price=200-300">200
																		- 300 BDT</a></li>
																<li><a
																	href="/search/?q=#category=Vacuum%20Cleaners&price=300-500">300
																		- 500 BDT</a></li>
																<li><a
																	href="/search/?q=#category=Vacuum%20Cleaners&price=500-14999">Above
																		500 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Vacuum-Cleaner/ds-831/"> <b>SHOP BY
																	BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=black and decker&BRAND=brand:black and decker&CATEGORY=category:vacuum cleaners">Black
																		And Decker</a></li>
																<li><a
																	href="/search/?q=cyber&BRAND=brand:cyber&CATEGORY=category:vacuum cleaners">Cyber</a></li>
																<li><a
																	href="/search/?q=daytek&BRAND=brand:daytek&CATEGORY=category:vacuum cleaners">Daytek</a></li>
																<li><a
																	href="/search/?q=geepas&BRAND=brand:geepas&CATEGORY=category:vacuum cleaners">Geepas</a></li>
																<li><a
																	href="/search/?q=hitachi&BRAND=brand:hitachi&CATEGORY=category:vacuum cleaners">Hitachi</a></li>
																<li><a
																	href="/search/?q=impex&BRAND=brand:impex&CATEGORY=category:vacuum cleaners">Impex</a></li>
																<li><a
																	href="/search/?q=karcher&BRAND=brand:karcher&CATEGORY=category:vacuum cleaners">Karcher</a></li>
																<li><a
																	href="/search/?q=kenwood&BRAND=brand:kenwood&CATEGORY=category:vacuum cleaners">Kenwood</a></li>
																<li><a
																	href="/search/?q=moulinex&BRAND=brand:moulinex&CATEGORY=category:vacuum cleaners">Moulinex</a></li>
																<li><a
																	href="/search/?q=nikai&BRAND=brand:nikai&CATEGORY=category:vacuum cleaners">Nikai</a></li>
																<li><a
																	href="/search/?q=nova&BRAND=brand:nova&CATEGORY=category:vacuum cleaners">Nova</a></li>
																<li><a
																	href="/search/?q=olsenmark&BRAND=brand:olsenmark&CATEGORY=category:vacuum cleaners">Olsenmark</a></li>
																<li><a
																	href="/search/?q=panasonic&BRAND=brand:panasonic&CATEGORY=category:vacuum cleaners">Panasonic</a></li>
																<li><a
																	href="/search/?q=rowenta&BRAND=brand:rowenta&CATEGORY=category:vacuum cleaners">Rowenta</a></li>
																<li><a
																	href="/search/?q=sonashi&BRAND=brand:sonashi&CATEGORY=category:vacuum cleaners">Sonashi</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/Washing-Machine/ds-836/">Washing
													Machines</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Washing-Machine/ds-836/"> <b>ALL
																	WASHING MACHINES</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=automatic%20washing&#category=Washing%20Machine">Fully
																		Automatic Washing Machine</a></li>
																<li><a
																	href="/search/?q=semi+automatic+washing&#category=Washing%20Machine">Semi
																		Automatic Washing Machine</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Washing-Machine/ds-836/"> <b>SHOP BY
																	PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=&#category=Washing%20Machine&price=0-200">Below
																		200 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Washing%20Machine&price=200-500">200
																		- 500 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Washing%20Machine&price=500-1000">500
																		- 1000 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Washing%20Machine&price=1000-14999">Above
																		1000 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Washing-Machine/ds-836/"> <b>SHOP BY
																	BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=geepas&BRAND=brand:geepas&CATEGORY=category:washing machines">Geepas</a></li>
																<li><a
																	href="/search/?q=lg&BRAND=brand:lg&CATEGORY=category:washing machines">Lg</a></li>
																<li><a
																	href="/search/?q=mebashi&BRAND=brand:mebashi&CATEGORY=category:washing machines">Mebashi</a></li>
																<li><a
																	href="/search/?q=nevica&BRAND=brand:nevica&CATEGORY=category:washing machines">Nevica</a></li>
																<li><a
																	href="/search/?q=nobel&BRAND=brand:nobel&CATEGORY=category:washing machines">Nobel</a></li>
																<li><a
																	href="/search/?q=nova&BRAND=brand:nova&CATEGORY=category:washing machines">Nova</a></li>
																<li><a
																	href="/search/?q=panasonic&BRAND=brand:panasonic&CATEGORY=category:washing machines">Panasonic</a></li>
																<li><a
																	href="/search/?q=sonashi&BRAND=brand:sonashi&CATEGORY=category:washing machines">Sonashi</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="no_child"><a href="/home-decoration/ds-1294/">Home
													Decoration</a></li>
											<li class="no_child"><a href="/towels/ds-1156/">Towels</a></li>
											<li class="no_child"><a href="/bed-sheets/ds-1172/">Bed
													Sheets</a></li>
											<li class="no_child"><a href="/bath-robes/ds-1157/">Bath
													Robes</a></li>
											<li class="no_child"><a href="/pillow-cushions/ds-1239/">Pillow
													& Cushions</a></li>
											<li class="no_child"><a href="/juicer/ds-1250/">Juicer
													Blender</a></li>
											<li class="no_child"><a href="/hot-plate/ds-1247/">Hot
													Plate</a></li>
											<li class="no_child"><a href="/toaster/ds-1251/">Toaster</a></li>
											<li class="no_child"><a
												href="/stick-blender-chopper/ds-1252/">Stick Blender &
													Chopper</a></li>
											<li class="no_child"><a href="/gas-cooker/ds-1253/">Gas
													Cooker</a></li>
											<li class="no_child"><a href="/scale/ds-1254/">Scale</a></li>
											<li class="no_child"><a
												href="/bath-accessories/ds-1245/">Bath Accessories</a></li>
										</ul>
									</div>
								</div></li>
							<li class="has_child entrtain_icon"><a class="ico"
								href="/Multimedia-1/ds-603/"><img class="menu_ico"
									src="/bitrix/templates/awok-lang/images/header/entertainment-icon.svg"
									title="" alt="" /><span>TV & Audio/Video Systems</span> </a>
								<div class="child">
									<div class="sub_menu">
										<ul class="sub_menu_list">
											<li class="has_child"><a href="/Televisions/ds-822/">Televisions</a>
												<div class="child section3">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Televisions/ds-822/"> <b>ALL
																	TELEVISIONS</b>
															</a>
															<ul>
																<li><a href="/search/?q=led&#category=Televisions">LED
																		TVs</a></li>
																<li><a
																	href="/search/?q=3d%20led&#category=Televisions">3D
																		LED TVs</a></li>
																<li><a
																	href="/search/?q=ultra+hd&#category=Televisions">Ultra
																		HD TVs</a></li>
																<li><a
																	href="/search/?q=full%20hd&#category=Televisions">Full
																		HD TVs</a></li>
																<li><a href="/search/?q=lcd&#category=Televisions">LCD
																		TVs</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Televisions/ds-822/"> <b>SHOP BY SCREEN
																	SIZE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=32%20inch&#category=Televisions">32
																		inch tv</a></li>
																<li><a
																	href="/search/?q=40%20inch&#category=Televisions">40
																		inch tv</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Televisions/ds-822/"> <b>SHOP BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=benq&BRAND=brand:benq&CATEGORY=category:televisions">Benq</a></li>
																<li><a
																	href="/search/?q=eurostar&BRAND=brand:eurostar&CATEGORY=category:televisions">Eurostar</a></li>
																<li><a
																	href="/search/?q=lg&BRAND=brand:lg&CATEGORY=category:televisions">Lg</a></li>
																<li><a
																	href="/search/?q=samsung&BRAND=brand:samsung&CATEGORY=category:televisions">Samsung</a></li>
																<li><a
																	href="/search/?q=sony&BRAND=brand:sony&CATEGORY=category:televisions">Sony</a></li>
																<li><a
																	href="/search/?q=tcl&BRAND=brand:tcl&CATEGORY=category:televisions">Tcl</a></li>
																<li><a
																	href="/search/?q=toshiba&BRAND=brand:toshiba&CATEGORY=category:televisions">Toshiba</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Televisions/ds-822/"> <b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=&#category=Televisions&price=0-600">Below
																		600 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Televisions&price=600-800">600
																		- 800 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Televisions&price=800-1000">800
																		- 1000 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Televisions&price=1000-1500">1000
																		- 1500 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Televisions&price=1500-14999">Above
																		1500 BDT</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/Speakers/ds-614/">Speakers
													& Home Theater</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Speakers/ds-614/"> <b>ALL SPEAKERS &
																	HOME THEATERS</b>
															</a>
															<ul>
																<li><a href="/search/?q=desktop&#category=Speakers">Desktop
																		Speakers</a></li>
																<li><a href="/search/?q=woofer&#category=Speakers">Speaker
																		with Subwoofer</a></li>
																<li><a href="/search/?q=theatre&#category=Speakers">Home
																		Theatre System</a></li>
																<li><a href="/search/?q=usb&#category=Speakers">USB
																		Speakers</a></li>
																<li><a
																	href="/search/?q=portable&#category=Speakers">Portable
																		Speakers</a></li>
																<li><a
																	href="/search/?q=bluetooth&#category=Speakers">Bluetooth
																		Speakers</a></li>
																<li><a
																	href="/search/?q=wireless&#category=Speakers">Wireless
																		Speakers</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Speakers/ds-614/"> <b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=&#category=Speakers&price=0-100">Below
																		100 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Speakers&price=100-300">100
																		- 300 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Speakers&price=300-500">300
																		- 500 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Speakers&price=500-1000">500
																		- 1000 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Speakers&price=1000-14999">Above
																		1000 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Speakers/ds-614/"> <b>SHOP BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=altec&BRAND=brand:altec&CATEGORY=category:speakers">Altec</a></li>
																<li><a
																	href="/search/?q=bestest&BRAND=brand:bestest&CATEGORY=category:speakers">Bestest</a></li>
																<li><a
																	href="/search/?q=edifier&BRAND=brand:edifier&CATEGORY=category:speakers">Edifier</a></li>
																<li><a
																	href="/search/?q=ralph lauren&BRAND=brand:ralph lauren&CATEGORY=category:speakers">Ralph
																		Lauren</a></li>
																<li><a
																	href="/search/?q=samsung&BRAND=brand:samsung&CATEGORY=category:speakers">Samsung</a></li>
																<li><a
																	href="/search/?q=target&BRAND=brand:target&CATEGORY=category:speakers">Target</a></li>
																<li><a
																	href="/search/?q=vivitar&BRAND=brand:vivitar&CATEGORY=category:speakers">Vivitar</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/earphones-headsets/ds-612/">Headsets & Headphones</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/earphones-headsets/ds-612/"> <b>ALL
																	HEADSETS & HEADPHONES</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=headphone&#category=Mobile%20Accessories,Headphones,Accessories,Multimedia">Head
																		Phone</a></li>
																<li><a
																	href="/search/?q=earphone&#category=Mobile%20Accessories,Headphones,Accessories,Multimedia">Ear
																		Phone</a></li>
																<li><a
																	href="/search/?q=bluetooth+headset&#category=Earphones%20%26%20Headsets">Bluetooth</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/earphones-headsets/ds-612/"> <b>SHOP BY
																	PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=head&#category=Mobile%20Accessories,Headphones,Accessories,Multimedia&price=0-100">Below
																		100 BDT</a></li>
																<li><a
																	href="/search/?q=head&#category=Mobile%20Accessories,Headphones,Accessories,Multimedia&price=100-300">100
																		- 300 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/earphones-headsets/ds-612/"> <b>SHOP BY
																	BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?#category=Mobile%20Accessories,Earphones%20%26%20Headsets,Accessories,Multimedia,Headphones&brand=Beats">Beats</a></li>
																<li><a
																	href="/search/?#category=Mobile%20Accessories,Earphones%20%26%20Headsets,Accessories,Multimedia,Headphones&brand=Circle">Circle</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/MP3-Players/ds-604/">MP3
													Players, Stero & Voice Recorder</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/MP3-Players/ds-604/"> <b>ALL MP3
																	PLAYERS</b>
															</a>
															<ul>
																<li><a href="/search/?q=mp3">MP3 Players</a></li>
																<li><a
																	href="/search/?q=car%20stereo&#category=MP3%20Players">Car
																		Stereo</a></li>
																<li><a
																	href="/search/?q=voice+recorder&#category=MP3%20Players">Digital
																		Voice Recorder</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/MP3-Players/ds-604/"> <b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=mp3&#category=MP3%20Players&price=0-50">Below
																		50 BDT</a></li>
																<li><a
																	href="/search/?q=mp3&#category=MP3%20Players&price=50-100">50
																		- 100 BDT</a></li>
																<li><a
																	href="/search/?q=mp3&#category=MP3%20Players&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?q=mp3&#category=MP3%20Players&price=200-300">200
																		- 300 BDT</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/MP3-Players/ds-604/"> <b>SHOP BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=aigo(爱国者)&BRAND=brand:aigo(爱国者)&CATEGORY=category:mp3 players">Aigo(爱国者)</a></li>
																<li><a
																	href="/search/?q=awei&BRAND=brand:awei&CATEGORY=category:mp3 players">Awei</a></li>
																<li><a
																	href="/search/?q=benjie&BRAND=brand:benjie&CATEGORY=category:mp3 players">Benjie</a></li>
																<li><a
																	href="/search/?q=bestest&BRAND=brand:bestest&CATEGORY=category:mp3 players">Bestest</a></li>
																<li><a
																	href="/search/?q=bison&BRAND=brand:bison&CATEGORY=category:mp3 players">Bison</a></li>
																<li><a
																	href="/search/?q=jakcom(jakcom)&BRAND=brand:jakcom(jakcom)&CATEGORY=category:mp3 players">Jakcom(jakcom)</a></li>
																<li><a
																	href="/search/?q=lavod&BRAND=brand:lavod&CATEGORY=category:mp3 players">Lavod</a></li>
																<li><a
																	href="/search/?q=mahdi&BRAND=brand:mahdi&CATEGORY=category:mp3 players">Mahdi</a></li>
																<li><a
																	href="/search/?q=mecool&BRAND=brand:mecool&CATEGORY=category:mp3 players">Mecool</a></li>
																<li><a
																	href="/search/?q=ruizu&BRAND=brand:ruizu&CATEGORY=category:mp3 players">Ruizu</a></li>
																<li><a
																	href="/search/?q=sony&BRAND=brand:sony&CATEGORY=category:mp3 players">Sony</a></li>
																<li><a
																	href="/search/?q=transcend&BRAND=brand:transcend&CATEGORY=category:mp3 players">Transcend</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/dvd-players/ds-856/">DVD
													Players & Blue-ray Players</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/dvd-players/ds-856/"> <b>ALL DVD
																	PLAYERS</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=dvd%20player&#category=DVD%20Players,Portable%20DVD%20Player,Home%20Appliances">DVD
																		Players</a></li>
																<li><a
																	href="/search/?q=3d+blu%20ray&#category=DVD%20Players,Portable%20DVD%20Player">3D
																		Blu-ray Players</a></li>
																<li><a
																	href="/search/?q=blu%20ray&#category=DVD%20Players,Portable%20DVD%20Player">Blu-ray
																		Players</a></li>
																<li><a
																	href="/search/?q=blu%20ray&#category=Portable%20DVD%20Player">Portable
																		DVD Player</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/dvd-players/ds-856/"> <b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=&#category=DVD%20Players,Portable%20DVD%20Player&price=0-100">Below
																		100 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=DVD%20Players,Portable%20DVD%20Player&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=DVD%20Players,Portable%20DVD%20Player&price=200-300">200
																		- 300 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=DVD%20Players,Portable%20DVD%20Player&price=500-14999">Above
																		500 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/dvd-players/ds-856/"> <b>SHOP BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=baseus&BRAND=brand:baseus&CATEGORY=category:dvd players">Baseus</a></li>
																<li><a
																	href="/search/?q=cyber&BRAND=brand:cyber&CATEGORY=category:dvd players">Cyber</a></li>
																<li><a
																	href="/search/?q=gknuo&BRAND=brand:gknuo&CATEGORY=category:dvd players">Gknuo</a></li>
																<li><a
																	href="/search/?q=lg&BRAND=brand:lg&CATEGORY=category:dvd players">Lg</a></li>
																<li><a
																	href="/search/?q=nevica&BRAND=brand:nevica&CATEGORY=category:dvd players">Nevica</a></li>
																<li><a
																	href="/search/?q=nikai&BRAND=brand:nikai&CATEGORY=category:dvd players">Nikai</a></li>
																<li><a
																	href="/search/?q=olsenmark&BRAND=brand:olsenmark&CATEGORY=category:dvd players">Olsenmark</a></li>
																<li><a
																	href="/search/?q=philips&BRAND=brand:philips&CATEGORY=category:dvd players">Philips</a></li>
																<li><a
																	href="/search/?q=samsung&BRAND=brand:samsung&CATEGORY=category:dvd players">Samsung</a></li>
																<li><a
																	href="/search/?q=sony&BRAND=brand:sony&CATEGORY=category:dvd players">Sony</a></li>
																<li><a
																	href="/search/?q=x3&BRAND=brand:x3&CATEGORY=category:dvd players">X3</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/Telephone-and-Fax/ds-1001/">Telephone & Fax</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Telephone-and-Fax/ds-1001/"> <b>ALL
																	TELEPHONES & FAX</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=Telephone&#category=Telephone%20and%20Fax">Telephone</a></li>
																<li><a
																	href="/search/?q=cordless&#category=Telephone%20and%20Fax">Cordless
																		Phone</a></li>
																<li><a
																	href="/search/?q=Telephone+fax&#category=Telephone%20and%20Fax">Telephone
																		with Fax</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Telephone-and-Fax/ds-1001/"> <b>SHOP BY
																	PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=&#category=Telephone%20and%20Fax&price=0-100">50
																		- 100 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Telephone%20and%20Fax&price=100-200">100
																		- 200 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Telephone%20and%20Fax&price=200-300">200
																		- 300 BDT</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Telephone-and-Fax/ds-1001/"> <b>SHOP BY
																	BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=cyber&BRAND=brand:cyber&CATEGORY=category:telephone and fax">Cyber</a></li>
																<li><a
																	href="/search/?q=eurolux&BRAND=brand:eurolux&CATEGORY=category:telephone and fax">Eurolux</a></li>
																<li><a
																	href="/search/?q=euromax&BRAND=brand:euromax&CATEGORY=category:telephone and fax">Euromax</a></li>
																<li><a
																	href="/search/?q=eurosonic&BRAND=brand:eurosonic&CATEGORY=category:telephone and fax">Eurosonic</a></li>
																<li><a
																	href="/search/?q=panasonic&BRAND=brand:panasonic&CATEGORY=category:telephone and fax">Panasonic</a></li>
																<li><a
																	href="/search/?q=panatel&BRAND=brand:panatel&CATEGORY=category:telephone and fax">Panatel</a></li>
																<li><a
																	href="/search/?q=tcn.tel&BRAND=brand:tcn.tel&CATEGORY=category:telephone and fax">Tcn.tel</a></li>
															</ul>
														</div>
													</div>
												</div></li>
										</ul>
									</div>
								</div></li>
							<li class="has_child laptop_icon"><a class="ico"
								href="/PCs-Laptops/ds-477/"><img class="menu_ico"
									src="/bitrix/templates/awok-lang/images/header/laptops-icon.svg"
									title="" alt="" /><span>PC, Laptops</span> </a>
								<div class="child">
									<div class="sub_menu">
										<ul class="sub_menu_list">
											<li class="has_child"><a
												href="/Laptops-Notebooks/ds-744/">Laptops & Notebooks</a>
												<div class="child section4">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Laptops-Notebooks/ds-744/"> <b>SHOP BY
																	BRAND</b>
															</a>
															<ul>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Laptops-Notebooks/ds-744/"> <b>SHOP BY
																	PROCESSOR</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=intel+celeron+m&#category=Laptops%20%26%20Notebooks">Intel
																		Celeron M</a></li>
																<li><a
																	href="/search/?q=intel+pentium&#category=Laptops%20%26%20Notebooks">Intel
																		Pentium</a></li>
																<li><a
																	href="/search/?q=intel+core+i3&#category=Laptops%20%26%20Notebooks">Intel
																		Core i3</a></li>
																<li><a
																	href="/search/?q=intel+core+i5&#category=Laptops%20%26%20Notebooks">Intel
																		Core i5</a></li>
																<li><a
																	href="/search/?q=intel+core+i7&#category=Laptops%20%26%20Notebooks">Intel
																		Core i7</a></li>
																<li><a
																	href="/search/?q=intel+atom&#category=Laptops%20%26%20Notebooks">Intel
																		Atom</a></li>
																<li><a
																	href="/search/?q=intel+core2+duo&#category=Laptops%20%26%20Notebooks">Intel
																		Core2 Duo</a></li>
																<!--<li><a href="/search/?q=intel+pentium+mobile&#category=Laptops%20%26%20Notebooks" >Intel Pentium Mobile</a></li>-->
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Laptops-Notebooks/ds-744/"> <b>SHOP BY
																	SCREEN</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=10.1&#category=Laptops%20%26%20Notebooks">10.1
																		inch</a></li>
																<li><a
																	href="/search/?q=11&#category=Laptops%20%26%20Notebooks">11
																		inch</a></li>
																<li><a
																	href="/search/?q=11.6&#category=Laptops%20%26%20Notebooks">11.6
																		inch</a></li>
																<li><a
																	href="/search/?q=12.5&#category=Laptops%20%26%20Notebooks">12.5
																		inch</a></li>
																<li><a
																	href="/search/?q=13&#category=Laptops%20%26%20Notebooks">13
																		inch</a></li>
																<li><a
																	href="/search/?q=13.3&#category=Laptops%20%26%20Notebooks">13.3
																		inch</a></li>
																<li><a
																	href="/search/?q=14&#category=Laptops%20%26%20Notebooks">14
																		inch</a></li>
																<li><a
																	href="/search/?q=14.1&#category=Laptops%20%26%20Notebooks">14.1
																		inch</a></li>
																<li><a
																	href="/search/?q=14.4&#category=Laptops%20%26%20Notebooks">14.4
																		inch</a></li>
																<li><a
																	href="/search/?q=15&#category=Laptops%20%26%20Notebooks">15
																		inch</a></li>
																<li><a
																	href="/search/?q=15.4&#category=Laptops%20%26%20Notebooks">15.4
																		inch</a></li>
																<li><a
																	href="/search/?q=15.6&#category=Laptops%20%26%20Notebooks">15.6
																		inch</a></li>

															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Laptops-Notebooks/ds-744/"> <b>SHOP BY
																	PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=&#category=Laptops%20%26%20Notebooks&price=0-800">Below
																		800 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Laptops%20%26%20Notebooks&price=800-1000">800
																		- 1000 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Laptops%20%26%20Notebooks&price=1000-1500">1000
																		- 1500 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Laptops%20%26%20Notebooks&price=1500-2000">1500
																		- 2000 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Laptops%20%26%20Notebooks&price=2000-14999">Above
																		2000 BDT</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/Laptops-Notebooks/ds-744/?brand=apple&set-filter=Y">Macbooks
													& iMacs</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a
																href="/Laptops-Notebooks/ds-744/?brand=apple&set-filter=Y">
																<b>ALL TYPES</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=macbook+air&#category=Laptops%20%26%20Notebooks">MacBook
																		Air</a></li>
																<li><a
																	href="/search/?q=macbook+pro&#category=Laptops%20%26%20Notebooks">MacBook
																		Pro</a></li>
																<li><a
																	href="/search/?q=macbook&#category=Laptops%20%26%20Notebooks">MacBook</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a
																href="/Laptops-Notebooks/ds-744/?brand=apple&set-filter=Y">
																<b>SHOP BY SCREEN SIZE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=macbook%2011&#category=Laptops%20%26%20Notebooks">11
																		inch</a></li>
																<li><a
																	href="/search/?q=macbook%2013&#category=Laptops%20%26%20Notebooks">13
																		inch</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a
																href="/Laptops-Notebooks/ds-744/?brand=apple&set-filter=Y&min-price=3999">
																<b>STARTING FROM 3999 BDT</b>
															</a> </a>
															<ul>
																<li><a
																	href="/search/?q=macbook&#category=Laptops%20%26%20Notebooks&price=3000-4000">3000
																		- 4000 BDT</a></li>
																<li><a
																	href="/search/?q=macbook&#category=Laptops%20%26%20Notebooks&price=4000-5000">4000
																		- 5000 BDT</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/Desktops-Al-in-One-PCs/ds-495/">Computers &
													Desktops</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Desktops-Al-in-One-PCs/ds-495/"> <b>SHOP
																	BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=acer&BRAND=brand:acer&CATEGORY=category:desktops %26amp%3B all-in one pcs">Acer</a></li>
																<li><a
																	href="/search/?q=apple&BRAND=brand:apple&CATEGORY=category:desktops %26amp%3B all-in one pcs">Apple</a></li>
																<li><a
																	href="/search/?q=dell&BRAND=brand:dell&CATEGORY=category:desktops %26amp%3B all-in one pcs">Dell</a></li>
																<li><a
																	href="/search/?q=enet&BRAND=brand:enet&CATEGORY=category:desktops %26amp%3B all-in one pcs">Enet</a></li>
																<li><a
																	href="/search/?q=gateway&BRAND=brand:gateway&CATEGORY=category:desktops %26amp%3B all-in one pcs">Gateway</a></li>
																<li><a
																	href="/search/?q=hp&BRAND=brand:hp&CATEGORY=category:desktops %26amp%3B all-in one pcs">Hp</a></li>
																<li><a
																	href="/search/?q=lg&BRAND=brand:lg&CATEGORY=category:desktops %26amp%3B all-in one pcs">Lg</a></li>
																<li><a
																	href="/search/?q=microsoft&BRAND=brand:microsoft&CATEGORY=category:desktops %26amp%3B all-in one pcs">Microsoft
																</a></li>
																<li><a
																	href="/search/?q=qube&BRAND=brand:qube&CATEGORY=category:desktops %26amp%3B all-in one pcs">Qube</a></li>
																<li><a
																	href="/search/?q=samsung&BRAND=brand:samsung&CATEGORY=category:desktops %26amp%3B all-in one pcs">Samsung</a></li>
																<li><a
																	href="/search/?q=tp-link&BRAND=brand:tp-link&CATEGORY=category:desktops %26amp%3B all-in one pcs">Tp-link</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Desktops-Al-in-One-PCs/ds-495/"> <b>SHOP
																	BY PROCESSOR</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=core&#category=Desktops%20%26%20All-in%20One%20PCs">INTEL
																		CORE</a></li>
																<li><a
																	href="/search/?q=celeron&#category=Desktops%20%26%20All-in%20One%20PCs">INTEL
																		CELL</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Desktops-Al-in-One-PCs/ds-495/"> <b>SHOP
																	BY MONITORS</b>
															</a>
															<ul>
																<li><a
																	href="/search/?&#category=Desktops%20%26%20All-in%20One%20PCs&brand=HP">HP</a></li>
																<li><a
																	href="/search/?&#category=Desktops%20%26%20All-in%20One%20PCs&brand=Dell">DELL</a></li>
																<li><a
																	href="/search/?&#category=Desktops%20%26%20All-in%20One%20PCs&brand=Gateway">Gateway</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/Printers-Scanners-Fax/ds-755/">Printers,
													Scanners, & Fax</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Printers-Scanners-Fax/ds-755/"> <b>ALL
																	TYPE</b>
															</a>
															<ul>
																<li><a href="/search/?q=deskjet">DESKJET</a></li>
																<li><a href="/search/?q=laser">LASER</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Printers-Scanners-Fax/ds-755/"> <b>SHOP
																	BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=anet&BRAND=brand:anet&CATEGORY=category:printers scanners %26amp%3B fax">Anet</a></li>
																<li><a
																	href="/search/?q=benq&BRAND=brand:benq&CATEGORY=category:printers scanners %26amp%3B fax">Benq</a></li>
																<li><a
																	href="/search/?q=brookstone&BRAND=brand:brookstone&CATEGORY=category:printers scanners %26amp%3B fax">Brookstone</a></li>
																<li><a
																	href="/search/?q=brother&BRAND=brand:brother&CATEGORY=category:printers scanners %26amp%3B fax">Brother</a></li>
																<li><a
																	href="/search/?q=canon&BRAND=brand:canon&CATEGORY=category:printers scanners %26amp%3B fax">Canon</a></li>
																<li><a
																	href="/search/?q=citizen&BRAND=brand:citizen&CATEGORY=category:printers scanners %26amp%3B fax">Citizen</a></li>
																<li><a
																	href="/search/?q=epson&BRAND=brand:epson&CATEGORY=category:printers scanners %26amp%3B fax">Epson
																</a></li>
																<li><a
																	href="/search/?q=fujitsu&BRAND=brand:fujitsu&CATEGORY=category:printers scanners %26amp%3B fax">Fujitsu</a></li>
																<li><a
																	href="/search/?q=hp&BRAND=brand:hp&CATEGORY=category:printers scanners %26amp%3B fax">Hp</a></li>
																<li><a
																	href="/search/?q=premiere&BRAND=brand:premiere&CATEGORY=category:printers scanners %26amp%3B fax">Premiere</a></li>
																<li><a
																	href="/search/?q=premium&BRAND=brand:premium&CATEGORY=category:printers scanners %26amp%3B fax">Premium</a></li>
																<li><a
																	href="/search/?q=promise me&BRAND=brand:promise me&CATEGORY=category:printers scanners %26amp%3B fax">Promise
																		Me</a></li>
																<li><a
																	href="/search/?q=ricoh&BRAND=brand:ricoh&CATEGORY=category:printers scanners %26amp%3B fax">Ricoh</a></li>
																<li><a
																	href="/search/?q=samsung&BRAND=brand:samsung&CATEGORY=category:printers scanners %26amp%3B fax">Samsung</a></li>
																<li><a
																	href="/search/?q=xerox&BRAND=brand:xerox&CATEGORY=category:printers scanners %26amp%3B fax">Xerox</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Printers-Scanners-Fax/ds-755/"> <b>SHOP
																	BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=&#category=Printers%20Scanners%20%26%20Fax&price=0-800">Below
																		800 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Printers%20Scanners%20%26%20Fax&price=800-1000">800
																		- 1000 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Printers%20Scanners%20%26%20Fax&price=1000-1500">1000
																		- 1500 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Printers%20Scanners%20%26%20Fax&price=1500-2000">1500
																		- 2000 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Printers%20Scanners%20%26%20Fax&price=2000-14999">Above
																		2000 BDT</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/Accessories/ds-760/">Laptop
													& Desktop Accessories</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Accessories/ds-760/"> <b>ALL
																	ACCESSORIES</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=laptop&#category=Accessories,Bags%20%26%20Handbags,Memory%20/%20RAM,Headsets,Keyboards%20%26%20Mice,Speakers,Gaming%20Accessories">Laptops</a></li>
																<li><a
																	href="/search/?q=laptop&#category=Accessories,Bags%20%26%20Handbags,Memory%20/%20RAM,Headsets,Keyboards%20%26%20Mice,Speakers,Gaming%20Accessories">Notebooks</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Accessories/ds-760/"> <b>KEYBOARDS</b>
															</a>
															<ul>
																<li><a
																	href="/search/?&#category=Keyboards%20%26%20Mice&brand=Apple">Apple</a></li>
																<li><a
																	href="/search/?&#category=Keyboards%20%26%20Mice&brand=Circle">Circle</a></li>
																<li><a
																	href="/search/?&#category=Keyboards%20%26%20Mice&brand=Intex">Intex</a></li>
																<li><a
																	href="/search/?&#category=Keyboards%20%26%20Mice&brand=Logitech">Logitech</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Accessories/ds-760/"> <b>MICE</b>
															</a>
															<ul>
																<li><a href="/search/?#category=Mice&brand=Circle">Circle</a></li>
																<li><a
																	href="/search/?#category=Mice&brand=Microsoft">Microsoft</a></li>
																<li><a href="/search/?#category=Mice&brand=Premium">Premium</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Accessories/ds-760/"> <b>WEB CAMERAS</b>
															</a>
															<ul>
																<li><a
																	href="/search/?#category=Webcams&brand=Microsoft">Microsoft</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Accessories/ds-760/"> <b>HEAD PHONES</b>
															</a>
															<ul>
																<li><a
																	href="/search/?#category=Mobile%20Accessories,Earphones%20%26%20Headsets,Accessories,Multimedia,Headphones&brand=Beats">Beats</a></li>
																<li><a
																	href="/search/?#category=Mobile%20Accessories,Earphones%20%26%20Headsets,Accessories,Multimedia,Headphones&brand=Circle">Circle</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/Hard-Drives/ds-719/">Storage
													& External Drives</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Hard-Drives/ds-719/"> <b>SHOP BY SIZE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=500&#category=Hard%20Drives">500
																		GB</a></li>
																<li><a
																	href="/search/?q=750&#category=Hard%20Drives">750
																		GB</a></li>
																<li><a
																	href="/search/?q=1tb&#category=Hard%20Drives">1 TB</a></li>
																<li><a
																	href="/search/?q=2tb&#category=Hard%20Drives">2 TB</a></li>
																<li><a
																	href="/search/?q=3tb&#category=Hard%20Drives">3 TB</a></li>
																<li><a
																	href="/search/?q=4tb&#category=Hard%20Drives">4 TB</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Hard-Drives/ds-719/"> <b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=&#category=Hard%20Drives&price=0-299">Below
																		299 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Hard%20Drives&price=299-399">299
																		- 399 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Hard%20Drives&price=399-499">399
																		- 499 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Hard%20Drives&price=499-14999">Above
																		499 BDT</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/Networking-Wireless/ds-757/">Networking &
													Wireless</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Networking-Wireless/ds-757/"> <b>SHOP
																	BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=alfa&BRAND=brand:alfa&CATEGORY=category:networking %26amp%3B wireless">Alfa</a></li>
																<li><a
																	href="/search/?q=apple&BRAND=brand:apple&CATEGORY=category:networking %26amp%3B wireless">Apple</a></li>
																<li><a
																	href="/search/?q=brookstone&BRAND=brand:brookstone&CATEGORY=category:networking %26amp%3B wireless">Brookstone</a></li>
																<li><a
																	href="/search/?q=cadyce&BRAND=brand:cadyce&CATEGORY=category:networking %26amp%3B wireless">Cadyce</a></li>
																<li><a
																	href="/search/?q=cyber&BRAND=brand:cyber&CATEGORY=category:networking %26amp%3B wireless">Cyber</a></li>
																<li><a
																	href="/search/?q=dlink&BRAND=brand:dlink&CATEGORY=category:networking %26amp%3B wireless">Dlink</a></li>
																<li><a
																	href="/search/?q=ip camera&BRAND=brand:ip camera&CATEGORY=category:networking %26amp%3B wireless">Ip
																		Camera</a></li>
																<li><a
																	href="/search/?q=ld&BRAND=brand:ld&CATEGORY=category:networking %26amp%3B wireless">Ld</a></li>
																<li><a
																	href="/search/?q=linksys&BRAND=brand:linksys&CATEGORY=category:networking %26amp%3B wireless">Linksys</a></li>
																<li><a
																	href="/search/?q=mobe&BRAND=brand:mobe&CATEGORY=category:networking %26amp%3B wireless">Mobe</a></li>
																<li><a
																	href="/search/?q=premax&BRAND=brand:premax&CATEGORY=category:networking %26amp%3B wireless">Premax</a></li>
																<li><a
																	href="/search/?q=premium&BRAND=brand:premium&CATEGORY=category:networking %26amp%3B wireless">Premium</a></li>
																<li><a
																	href="/search/?q=promate&BRAND=brand:promate&CATEGORY=category:networking %26amp%3B wireless">Promate</a></li>
																<li><a
																	href="/search/?q=techcom&BRAND=brand:techcom&CATEGORY=category:networking %26amp%3B wireless">Techcom</a></li>
																<li><a
																	href="/search/?q=tp-link&BRAND=brand:tp-link&CATEGORY=category:networking %26amp%3B wireless">Tp-link</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Networking-Wireless/ds-757/"> <b>SHOP
																	BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=&#category=Networking%20%26%20Wireless&price=0-800">Below
																		800 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Networking%20%26%20Wireless&price=800-1000">800
																		- 1000 BDT</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/Motherboards/ds-512/">Motherboards,
													CPUs & PSUs</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Motherboards/ds-512/"> <b>SHOP BY TYPE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?#category=Motherboards&brand=Foxconn">Foxconn</a></li>
																<li><a
																	href="/search/?#category=Motherboards&brand=ASRock">ASRock</a></li>
																<li><a
																	href="/search/?#category=Motherboards&brand=Asus">Asus</a></li>
																<li><a
																	href="/search/?#category=Motherboards&brand=Gigabyte">Gigabyte</a></li>
																<li><a
																	href="/search/?#category=Motherboards&brand=Winsonic">Winsonic</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/Flash-Memory-Readers/ds-783/">Flash Drives &
													Memory Card Readers</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Flash-Memory-Readers/ds-783/"> <b>SHOP
																	BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=&#category=Flash%20Memory%20%26%20Readers&price=0-800">Below
																		800 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Flash-Memory-Readers/ds-783/"> <b>SHOP
																	BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=apacer&BRAND=brand:apacer&CATEGORY=category:flash memory %26amp%3B readers">Apacer</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/Webcams/ds-789/">Webcams</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Webcams/ds-789/"> <b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a href="/search/?q=Webcams#price=0-100">Below
																		100 BDT</a></li>
																<li><a href="/search/?q=Webcams#price=100-200">100
																		- 200 BDT</a></li>
																<li><a href="/search/?q=Webcams#price=200-300">200
																		- 300 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Webcams/ds-789/"> <b>SHOP BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=ashu&BRAND=brand:ashu&CATEGORY=category:webcams">Ashu</a></li>
																<li><a
																	href="/search/?q=circle&BRAND=brand:circle&CATEGORY=category:webcams">Circle</a></li>
																<li><a
																	href="/search/?q=hxsj&BRAND=brand:hxsj&CATEGORY=category:webcams">Hxsj</a></li>
																<li><a
																	href="/search/?q=intex&BRAND=brand:intex&CATEGORY=category:webcams">Intex</a></li>
																<li><a
																	href="/search/?q=logitech&BRAND=brand:logitech&CATEGORY=category:webcams">Logitech</a></li>
																<li><a
																	href="/search/?q=microsoft&BRAND=brand:microsoft&CATEGORY=category:webcams">Microsoft
																</a></li>
																<li><a
																	href="/search/?q=premax&BRAND=brand:premax&CATEGORY=category:webcams">Premax</a></li>
																<li><a
																	href="/search/?q=premium&BRAND=brand:premium&CATEGORY=category:webcams">Premium</a></li>
																<li><a
																	href="/search/?q=shivox&BRAND=brand:shivox&CATEGORY=category:webcams">Shivox</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/gaming/ds-745/">Gaming</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/gaming/ds-745/"> <b>GAMING ACCESSORIES</b>
															</a>
															<ul>
																<li><a href="/search/?q=gaming+controller">Controllers</a></li>
																<li><a href="/search/?q=gaming+mice">Gaming
																		Mice</a></li>
																<li><a href="/search/?q=gaming+keyboard">Gaming
																		Keyboards</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/gaming/ds-745/"> <b>GAMES</b>
															</a>
															<ul>
																<li><a href="/search/?q=game#category=PlayStation">PlayStation</a></li>
																<li><a href="/search/?q=game#category=PSP">Psp</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="no_child"><a href="/ink-toners/ds-756/">Ink
													& Toners</a></li>
										</ul>
									</div>
								</div></li>
							<li class="has_child camera_icon"><a class="ico"
								href="/Cameras/ds-539/"><img class="menu_ico"
									src="/bitrix/templates/awok-lang/images/header/cameras-icon.svg"
									title="" alt="" /><span>Cameras & Accessories</span> </a>
								<div class="child">
									<div class="sub_menu">
										<ul class="sub_menu_list">
											<li class="has_child"><a href="/Cameras/ds-539/">Cameras</a>
												<div class="child section2">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Cameras/ds-539/"> <b>ALL CAMERAS</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=#category=Point%20%26%20Shoot%20Cameras">Point
																		& Shoot Cameras</a></li>
																<li><a href="/search/?q=&#category=DSLR%20Cameras">DSLR
																		Cameras</a></li>
																<li><a
																	href="/search/?q=advanced&#category=Point%20%26%20Shoot%20Cameras">Advanced
																		Point & Shoot</a></li>
																<li><a
																	href="/search/?q=camcorders&#category=Camcorders">Camcorders</a></li>
																<li><a
																	href="/search/?q=sports&#category=Camcorders">Sports
																		& Action Cameras</a></li>
															</ul>
														</div>
														<div class="sub_menu_links">
															<a href="/Cameras/ds-539/"> <b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=#category=Point%20%26%20Shoot%20Cameras,Camcorders-200">Below
																		200 BDT</a></li>
																<li><a
																	href="/search/?q=#category=Point%20%26%20Shoot%20Cameras,Camcorders&price=200-500">200
																		- 500 BDT</a></li>
																<li><a
																	href="/search/?q=#category=Point%20%26%20Shoot%20Cameras,Camcorders&price=500-1000">500
																		- 1000 BDT</a></li>
																<li><a
																	href="/search/?q=#category=Point%20%26%20Shoot%20Cameras,Camcorders&price=1000-2000">1000
																		- 2000 BDT</a></li>
																<li><a
																	href="/search/?q=#category=Point%20%26%20Shoot%20Cameras,Camcorders&price=2000-14999">Above
																		2000 BDT</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Cameras/ds-539/"> <b>SHOP BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=andoer&BRAND=brand:andoer&CATEGORY=category:point %26amp%3B shoot cameras,dslr cameras,camcorders">Andoer</a></li>
																<li><a
																	href="/search/?q=goolrc&BRAND=brand:goolrc&CATEGORY=category:point %26amp%3B shoot cameras,dslr cameras,camcorders">Goolrc</a></li>
																<li><a
																	href="/search/?q=ipcc&BRAND=brand:ipcc&CATEGORY=category:point %26amp%3B shoot cameras,dslr cameras,camcorders">Ipcc</a></li>
																<li><a
																	href="/search/?q=joyroom&BRAND=brand:joyroom&CATEGORY=category:point %26amp%3B shoot cameras,dslr cameras,camcorders">Joyroom</a></li>
																<li><a
																	href="/search/?q=kkmoon&BRAND=brand:kkmoon&CATEGORY=category:point %26amp%3B shoot cameras,dslr cameras,camcorders">Kkmoon</a></li>
																<li><a
																	href="/search/?q=lixada&BRAND=brand:lixada&CATEGORY=category:point %26amp%3B shoot cameras,dslr cameras,camcorders">Lixada</a></li>
																<li><a
																	href="/search/?q=my&BRAND=brand:my&CATEGORY=category:point %26amp%3B shoot cameras,dslr cameras,camcorders">My</a></li>
																<li><a
																	href="/search/?q=nippotec&BRAND=brand:nippotec&CATEGORY=category:point %26amp%3B shoot cameras,dslr cameras,camcorders">Nippotec</a></li>
																<li><a
																	href="/search/?q=owsoo&BRAND=brand:owsoo&CATEGORY=category:point %26amp%3B shoot cameras,dslr cameras,camcorders">Owsoo</a></li>
																<li><a
																	href="/search/?q=polaroid&BRAND=brand:polaroid&CATEGORY=category:point %26amp%3B shoot cameras,dslr cameras,camcorders">Polaroid</a></li>
																<li><a
																	href="/search/?q=qrz&BRAND=brand:qrz&CATEGORY=category:point %26amp%3B shoot cameras,dslr cameras,camcorders">Qrz</a></li>
																<li><a
																	href="/search/?q=sjcam&BRAND=brand:sjcam&CATEGORY=category:point %26amp%3B shoot cameras,dslr cameras,camcorders">Sjcam</a></li>
																<li><a
																	href="/search/?q=syma&BRAND=brand:syma&CATEGORY=category:point %26amp%3B shoot cameras,dslr cameras,camcorders">Syma</a></li>
																<li><a
																	href="/search/?q=vivitar&BRAND=brand:vivitar&CATEGORY=category:point %26amp%3B shoot cameras,dslr cameras,camcorders">Vivitar</a></li>
																<li><a
																	href="/search/?q=xiaomi&BRAND=brand:xiaomi&CATEGORY=category:point %26amp%3B shoot cameras,dslr cameras,camcorders">Xiaomi</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a href="/Cameras/ds-539/">Accessories</a>
												<div class="child section3">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Cameras/ds-539/"> <b>ALL ACCESSORIES</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=&#category=Lenses%20%26%20Filters">Camera
																		Lenses</a></li>
																<li><a
																	href="/search/?q=&#category=Flashes%20%26%20Flash%20Accessories">Flashes
																		& Flash Accessories</a></li>
																<li><a
																	href="/search/?q=&#category=Camera%20Batteries">Camera
																		Battery</a></li>
																<li><a
																	href="/search/?q=charger&#category=Camera%20Batteries">Camera
																		Battery Charger</a></li>
																<li><a
																	href="/search/?q=filter&#category=Lenses%20%26%20Filters">Filter</a></li>
																<li><a
																	href="/search/?q=&#category=Camera%20Batteries,Lenses%20%26%20Filters,Cases%20and%20Covers,Flash%20Memory%20%26%20Readers">All
																		Accessories</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Cameras/ds-539/"> <b>SHOP BY BRAND</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=andoer&BRAND=brand:andoer&CATEGORY=category:camera batteries,lenses %26amp%3B filters,cases, bags %26amp%3B covers,flashes %26amp%3B flash accessories">Andoer</a></li>
																<li><a
																	href="/search/?q=colisi&BRAND=brand:colisi&CATEGORY=category:camera batteries,lenses %26amp%3B filters,cases, bags %26amp%3B covers,flashes %26amp%3B flash accessories">Colisi</a></li>
																<li><a
																	href="/search/?q=commlite&BRAND=brand:commlite&CATEGORY=category:camera batteries,lenses %26amp%3B filters,cases, bags %26amp%3B covers,flashes %26amp%3B flash accessories">Commlite</a></li>
																<li><a
																	href="/search/?q=fotga&BRAND=brand:fotga&CATEGORY=category:camera batteries,lenses %26amp%3B filters,cases, bags %26amp%3B covers,flashes %26amp%3B flash accessories">Fotga</a></li>
																<li><a
																	href="/search/?q=kingma&BRAND=brand:kingma&CATEGORY=category:camera batteries,lenses %26amp%3B filters,cases, bags %26amp%3B covers,flashes %26amp%3B flash accessories">Kingma</a></li>
																<li><a
																	href="/search/?q=liitokala&BRAND=brand:liitokala&CATEGORY=category:camera batteries,lenses %26amp%3B filters,cases, bags %26amp%3B covers,flashes %26amp%3B flash accessories">Liitokala</a></li>
																<li><a
																	href="/search/?q=lynca&BRAND=brand:lynca&CATEGORY=category:camera batteries,lenses %26amp%3B filters,cases, bags %26amp%3B covers,flashes %26amp%3B flash accessories">Lynca</a></li>
																<li><a
																	href="/search/?q=micnova&BRAND=brand:micnova&CATEGORY=category:camera batteries,lenses %26amp%3B filters,cases, bags %26amp%3B covers,flashes %26amp%3B flash accessories">Micnova</a></li>
																<li><a
																	href="/search/?q=nevica&BRAND=brand:nevica&CATEGORY=category:camera batteries,lenses %26amp%3B filters,cases, bags %26amp%3B covers,flashes %26amp%3B flash accessories">Nevica</a></li>
																<li><a
																	href="/search/?q=nikon&BRAND=brand:nikon&CATEGORY=category:camera batteries,lenses %26amp%3B filters,cases, bags %26amp%3B covers,flashes %26amp%3B flash accessories">Nikon</a></li>
																<li><a
																	href="/search/?q=nokoser&BRAND=brand:nokoser&CATEGORY=category:camera batteries,lenses %26amp%3B filters,cases, bags %26amp%3B covers,flashes %26amp%3B flash accessories">Nokoser</a></li>
																<li><a
																	href="/search/?q=palo&BRAND=brand:palo&CATEGORY=category:camera batteries,lenses %26amp%3B filters,cases, bags %26amp%3B covers,flashes %26amp%3B flash accessories">Palo</a></li>
																<li><a
																	href="/search/?q=puluz&BRAND=brand:puluz&CATEGORY=category:camera batteries,lenses %26amp%3B filters,cases, bags %26amp%3B covers,flashes %26amp%3B flash accessories">Puluz</a></li>
																<li><a
																	href="/search/?q=viltrox&BRAND=brand:viltrox&CATEGORY=category:camera batteries,lenses %26amp%3B filters,cases, bags %26amp%3B covers,flashes %26amp%3B flash accessories">Viltrox</a></li>
																<li><a
																	href="/search/?q=xiaomi&BRAND=brand:xiaomi&CATEGORY=category:camera batteries,lenses %26amp%3B filters,cases, bags %26amp%3B covers,flashes %26amp%3B flash accessories">Xiaomi</a></li>
															</ul>
														</div>
													</div>
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href="/Cameras/ds-539/"> <b>SHOP BY PRICE</b>
															</a>
															<ul>
																<li><a
																	href="/search/?q=&#category=Camera%20Batteries,Lenses%20%26%20Filters,Cases%20and%20Covers,Flash%20Memory%20%26%20Readers&price=0-100">Below
																		100 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Camera%20Batteries,Lenses%20%26%20Filters,Cases%20and%20Covers,Flash%20Memory%20%26%20Readers&price=100-300">100
																		- 300 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Camera%20Batteries,Lenses%20%26%20Filters,Cases%20and%20Covers,Flash%20Memory%20%26%20Readers&price=300-500">300
																		- 500 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Camera%20Batteries,Lenses%20%26%20Filters,Cases%20and%20Covers,Flash%20Memory%20%26%20Readers&price=500-1000">500
																		- 1000 BDT</a></li>
																<li><a
																	href="/search/?q=&#category=Camera%20Batteries,Lenses%20%26%20Filters,Cases%20and%20Covers,Flash%20Memory%20%26%20Readers&price=1000-14999">Above
																		1000 BDT</a></li>
															</ul>
														</div>
													</div>
												</div></li>
										</ul>
									</div>
								</div></li>
							<li class="has_child toy_icon"><a class="ico"
								href="/toys-and-games/ds-1025/"><img class="menu_ico"
									src="/bitrix/templates/awok-lang/images/header/cameras-icon.svg"
									title="" alt="" /><span>Baby Care & Toys</span> </a>
								<div class="child">
									<div class="sub_menu">
										<ul class="sub_menu_list">
											<li class="no_child"><a href="/baby-healthcare/ds-1127/">Baby
													Healthcare</a></li>
											<li class="no_child"><a href="/toys/ds-1128/">Toys /
													Games</a></li>
											<li class="no_child"><a href="/education/ds-1131//">Education</a></li>
										</ul>
									</div>
								</div></li>

							<li class="has_child sports_icon"><a class="ico"
								href="/sports-outdoors/ds-1146/"><img class="menu_ico"
									src="/bitrix/templates/awok-lang/images/header/sports-icon.svg"
									title="" alt="" /><span>Sports</span> </a>
								<div class="child">
									<div class="sub_menu">
										<ul class="sub_menu_list">
											<li class="no_child"><a href="/scooters/ds-1068/">Scooters</a></li>
											<li class="no_child"><a
												href="/sports-tools-equipments/ds-1161/">Tools &
													Equipments</a></li>
											<li class="no_child"><a
												href="/outdoor-adventure/ds-1159/">Outdoor & Adventure</a></li>
											<li class="no_child"><a
												href="/exercise-fitness/ds-1158/">Exercise & Fitness
													Equipments</a></li>
										</ul>
									</div>
								</div></li>

							<li class="has_child automotive_icon"><a class="ico"
								href="/automotive/ds-1176/"><img class="menu_ico"
									src="/bitrix/templates/awok-lang/images/header/automobile_icon.svg"
									title="" alt="" /><span>Automotive</span> </a>
								<div class="child">
									<div class="sub_menu">
										<ul class="sub_menu_list">
											<li class="no_child"><a href="/car-accessories/ds-1182/">Car
													Accessories</a></li>
											<li class="no_child"><a href="/car-care/ds-1177/">Car
													Care</a></li>
											<li class="no_child"><a
												href="/audio-video-accessories/ds-1178/">Audio & Video
													Accessories</a></li>
										</ul>
									</div>
								</div></li>

							<li class="has_child stationary_icon"><a class="ico"
								href="/stationery-office-supplies/ds-1187/"><img
									class="menu_ico"
									src="/bitrix/templates/awok-lang/images/header/stationary_icon.svg"
									title="" alt="" /><span>Stationery & Office Supplies</span> </a>
								<div class="child">
									<div class="sub_menu">
										<ul class="sub_menu_list">
											<li class="has_child"><a
												href="/stationery-general-supplies/ds-1188/">General
													Supplies</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href=""> <b>All General Supplies</b>
															</a>
															<ul>
																<li><a href="/stationery-scissors/ds-1195/">Scissors</a></li>
																<li><a href="/stationery-staplers/ds-1196/">Staplers</a></li>
																<li><a href="/stationery-stapler-removers/ds-1197/">Stapler
																		Removers</a></li>
																<li><a href="/stationery-cuting-knifes/ds-1198/">Cuting
																		Knifes</a></li>

															</ul>
														</div>
													</div>
												</div></li>

											<li class="has_child"><a
												href="/stationery-writing-instruments/ds-1189/">Writing
													Instruments</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href=""> <b>ALL Writing Instruments</b>
															</a>
															<ul>
																<li><a href="/stationery-pens/ds-1199/">Pens</a></li>
																<li><a href="/stationery-pencils/ds-1200/">Pencils</a></li>
																<li><a
																	href="/stationery-markers-highlighters/ds-1201/">Markers
																		& Highlighters</a></li>
																<li><a
																	href="/stationery-correction-pen-tape/ds-1202/">Correction
																		Pen / Tape</a></li>
																<li><a
																	href="/stationery-sharpeners-and-erasers/ds-1203/">Sharpeners
																		and Erasers</a></li>
																<li><a href="/stationery-rulers/ds-1204/">Rulers</a></li>

															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/stationery-desk-supplies/ds-1190/">Desk Supplies</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href=""> <b>All Desk Supplies</b>
															</a>
															<ul>
																<li><a href="/stationery-pen-stands/ds-1205/">Pen
																		Stands</a></li>
																<li><a href="/stationery-desk-organizers/ds-1206/">Desk
																		Organizers</a></li>
																<li><a
																	href="/stationery-business-card-organizers/ds-1207/">Business
																		Card & Organizers</a></li>
																<li><a href="/stationery-memo-pads/ds-1208/">Memo
																		Pads</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/stationery-office-equipments/ds-1191/">Office
													Equipments</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href=""> <b>All Office Equipments</b>
															</a>
															<ul>
																<li><a href="/shredders/ds-1209/">Shredders</a></li>
																<li><a href="/lamination-machines/ds-1210/">Lamination
																		Machines</a></li>
																<li><a href="/calculator/ds-1211/">Calculator</a></li>
																<li><a href="/binding-machines/ds-1212/">Binding
																		Machines</a></li>
																<li><a href="/paper/ds-1213/">Paper</a></li>
																<li><a href="/paper-trimmers-cutters/ds-1214/">Paper
																		Trimmers & Cutters</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/stationery-tapes-adhesives/ds-1192/">Tapes &
													Adhesives</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href=""> <b>All Tapes & Adhesives</b>
															</a>
															<ul>
																<li><a href="/tape-dispenser/ds-1218/">Tape
																		Dispenser</a></li>
																<li><a href="/carton-sealer/ds-1219/">Carton
																		Sealer</a></li>
																<li><a href="/masking-tapes/ds-1220/">Masking
																		Tapes</a></li>
																<li><a href="/packing-tapes/ds-1221/">Packing
																		Tapes</a></li>
																<li><a href="/transparent-tapes/ds-1222/">Transparent
																		Tapes</a></li>
																<li><a href="/glue-stick/ds-1223/">Glue Stick</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/stationery-arts-crafts/ds-1193/">Art & Crafts</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href=""> <b>All Art & Crafts</b>
															</a>
															<ul>
																<li><a href="/drawing-coloring/ds-1224/">Drawing
																		& Coloring</a></li>
																<li><a href="/white-boards/ds-1225/">White
																		Boards</a></li>
																<li><a href="/crafting-supplies/ds-1226/">Crafting
																		Supplies</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="has_child"><a
												href="/stationery-school-supplies/ds-1194/">School
													Supplies</a>
												<div class="child section1">
													<div class="sub_menu_sections">
														<div class="sub_menu_links">
															<a href=""> <b>All School Supplies</b>
															</a>
															<ul>
																<li><a href="/mathematical-box/ds-1227/">Mathematical
																		box</a></li>
																<li><a href="/pencil-cases/ds-1228/">Pencil
																		Cases</a></li>
																<li><a href="/copy-holders/ds-1229/">Copy
																		Holders</a></li>
																<li><a href="/magnifiers-/ds-1231/">Magnifiers
																</a></li>
																<li><a href="/backpack-bags/ds-1232/">Backpack
																		Bags</a></li>
																<li><a href="/trolly-bags/ds-1234/">Trolley
																		Bags</a></li>
																<li><a href="/lunch-boxes-cases/ds-1235/">Lunch
																		Boxes & Cases</a></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="no_child"><a href="/files-folders/ds-1241/">Files
													& Folders</a></li>
											<li class="no_child"><a href="/gift-items/ds-1236/">Gift
													Sets</a></li>
										</ul>
									</div>
								</div></li>

							<li class="has_child pets_icon"><a class="ico"
								href="/pets-food-supplies/ds-1312/"><img class="menu_ico"
									src="/bitrix/templates/awok-lang/images/header/apparel-icon.svg"
									title="" alt="" /><span>Pet Food & Supplies</span> </a>
								<div class="child">
									<div class="sub_menu">
										<ul class="sub_menu_list">
											<li class="no_child"><a href="/pet-supplies/ds-1314/">Pet
													Supplies</a></li>
											<li class="no_child"><a href="/pet-food/ds-1313/">Pet
													Food</a></li>
										</ul>
									</div>
								</div></li>

							<li class="no_child all_cat"><a href="/help-info/site-map/"><span>All
										Categories</span> </a></li>
						</ul>
					</div>
				</div>
				<!-- awok-online-shopping-logo.png -->
				<div class="site_logo">
					<a href="/"><img src="images/util/logo.png" alt="Maraya Global" /></a>
				</div>
				<div class="site_search">
					<div class="header_isearch">
						<form action="/search/" class="clearFix">
							<input name="q" id="awok_instant_search" type="text" value=""
								placeholder="I am looking for ..." maxlength="50"
								autocomplete="off" /> <input id="submit_isearch" type="submit"
								value="Search" placeholder="Search">
						</form>
						<div class="_instant_search_results1" id="_instant_search_results">
							<div class="_instant_search_cat" id="_instant_search_cat"></div>
							<ul class="_is_new_cat_results" id="_is_new_cat_results"></ul>
							<ul class="search_suggestions" id="search_suggestions"></ul>
							<span class="model_head">Brands</span>
							<ul class="model_suggestions" id="model_suggestions"></ul>
						</div>
					</div>
					<script>
						/* Used in detail page components start */
						var client = algoliasearch("AMQISAHL10",
								"1be2331a5f0b81ea0f41945c5f336057", {
									dsn : true
								}); // public credentials
						var index = client.initIndex('search_AWOKMP');
						/* Used in detail page components end */
						var in_text = "in";
						var results = "results";
						var all_cat = "All Categories";
						var search_suggest = "Search Suggestions";
					</script>
				</div>
				<div class="header_cart">
					<a href="/cart/" data-event-category="click_tracking"
						data-event-action="before_view_cart"
						data-event-label="header-icon"> <span class="cart_icon">
							<span class="zero_number_items">0</span>
					</span> <span class="cart_info"> item(s) <em>Cart</em>
					</span>
					</a>
					<!-- cart popup start -->
					<div class="header_cartdetail">
						<div class="header_cartbox cloading"></div>
					</div>
					<!-- cart popup end -->
				</div>


				<div class="user_options" data-state="0">

					<%
						if (customer != null) {
					%>
					<div class="user_options_link drop_link cursor_pointer">
						<span class="user_options_icon"></span> <span
							class="user_options_info dropdown-toggle"> <em><a
								class="login" href="/customer/profile"><%=customer.getName()%></a>
						</em>
						</span> <span class="user_options_dropdown"> <i
							class="flaticon-arrow483"></i>
						</span>
					</div>
					<div class="user_options_content user-option-menu">

						<div class="header_signin_form content_inner">

							<div class="form_row">
								<div class="form_full_col">

									<a class="dropdown-item" href="profile"><i
										class="far fa-user pr-3"> </i> My Account</a> <a
										class="dropdown-item" href="#"><i
										class="fas fa-truck-moving pr-3"></i>My Order</a> <a
										class="dropdown-item" href="#"><i
										class="fas fa-cart-plus pr-3"></i>My Cart</a> <a
										class="dropdown-item" href="#"><i
										class="far fa-credit-card pr-3"></i>Coupons</a> <a
										class="dropdown-item" href="#"><i
										class="fas fa-bullhorn pr-3"></i>Offers</a> <a
										class="dropdown-item logout" id="logout"><i
										class="fas fa-sign-out-alt pr-3"></i>Logout</a>

								</div>
							</div>

						</div>
					</div>
					<%
						} else {
					%>
					<div class="user_options_link drop_link cursor_pointer">
						<span class="user_options_icon"></span> <span
							class="user_options_info"> <em><a class="login"
								href="/user/login/">Sign In</a> / <a class="register"
								href="signup">Register</a></em> Welcome Guest
						</span> <span class="user_options_dropdown"> <i
							class="flaticon-arrow483"></i>
						</span>
					</div>
					<div class="user_options_content ">

						<div class="header_signin_form content_inner">

							<div class="form_row">
								<div class="form_full_col">
									<input type="text" class="_sh_login_username"
										name="_sh_login_username" id="header_username_input"
										placeholder="Enter Email/Username/Phone"> <span
										data-feild-name="header_username_input" class="error-message">error
										message</span>
								</div>
							</div>
							<div class="form_row">
								<div class="form_full_col">
									<input type="password" class="_sh_login_password"
										name="_sh_login_password" id="header_password_input"
										placeholder="Enter Password"> <span
										data-feild-name="header_password_input" class="error-message">error
										message</span>
								</div>
							</div>
							<div class="form_row">
								<div class="remember_forgot_links">
									<span class="remember_check"> <label for="remember_me"><input
											type="checkbox" id="remember_me" name="_sh_login_remember"
											value="Y"> Stay signed in/ Remember me</label>
									</span> <span class="forgot_link"> <a href="/user/reset/">Forgot
											your password?</a>
									</span>
								</div>
								<div class="signin_button">
									<button class="submit_form_input logint-btn">Sign In</button>
								</div>
							</div>



							<div class="form_row">
								<div class="register_link">
									<p>New customer?</p>
									<a href="signup">REGISTER NOW</a>
								</div>
							</div>
						</div>
					</div>
					<div class="toggle_video tooltip-bottom"
						data-tooltip="Change your media preferences here">
						<i class="fa fa-picture-o fa-lg"></i><span class="toggle-text">Show
							Image</span>
					</div>
					<%
						}
					%>
				</div>
			</div>
		</div>

		<!--Header New Links Start-->
		<div class="header_new_bottom  hide">
			<div
				class="site_main_wrapper reset_padding reset_background clearFix">
				<div class="all_categories">
					<a href="/help-info/site-map/"><span>Shop By Category</span></a>
				</div>
				<div class="top_links">
					<ul class="top_links_list">
						<li class="gift_sets"><a href="/gift-sets/">Gift Sets</a></li>
						<li><a href="/deals/latest/">Daily Deals</a></li>
						<li><a href="/weekly-best-sellers/">Weekly Best Sellers</a></li>
						<li><a href="/offers/">Special offers</a></li>
						<li class="fs"><a href="/deals/" class="fs_new"> <span
								class="fs_black"></span>
						</a></li>
					</ul>
				</div>
				<div class="lang_toggle home">
					<span class="lang_toggle_text"> <a
						href="/?alang=ar&redirect=ae&ship=BD" class="lang_toggle_ar"><span
							class="lang_toggle_flag"><img
								src="/bitrix/templates/awok-lang/images/uae_flag.png" alt="" /></span>العربية</a>
					</span>
				</div>
				<div class="top_links_right">
					<a href="">marayaglobal.com</a>
				</div>
			</div>
		</div>
		<!--Header New Links End-->

		<div class="track_order_popup">
			<div class="inner_track_ord">
				<form action="/track-order/" method="post">
					<label>Track Your Order</label> <input type="text"
						name="track_order" placeholder="Order #" /> <input type="submit"
						value="Track" />
				</form>
			</div>
		</div>
	</div>

	<!--Subscribe Newsletter Popup Start-->
	<div class="subscribe_popup">
		<div class="subscribe_popup_head">
			<div class="close-button"></div>
			<b>Receive our best offers directly to your inbox</b>
			<p>Never Miss! any more Best Deals by subscribing in to our list.
				We will ensure 100% delivery to your inbox right when deals enabled
				- Sign up now !</p>
		</div>
		<form class="clearFix" method="post">
			<div class="subscribe_popup_box">
				<input type="text" class="newsletter_popup_email"
					placeholder="Enter your email address" name="n_email"
					autocomplete="off"> <input type="submit"
					class="newsletter_popup_submit" value="SUBSCRIBE">
			</div>
		</form>
	</div>
	<!--Subscribe Newsletter Popup End-->


	<div class="main">
		<div class="page_breadcrums_box">
			<ul class="page_breadcrums">
				<li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
					<a itemprop="url" href="/"><span itemprop="title">Home</span></a>
				</li>
				<li class="">&raquo;</li>
				<li class="active" itemprop="title"><span itemprop="title"></span>
				</li>
			</ul>
		</div>
		<div class="daily_deals_bg hot_deals_box">
			<div
				class="site_main_wrapper reset_background reset_padding clearFix">
				<div class="dd-tabs-right">
					<ul id="dd-top-tabs">

						<li class="event_title active-tab"><a href="/"></a></li>
						<li class=""><a class="tooltip" title="New"
							href="/clearance/">Clearance</a></li>
						<li class=""><a href="/electronics/">Electronics</a></li>
						<li class=""><a href="/mobility/">Mobility</a></li>
						<li class=""><a href="/fashion/">Fashion</a></li>
						<li class=""><a href="/best-sellers/">Best Sellers</a></li>
						<li class=""><a href="/deals/latest/">Latest Deals</a></li>
						<li class=""><a href="/gift-sets/">Gift Sets</a></li>
						<li class=""><a href="/toys/">Baby Care & Toys</a></li>
						<li class=""><a href="/car-care/">Car Care</a></li>
						<li class=""><a href="/offers/">Special offers</a></li>
						<li class=""><a href="/renewed-gadgets/">Renewed Gadgets</a></li>
					</ul>
				</div>
			</div>
		</div>


	</div>

	<!-- ICON NEEDS FONT AWESOME FOR CHEVRON UP ICON -->
	<script type="text/javascript"
		src="../js/service-request/product-service/nav-bar.js"></script>
	<script>
	
		$('.logout').click(function() {
			$.ajax({
				type : "POST",
				url : 'webapi/user/logout',
				cache : false,
				success : function(data) {
					 location.reload();	
				}
			});
			
		});
	</script>

</body>
</html>
