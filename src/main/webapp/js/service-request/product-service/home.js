/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(function () {

    var offset = 0;
    var limit = 36;
    $.get('http://localhost:8084/MarayaGlobal/webapi/myresource/?start='
            + offset + '&end=' + limit + '&keword=Spring Roll', showData, 'json');





    $(window).scroll(function () {

console.log(Math.ceil(($('.main-container').height())));
console.log(Math.ceil(($(window).scrollTop())));
        if (Math.ceil($('.main-container').height()) == Math.ceil($(window).scrollTop())+400){
            
            $.get('http://localhost:8084/MarayaGlobal/webapi/myresource/?start='
                    + offset + '&end=' + limit, function (data) {
                        data.forEach(function (item) {
//                console.log(item);
                            $(".all-item").append(
                                    "<div class='col-md-3 py-4'>" + "<div class='card'>"
                                    + "<img class='card-image' src='http://lorempixel.com/400/200/sports/" + Math.ceil(Math.random() * 10) + "'/>"
                                    + " <div class='card-body'>"
                                    + "<h4 class='card-title'>" +
                                    item.title
                                    + "</h4>"
                                    + "<br><span>" +
                                    item.id
                                    + "</span>"
                                    + "</div>"
                                    + "</div>"
                                    + "</div>");
                        });
                    }, 'json');
        }

    });


    function showData(data) {
        data.forEach(function (item) {
            $(".all-item").append(
                    "<div class='col-md-3 py-4'>" + "<div class='card'>"
                    + "<img class='card-image' src='http://lorempixel.com/400/200/sports/" + Math.ceil(Math.random() * 10) + "'/>"
                    + " <div class='card-body'>"
                    + "<h4 class='card-title'>" +
                    item.title
                    + "</h4>"
                    +"<div class='d-flex justify-content-between align-items-center'><div class='price add-card'><strong>TK"+(item.unitPrice - (item.unitPrice*item.discount)/100)+"</strong><br><del>Tk "+item.unitPrice+"</del></div>"             
                    +"<div class='add-card'><button type='button' class='btn btn-danger btn-add-cart rounded-0 '>add to cart</button></div>"
                    + "</div></div>"
                    + "</div>"
                    + "</div>");
        });
        offset = offset + limit;
    }


});









