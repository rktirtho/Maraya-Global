<%-- 
    Document   : product-view
    Created on : May 9, 2019, 1:05:13 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>

        <link rel="stylesheet" href="css/vendor/etalage.css">
        <link rel="stylesheet" href="css/vendor/bootstrap_1.css">
        <link rel="stylesheet" type="text/css" href="css/index.css"> 
        <style>
            .gallery-wrap .img-big-wrap img {
                height: 450px;
                width: auto;
                display: inline-block;
                cursor: zoom-in;
            }


            .gallery-wrap .img-small-wrap .item-gallery {
                width: 60px;
                height: 60px;
                border: 1px solid #ddd;
                margin: 7px 2px;
                display: inline-block;
                overflow: hidden;
            }

            .gallery-wrap .img-small-wrap {
                text-align: center;
            }
            .gallery-wrap .img-small-wrap img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
                border-radius: 4px;
                cursor: zoom-in;
            }
        </style>


    </head>
    <body>
        <%--<%@include file="static-page/nav-bar.jsp" %>--%>
        <div class="container-fluid">
            <div class="row">
                <aside class="col-lg-3 col-md-12 border-right">
                    <article class="gallery-wrap"> 
                        <div class="grid images_3_of_2">
                            <ul id="etalage">
                                <li>
                                    <a href="optionallink.html">
                                        <img class="etalage_thumb_image img-responsive" src="images/s1.jpg" alt="Image" />
                                        <img class="etalage_source_image img-responsive" src="images/s1.jpg" title="" alt="Image" />
                                    </a>
                                </li>
                                <li>
                                    <img class="etalage_thumb_image img-responsive" src="images/s2.jpg" alt="Image" />
                                    <img class="etalage_source_image img-responsive" src="images/s2.jpg" class="" alt="Image" />
                                </li>
                                <li>
                                    <img class="etalage_thumb_image img-responsive" src="images/s3.jpg" alt="Image" />
                                    <img class="etalage_source_image img-responsive" src="images/s3.jpg" alt="Image" />
                                </li>
                                <li>
                                    <img class="etalage_thumb_image img-responsive" src="images/s4.jpg" alt="Image" />
                                    <img class="etalage_source_image img-responsive" src="images/s4.jpg" alt="Image" />
                                </li>
                            </ul>
                            <div class="clearfix"></div>		
                        </div> 
                    </article> <!-- gallery-wrap .end// -->
                </aside>
                <aside class="col-lg-7 col-md-12">
                    <article class="card-body p-5">
                        <h3 class="title mb-3">Original Version of Some product name</h3>

                        <p class="price-detail-wrap"> 
                            <span class="price h3 text-warning"> 
                                <span class="currency">US $</span><span class="num">1299</span>
                            </span> 
                            <span>/per kg</span> 
                        </p> <!-- price-detail-wrap .// -->
                        <dl class="item-property">
                            <dt>Description</dt>
                            <dd><p>Here goes description consectetur adipisicing elit, sed do eiusmod
                                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                    quis nostrud exercitation ullamco </p></dd>
                        </dl>
                        <dl class="param param-feature">
                            <dt>Model#</dt>
                            <dd>12345611</dd>
                        </dl>  <!-- item-property-hor .// -->
                        <dl class="param param-feature">
                            <dt>Color</dt>
                            <dd>Black and white</dd>
                        </dl>  <!-- item-property-hor .// -->
                        <dl class="param param-feature">
                            <dt>Delivery</dt>
                            <dd>Russia, USA, and Europe</dd>
                        </dl>  <!-- item-property-hor .// -->

                        <hr>
                        <div class="row">
                            <div class="col-sm-5">
                                <dl class="param param-inline">
                                    <dt>Quantity: </dt>
                                    <dd>
                                        <select class="form-control form-control-sm" style="width:70px;">
                                            <option> 1 </option>
                                            <option> 2 </option>
                                            <option> 3 </option>
                                        </select>
                                    </dd>
                                </dl>  <!-- item-property .// -->
                            </div> <!-- col.// -->
                            <div class="col-sm-7">
                                <dl class="param param-inline">
                                    <dt>Size: </dt>
                                    <dd>
                                        <label class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                            <span class="form-check-label">SM</span>
                                        </label>
                                        <label class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                            <span class="form-check-label">MD</span>
                                        </label>
                                        <label class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                            <span class="form-check-label">XXL</span>
                                        </label>
                                    </dd>
                                </dl>  <!-- item-property .// -->
                            </div> <!-- col.// -->
                        </div> <!-- row.// -->
                        <hr>
                        <a href="#" class="btn btn-lg btn-primary text-uppercase"> Buy now </a>
                        <a href="#" class="btn btn-lg btn-outline-primary text-uppercase"> <i class="fas fa-shopping-cart"></i> Add to cart </a>
                    </article> <!-- card-body.// -->
                </aside> 
                <aside class="col-lg-2 col-md-12">
                    <div class="col-12">
                        Seller Info
                    </div>
                </aside>



            </div>
        </div>

        <script src="js/vendor/jquery-3.3.1.js"></script>
        <script src="js/vendor/jquery.etalage.min.js"></script>

        <script>
            jQuery(document).ready(function ($) {

                $('#etalage').etalage({
                    thumb_image_width: 333,
                    thumb_image_height: 400,
                    source_image_width: 900,
                    source_image_height: 1200,
                    show_hint: true,
                });

            });
        </script>
    </body>
</html>