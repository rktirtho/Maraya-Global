/****** HOMEPAGE SCRIPTS ******/
$(function() {
    
    //Check to see if the window is top if not then display button
    $(window).scroll(function(){
        if ($(this).scrollTop() > 1000) {
            $('.go_top').fadeIn();
        } else {
            $('.go_top').fadeOut();
        }
    });

    /*$(window).scroll(function(){
        if ($(this).scrollTop() > 1000) {
            $('.arrow-up').fadeIn();
        } else {
            $('.arrow-up').fadeOut();
        }
    });*/

    //sitemap accordian js
    $('.site_map .accord_trigger').on('click',function(){
        $('.accordion_list .expanded').not($(this).parent()).toggleClass('collapsed').toggleClass('expanded').find('.accord_trigger_box').slideToggle(300);
        $(this).parent().toggleClass('expanded').toggleClass('collapsed').find('.accord_trigger_box').slideToggle(300);
    });
});
/****** HOMEPAGE END ******/

/****** FUNCTIONS ******/

//gototop link function
$(document).on('click','.go_top',function(){
    // $('html, body').animate({scrollTop : 0},800);
    $(window).scrollTop(0);
    return false;
});

/*$(document).on('click','.arrow-up',function(){
    $('html, body').animate({scrollTop : 0},800);
    return false;
});*/

// disable button on ajax call
$(document).on('click','.ajax_reload',function(){
    disable_button($(this));
});
function disable_button(element){
    var button = element;
    var parent = element.parent();
    parent.addClass('btn_disable');
    $('.btn_disable').attr('data-content', loading_message );
}

// Open the global menu
function openMenu(){
    /*bilal changes*/
    //$('html,body').css({'overflow-y':'hidden','height':'100%'});
    //$('.aside_box_left').animate({'left': '0px'});
    //$('.mobile-menu-close').show().animate({'opacity':'1','z-index':'999'});
    /*bilal changes*/

    $('html').addClass('slide_overlay');
    if($('html').hasClass('ln-ar'))
        // For Arabic
        $('.site_wrapper').toggleClass('push-box-toleft');
    else 
        // For English
        $('.site_wrapper').toggleClass('push-box-toright');
}

// close the global menu
function closeMenu(){
    /*bilal changes*/
    //$('html,body').css({'overflow-y':'auto','height':'initial'});
    //$('.aside_box_left').animate({'left': '-260px'},100);
    //$('.mobile-menu-close').css({'opacity':'0'}).hide();
    //$('.aside_box .has-child.expanded').removeClass('expanded').find('.push-level').hide();
    //$('.aside_box_left').scrollTop(0);
    /*bilal changes*/

    $('.site_wrapper').removeClass('push-box-toright');
    $('.site_wrapper').removeClass('push-box-toleft');
    $('.site_wrapper').removeClass('push-site-toright');
    $('.site_wrapper').removeClass('push-site-toleft');
    $('.us-menu .has-child > a.expanded').toggleClass('expanded').toggleClass('collapsed').parent().find('.push-level').slideToggle(150);
    $('html').removeClass('slide_overlay');

    if( typeof triggerVideoAlert == 'function' ){
        triggerVideoAlert();
    }
}

// forward to search page
function doSeach(){
    var value = $('#search_text').val();
    if( value )
        window.location = '/search/?q='+value;
}

// Keep item in viewport
function keepViewport( element, scrolldiv, direction ){
    var parent      = $(scrolldiv);
    var offsets     = element.offset();
    var winwidth    = $(window).outerWidth();
    var bywidth     = element.outerWidth();

    if( typeof offsets !== 'undefined' ){
        if( direction == 'left' ){
            var diff        = winwidth-(offsets.left);
            if( diff <= bywidth ){
                parent.animate({scrollLeft: parent.scrollLeft()+bywidth});
            }
        }

        if( direction == 'right' ){
            var diff        = winwidth-(parent.outerWidth()-offsets.left);
            if( diff <= 0 ){
                parent.animate({scrollLeft: parent.scrollLeft()-bywidth});
            }
        }
    }
}

