<%-- 
    Document   : product-registration
    Created on : May 9, 2019, 12:29:34 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/vendor/bootstrap_1.css">
              <title>Maraya Global | Product Registration </title>
    </head>
    <body>
        <div class="container ">
            <div class="col-lg-8 col-md-10 mx-auto">
                <form class="border border-light p-5">

                    <p class="h4 mb-4 text-center"></p>

                    <label for="textInput">Title</label>
                    <input type="text" id="textInput" class="form-control mb-4" placeholder="Product Title">

                    <label for="textInput">Brand Name</label>
                    <input type="text" id="textInput" class="form-control mb-4" placeholder="Apple/Sony/Danish/Coca-Cola">

                    <label for="select">Category</label>
                    <select class="browser-default custom-select mb-4" id="select">
                        <option value="" disabled="" selected="">Choose your option</option>
                        <option value="1">Option 1</option>
                        <option value="2">Option 2</option>
                        <option value="3">Option 3</option>
                    </select>

                    <label for="select">Sub Category</label>
                    <select class="browser-default custom-select mb-4" id="select">
                        <option value="" disabled="" selected="">Choose your option</option>
                        <option value="1">Option 1</option>
                        <option value="2">Option 2</option>
                        <option value="3">Option 3</option>
                    </select>

                    <label for="textInput">Price Per Unit</label>
                    <input type="text" id="textInput" class="form-control mb-4" placeholder="Text input" >

                    <label for="textInput">Discount %</label>
                    <input type="text" id="textInput" class="form-control mb-4" placeholder="Text input">

                    <label for="textInput">Size of Unit</label>
                    <input type="text" id="textInput" class="form-control mb-4" placeholder="KG/pound/Meter/Inch/Liter..">

                    <label for="textarea">Description</label>
                    <textarea id="textarea" class="form-control mb-4" placeholder="Write your product description here" rows="4"></textarea>

                    <div class="input-group mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Upload</span>
                        </div>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="fileInput" accept="image/*" aria-describedby="fileInput">
                            <label class="custom-file-label" for="fileInput">Primary Image</label>
                        </div>
                    </div>
                    <div class="custom-control custom-checkbox mb-4">
        <input type="checkbox" class="custom-control-input" id="checkbox">
        <label class="custom-control-label" for="checkbox">I want to Publish it now</label>
    </div>

                    <button class="btn btn-info my-4 btn-block" type="submit">Registration</button>

                    <div class="text-center">
                        

                        <hr>

                        <p>By clicking
                            <em>Sign up</em> you agree to our
                            <a href="" target="_blank">terms of service</a> and
                            <a href="" target="_blank">terms of service</a>.
                        </p>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
