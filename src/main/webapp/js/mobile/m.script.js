/**
 * 
 */
$(this).ready(function () {
    var offset = 0;
    var limit = 20;
    $.get('../webapi/myresource/?start=' + offset + '&end=' + limit
            + '&keword=Spring Roll', showData, 'json');


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