/****** HOOKS (RUNS ON DOM READY) ******/
jQuery(document).ready(function($){

    var parser = new UAParser();
    var parsed = parser.getResult();

    if(parsed.browser.name == 'Mobile Safari'){
        $('header .bottom_toast').remove();        
    }

    if(parsed.os.name == 'iOS'){
        $('.js_applestore').show();
        var href = $('.js_applestore a').attr( 'href' );
        $('.install_popup .left .btn a').attr( 'href' , href );
    }
    else if(parsed.os.name == 'Android'){
        $('.js_androidstore').show();
        var href = $('.js_androidstore a').attr( 'href' );
        $('.install_popup .left .btn a').attr( 'href' , href );
    }
    else {
        $('.js_bothstores').show();
    }

    // attach fast click
    // FastClick.attach(document.body);

    // gesture controls for menu toggle
    // $(window).swipe({
    //     swipeStatus: function(event, phase, direction, distance, duration, fingers) {
    //         /* opening of menu */
    //         if( direction == 'right' && distance <= 260 ){
    //             if( phase == 'move' ){
    //                 var distance= (260-distance)*-1;
    //                 var opacity = (distance/260)*-1;
    //                 var posleft = distance + 'px';

    //                 $('.aside_box_left').css({'left': posleft});
    //                 $('.mobile-menu-close').show().css({'opacity':opacity, 'z-index':'999'});
    //             }

    //             if( phase == 'end' ){
    //                 openMenu();
    //             }

    //             if( phase == 'cancel' ){
    //                 closeMenu();
    //             }
    //         }

    //         /* closing of menu */
    //         if( direction == 'left' || ( event.target == 'a.close_menu' && event.type == 'touchmove' ) ){
    //             closeMenu();
    //         }
    //     },
    //     excludedElements: '.converge,.home_slider_box',
    //     threshold       : 50,
    //     allowPageScroll : 'vertical'
    // });

    // toggle search box on all pages (except homepage)
    $('#search_box_show').on('click ',function(){
        $('.search_box').show();
        $('html').addClass('search_overlay');
        $('.site_wrapper').addClass('search_overlay_show');
        $('.search_input').focus();
    });
    $('#search_box_hide').on('click ',function(){
        $('.search_box').hide();
        $('html').removeClass('search_overlay');
        $('.site_wrapper').removeClass('search_overlay_show');
    });

    // search submit triggers the redirect
    $('#header_search').submit(function(e){
        e.preventDefault();
        doSeach();
    });

    // menu button, triggers the openmenu function
    $('#show-menu').on('click ',function(event) {
        event.preventDefault();
        
        if( $('#notify-video').hasClass('visible') ){
            $('#notify-video').removeClass('visible').addClass('hidden').toggleClass('slide');
        }

        openMenu();
    });

    // close overy, triggers the closemenu function
    $('#hide-menu').on('click ',function(event) {
        event.preventDefault();
        closeMenu();
    });
     $('.close_menu').on('click ',function(event) {
        event.preventDefault();
        closeMenu();
    });

    // accordion to expand/collapse child menus inside global menu
    $('.mobile-menu .has-child > a').click(function() {
        $('.mobile-menu .has-child.expanded').not($(this).parent()).toggleClass('expanded').toggleClass('collapsed').find('.push-level').slideToggle(150);
        $(this).parent().toggleClass('expanded').toggleClass('collapsed').find('.push-level').slideToggle(150);
    });

    String.prototype.toArabicDigits= function(){
        var id= ['٠','۱','۲','٣','٤','٥','٦','۷','۸','۹'];
            return this.replace(/[0-9]/g, function(w){
            return id[+w]
        });
    }

    // SUBMIT LANGUAGE PAGE
    $('#language_select').on('change',function(){
        window.location.href = $( this ).val();
        return;
    });

    //dropdown menu toggle---------------
    $('.navdropdown_link').on('click', function(){
        $('.navdropdown_list').slideToggle();
        $('.sectiondropdown_list').hide();
    });    
});


