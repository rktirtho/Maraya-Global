<%-- 
    Document   : Home
    Created on : May 9, 2019, 2:37:21 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../../css/vendor/bootstrap_1.css">
        <link rel="stylesheet" type="text/css" href="../../css/vendor/fontawesome-all.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" 
              integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <!--<link rel="stylesheet" type="text/css" href="../../css/header/6.css">-->
        <link rel="stylesheet" type="text/css" href="../../css/header/1.css">
        <link rel="stylesheet" type="text/css" href="../../css/header/2.css">
        <link rel="stylesheet" type="text/css" href="../../css/header/3.css">
        <link rel="stylesheet" type="text/css" href="../../css/header/4.css">
        <link rel="stylesheet" type="text/css" href="../../css/header/5.css">
        <link rel="stylesheet" type="text/css" href="../../css/header/7.css">
        <link rel="stylesheet" type="text/css" href="../../css/header/9.css">
        <link rel="stylesheet" type="text/css" href="../../css/header/8.css">
        <!--<link rel="stylesheet" type="text/css" href="../../css/header/10.css">-->
        <!--<link rel="stylesheet" type="text/css" href="../../css/header/11.css">-->
        <!--<link rel="stylesheet" type="text/css" href="../../css/header/12.css">-->
        <link rel="stylesheet" type="text/css" href="../../css/header/13.css">
        <link rel="stylesheet" type="text/css" href="../../css/header/14.css">
        <style>

            ul li{
                font-size: 1.2rem;
            }
            ul li a{
                display: block;
                padding: 1rem 3rem
            }
            div{
                font-size: 1rem
            }
        </style>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="../../static-page/nav-bar.jsp" %>
        <div class="container">
            <nav aria-label="breadcrumb" class="py-5">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Library</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Data</li>
                </ol>
            </nav>
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab"
                       href="#account" role="tab" aria-controls="account" aria-selected="true"><i class="far fa-user"> </i> Account</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" 
                       href="#orders" role="tab" aria-controls="orders" aria-selected="false"><i class="fas fa-truck-moving"></i> Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="contact-tab" data-toggle="tab" 
                       href="#cart" role="tab" aria-controls="cart" aria-selected="false"><i class="fas fa-cart-plus"></i> Cart</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" id="contact-tab" data-toggle="tab" 
                       href="#coupons" role="tab" aria-controls="coupons" aria-selected="false"><i class="far fa-credit-card"></i> Coupons</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="contact-tab" data-toggle="tab" 
                       href="#offers" role="tab" aria-controls="offers" aria-selected="false"><i class="fas fa-bullhorn"></i> Offers</a>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="home-tab">My Account</div>
                <div class="tab-pane fade" id="orders" role="tabpanel" aria-labelledby="profile-tab">My Ordesr</div>
                <div class="tab-pane fade" id="cart" role="tabpanel" aria-labelledby="contact-tab">My Cart</div>
                <div class="tab-pane fade" id="coupons" role="tabpanel" aria-labelledby="contact-tab">Coupons</div>
                <div class="tab-pane fade" id="offers" role="tabpanel" aria-labelledby="contact-tab">offers</div>
            </div>
        </div>


        <script src="../../js/vendor/jquery-3.3.1.js"></script>
        <script src="../../js/vendor/bootstrap.bundle.js"></script>
        <script src="../../js/vendor/bootstrap.js"></script>
    </body>
</html>