$(window).load(function(){
    //stick footer to bottom if the page height is less than window height
    if($("body").height()<$(window).height()){
        $('footer').css({'margin-top':($(window).height()-$("body").height())})
    }
});


/*//set showInstallPopUp cookie
function setAppInstallAdvCookie(name, value, hours)
{
    if (hours)
    {
        var date = new Date();
        date.setTime(date.getTime()+(hours*60*60*1000));
        var expires = "; expires="+date.toGMTString();
    }
    else
    {
        var expires = "";
    }
    document.cookie = name+"="+value+expires+"; path=/";
}
*/
if( typeof is_adv_popup_visible != 'undefined' ) setAppInstallAdvCookie( "showInstallPopUp", "yes", 12 );

function deleteAppInstallAdvCookie(name) {
    document.cookie = name + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
    setAppInstallAdvCookie( "showInstallPopUp" , "yes" , 72 );
}

//set showInstallPopUp cookie
function setAppInstallAdvCookie(name, value, hours)
{
    if (hours)
    {
        var date = new Date();
        date.setTime(date.getTime()+(hours*60*60*1000));
        var expires = "; expires="+date.toGMTString();
    }
    else
    {
        var expires = "";
    }
    document.cookie = name+"="+value+expires+"; path=/";
}

function deleteAppInstallAdvCookie(name) {
    document.cookie = name + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
    setAppInstallAdvCookie( "delayShowAdvInstallPopUp" , "yes" , 72 );
}

function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+ d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}
function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i <ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

function deleteCookie(cname) {
    document.cookie = name + '=;expires=Thu, 01 Jan 1970 00:00:01 GMT;';
}

function showAppAdvPopup(){
    setTimeout(function(){ $('.install_popup').slideDown() }, 1000);
}

/*
 To remove domain name    */
window.removeDomainName = function ( url ) {
    if( url == '' ) return '';
    var regex = url.match( /\.com[^$]+/g );
    return regex[0].replace( '.com' , '' );
}

function getCountryCode(identifier){     
    var attr            = $(identifier).data('val');
    var parts           = location.hostname.split('.');
    var subdomain       = parts.shift();
    var sndleveldomain  = parts.slice(-2).join('.');

    ksa_sub = 'sa';
    uae_sub = 'ae';

    if( attr == 'SA' ){
        var link = '//' + ksa_sub + '.' + sndleveldomain + redirectURL;
    }
    else if( attr == 'AE' ){
        var link = '//' + uae_sub + '.' + sndleveldomain + redirectURL;
    }
    window.location = link;
}

$(function(){
    $('.js_country_select').click( function(){
        $('.js_country_pop').show();
        $('.country_list ul').scrollTop( 0 );
        getCurrent();
        closeMenu();
        $('body').addClass('modal-open');
        // $('#txtShip').focus();
    });

    $('.js_country_pop .close_icon').click( function(){
        $('.js_country_pop').hide();
        $('body').removeClass('modal-open');
    });

    $('.js_lang_select').click( function(){
        $('.js_lang_pop').show();
        closeMenu();
        $('body').addClass('modal-open');
    });
    
    $('.js_lang_pop .close_icon').click( function(){
        $('.js_lang_pop').hide();
        $('body').removeClass('modal-open');
    });

    /* Do not remove */
    /*$("#selected_currency").selectize();
    var selectCurrency      = $("#selected_currency").selectize();
    var selectizeCurrency   = selectCurrency[0].selectize;

    var currentCountry = current_country_short_name;
    if(currentCountry == 'AE') {
        selectizeCurrency.disable();
        selectizeCurrency.setValue('AED');       
        $('#selected_currency').addClass('disabled');
    }else if(currentCountry == 'SA') {
        selectizeCurrency.disable();
        selectizeCurrency.setValue('SAR');
        $('#selected_currency').addClass('disabled');
    }

    $("input[name='ship']").on('click',function(){
        var selected_country = this.value;

        if( $.inArray( selected_country , [ 'AE' , 'SA' ]) !== -1 ){
            if( !$('#selected_currency').hasClass('disabled') ){
                $('#selected_currency').addClass('disabled');
            }
            if( selected_country == 'AE' ){
                selectizeCurrency.disable();
                selectizeCurrency.setValue('AED');        
            }else if( selected_country == 'SA' ) {
                selectizeCurrency.disable();
                selectizeCurrency.setValue('SAR');
            }
        }
        else{   
            if( $('#selected_currency').hasClass('disabled') ){
                $('#selected_currency,.selectize-control,.selectize-dropdown').removeClass('disabled');
            }

            var MappedCurrency = CountryMappedCurrency[selected_country];
            selectizeCurrency.enable();
            selectizeCurrency.refreshOptions();
            if (
                CountryMappedCurrency.hasOwnProperty(selected_country) &&
                $.inArray( MappedCurrency , AllCurrencies ) !== -1
            )
            {
                selectizeCurrency.setValue(MappedCurrency);
            }
            else{
                selectizeCurrency.setValue('USD');
            }
        }
    });*/

    $("input[name='ship']").on('click',function(){
        var selected_country = this.value;
        if( $.inArray( selected_country , [ 'AE' , 'SA' ]) !== -1 ){
            if( !$('#selected_currency').hasClass('disabled') ){
                $('#selected_currency').addClass('disabled');
            }
            if( selected_country == 'AE' ){
                $('#selected_currency').val('AED').trigger('change');
            }else if( selected_country == 'SA' ) {
                $('#selected_currency').val('SAR').trigger('change');
            }
        }
        else{   
            if( $('#selected_currency').hasClass('disabled') ){
                $('#selected_currency').removeClass('disabled');
            }

            var MappedCurrency = CountryMappedCurrency[selected_country];            

            /*if( $.inArray( getCookie('awok_LOGIN') , ['administratoralifca' , 'shahwani' , 'janani.awok' , 'anandsa' , 'mohab'] ) >= 0 ){
                if (
                    $("#selected_currency option[value='"+MappedCurrency+"']").length > 0 &&
                    CountryMappedCurrency.hasOwnProperty(selected_country)                    
                )
                {
                    $('#selected_currency').val(MappedCurrency).trigger('change');
                }
                else{
                    $('#selected_currency').val('USD').trigger('change');
                }
            }
            else{
                if (
                    CountryMappedCurrency.hasOwnProperty(selected_country) &&
                    $.inArray( MappedCurrency , AllCurrencies ) !== -1
                )
                {
                    $('#selected_currency').val(MappedCurrency).trigger('change');
                }
                else{
                    $('#selected_currency').val('USD').trigger('change');
                }
            }*/

            if (
                $("#selected_currency option[value='"+MappedCurrency+"']").length > 0 &&
                CountryMappedCurrency.hasOwnProperty(selected_country)                    
            )
            {
                $('#selected_currency').val(MappedCurrency).trigger('change');
            }
            else{
                $('#selected_currency').val('USD').trigger('change');
            }
            
        }

        if( selected_country == 'SA' ){
            // $( '.currency_list .js-dropdown-text' ).removeClass( 'disabled' );
            disableCurrenciesKSA('Y');
        }else{
            disableCurrenciesKSA();
        }

    });

    if( typeof siteID != 'undefined' && siteID == 's4' ){
        disableCurrenciesKSA('Y');
    }

    function disableCurrenciesKSA( manualChange ){
        if( typeof manualChange != 'undefined' && manualChange != false ){
            $('#selected_currency option').hide();
            // $('#selected_currency option[value="USD"]').show();
            $('#selected_currency option[value="SAR"]').show();
        }
        else{
            $('#selected_currency option').show();
        }
    }


    $('#txtShip').on('keyup',function(){
        var filter          = $(this).val().trim();
        var totalCountry    = $('.js_country_pop .country_list ul li').length;
        if( filter != '' ){            
            $('.js_country_pop .country_list ul li').each(function (i, el){
                var val = $(el).find("span:last-child").text();
                
                if ( val.toLowerCase().indexOf(filter.toLowerCase()) > -1 ) {           
                    $(el).css("display","block");
                }else{
                    $(el).css("display","none");
                }
            });

            if( $('.js_country_pop .country_list ul li:hidden').length >= totalCountry ){
                $( ".country_selectpopup .inner" ).animate({
                    height: "320px",
                }, 350 );
                $( ".country_list ul" ).animate({
                    height: "0"
                }, 350 );
                $('.no-country').show();  
            }else{
                $( ".country_list ul" ).animate({
                    height: "118px",
                }, 350 );
                $( ".country_selectpopup .inner" ).animate({
                    height: "400px"
                }, 350 );
                $('.no-country').hide();                
            };
        }
        else{
            $('.js_country_pop .country_list ul li').css('display','block');
        }
    });

    function getCurrent(){
        var dom = $('.country_list ul li input.active');
        var position = dom.parent().position().top;
        var height = dom.innerHeight();
        $('.country_list ul').scrollTop( position-140+height/2 );
    }

    // Converts currency
    window.convert_currency = function ( amount ) {
        if( !amount ) return 0;
        
        if( $.inArray( currency_cart,CeilPriceCurrency ) == -1 ){
            return Math.round(amount * convert_currency_factor * 100) / 100;
        }else{
            return Math.ceil( amount * convert_currency_factor );
        }
    }

    // Rounds or ceils based on currency
    window.fix_currency = function ( amount ) {
        if( !amount ) return 0;

        if( $.inArray( currency_cart,CeilPriceCurrency ) == -1 ){
            return Math.round(amount * 100) / 100;
        }else{
            return Math.ceil( amount );
        }
    }

    window.PriceSpacingFillet = function ( x ) {
        x = parseFloat(x).toFixed(2).replace(".00", "");
        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }

    // Prefixes/Suffixes denomination based on Symbol
    window.show_currency = function ( amount, selected_currency, amtWrap , wholeWrap, exclude ) {
        var prefix = '';
        var suffix = '';
        var returnStr = '';
        if (!amount) return 0;

        if( typeof exclude == 'undefined' ){
            exclude = false;
        }

        var current_currency       = currency_cart;
        /* For display purpose starts */   
        var allow_currency_change  = ( typeof allow_display_currency != 'undefined' && allow_display_currency != false ) && !exclude ? true : false;
        
        if( ( ( typeof currency_display_cart != 'undefined' ) && allow_currency_change && ( currency_cart != currency_display_cart )  && currency_display_cart != false ) ){

            if( typeof convert_display_base_currency_factor != 'undefined' && convert_display_base_currency_factor > 1 )
                amount          = Math.ceil(amount * currency_display_factor );
            else
                amount          = Math.round(amount * currency_display_factor * 100) / 100;
            
            currency        = current_currency = currency_display_cart;
            currency_symbol = ( typeof SymbolCurrency[ currency ] != 'undefined' ) ? SymbolCurrency[ currency ][ 'symbol' ] : currency;
        }

        if( disp_vat_percent > 0 ){
            amount  = amount + Math.round(amount * disp_vat_percent ) / 100;            
        }
        amount = PriceSpacingFillet( amount );

        if (!amtWrap && !wholeWrap) {
            if (current_currency != currency_symbol) {
                prefix = currency_symbol;
            } else {
                suffix = ' ' + currency;
            }
            return prefix + amount + suffix;
        } else {
            var currPrefix = (wholeWrap['P']) ? wholeWrap['P'] : '';
            var currSuffix = (wholeWrap['S']) ? wholeWrap['S'] : '';
            var amtPrefix = (amtWrap['P']) ? amtWrap['P'] : '';
            var amtSuffix = (amtWrap['S']) ? amtWrap['S'] : '';
            if (amtWrap && wholeWrap) {
                if (current_currency != currency_symbol) {
                    returnStr = currPrefix + currency_symbol + amtPrefix + amount + amtSuffix + currSuffix;
                } else {
                    returnStr = currPrefix + amtPrefix + amount + amtSuffix + ' ' + currency + currSuffix;
                }
            } else if (!amtWrap || !wholeWrap) {
                var amtStr = (!amtWrap) ? amount : amtPrefix + amount + amtSuffix;
                if (current_currency != currency_symbol) {
                    var currStr = (!wholeWrap) ? currency_symbol : currPrefix + currency_symbol + currSuffix;
                    returnStr = currStr + amtStr;
                } else {
                    var currStr = (!wholeWrap) ? currency : currPrefix + currency + currSuffix;
                    returnStr = amtStr + ' ' + currStr;
                }
            }
            return returnStr;
        }
    }

    /* Ship popup. Do not remove commented code */
    //window.FirstGVisit = getCookie('F_VISIT') != '' ? true : false;

    function getParameterByName( name )
    {
        name = name.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
        var regexS = "[\\?&]"+name+"=([^&#]*)";
        var regex = new RegExp( regexS );
        var results = regex.exec( window.location.href );
        if( results == null )
            return "";
        else
            return decodeURIComponent(results[1].replace(/\+/g, " "));
    }

    /* Ship popup. Do not remove commented code */
    /*if( !FirstGVisit && ( getParameterByName( 'ship' ) != '' || getParameterByName( 'currency' ) != '' ) ){  
        FirstGVisit = getCookie('F_VISIT') != '' ? true : false;   
        setCookie( "F_VISIT", 'Y', 365 );
    }*/

    /* Ship popup. Do not remove commented code */
    /*if( ( typeof siteID != 'undefined' && siteID == 's5' ) && !FirstGVisit ) {
        window.preventNewsLetterPop = true;
        
        $('.js_country_pop .close_icon').remove();
        $('.js_country_select').click();
        $(document).on('click', '.js_country_pop .flg-save-btn', function(e){

            var selected_popup_currency = $('select[name=currency]').val();
            var selected_popup_country  = $('input[name=ship]').val();

           if( $.inArray( selected_popup_currency , [ 'AED' , 'SAR' ]) == -1
                && $.inArray( selected_popup_country , [ 'AE' , 'SA' ]) == -1
             ){
                setCookie( "F_VISIT", 'Y', 365 );
            }
        });
    }*/

    function initMobAdvToast(){
        // App Install Browser Adv
        $('.cross_btn a').click(function(){
            $('.install_popup').hide();    
        });

        if( getCookie('delayShowAdvInstallPopUp') &&  getCookie('advPopupCount') <= 2 ){
            return;
        } else if( getCookie('advPopupCount') >= 6 ){
            setCookie( 'delayShowAdvInstallPopUp', 'yes', 360 );
        }

        var pathName = window.location.pathname;

        if( !getCookie('delayShowAdvInstallPopUp') && getCookie('advPopupCount') && ( pathName == '/' || pathName == '/deals/' ) ){
            var cookieVal =   Math.abs( getCookie('advPopupCount') )+1;
            setCookie('advPopupCount', cookieVal , 1000 );
            showAppAdvPopup()
        } else if( !getCookie('delayShowAdvInstallPopUp') && !getCookie('advPopupCount') && ( pathName == '/' || pathName == '/deals/' ) ) {
            setCookie('advPopupCount', 1, 100 );
            showAppAdvPopup()
        }
    }
    
    if( typeof preventNewsLetterPop == 'undefined' )
        initMobAdvToast();

    // ===== Scroll to Top ==== 
    $(window).scroll(function() {
        if ($(this).scrollTop() >= 50) {        // If page is scrolled more than 50px
            $('#return-to-top').fadeIn(200);    // Fade in the arrow
        } else {
            $('#return-to-top').fadeOut(200);   // Else fade out the arrow
        }
    });
});

$(window).load(function(){
    $("select.goog-te-combo").before('<img src="http://i02.i.aliimg.com/wimg/buyer/single/google-translate-logo.png" class="google-logo"/>');
    $('.goog-te-combo').on('change',function(e){
        $('.js_lang_pop').hide();
        $('body').removeClass('modal-open');
    });
});