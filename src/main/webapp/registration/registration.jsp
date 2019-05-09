<%-- 
    Document   : registration
    Created on : May 9, 2019, 10:59:49 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Maraya Global | Registration</title>
        <link type="text/css" rel="stylesheet" href="css/vendor/bootstrap_1.css"
              <link rel="stylesheet" type="text/css" href="css/registration.css">

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Navbar w/ text</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Features</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Pricing</a>
                    </li>
                </ul>
                <span class="navbar-text">
                    Navbar text with an inline element
                </span>
            </div>
        </nav>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-header">Register</div>
                        <div class="card-body">

                            <form class="form-horizontal" method="post" action="#">

                                <div class="form-group">
                                    <label for="name" class="cols-sm-2 control-label">Your Name<span>*</span></label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="name" id="name" placeholder="Enter your Name" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="email" class="cols-sm-2 control-label">Your Email<span>*</span></label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="email" id="email" placeholder="Enter your Email" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="username" class="cols-sm-2 control-label">Phone Number<span>*</span></label>
                                    <div class="cols-sm-6">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="username" id="username" placeholder="Enter your Username" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="cols-sm-2 control-label">Password<span>*</span></label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                            <input type="password" class="form-control" name="password" id="password" placeholder="Enter your Password" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="confirm" class="cols-sm-2 control-label">Confirm Password<span>*</span></label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                            <input type="password" class="form-control" name="confirm" id="confirm" placeholder="Confirm your Password" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="accType" id="inlineRadio2" checked required value="customer">
                                    <label class="form-check-label"  for="inlineRadio2">I'm Customer</label>
                                </div>

                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="accType" id="inlineRadio1" required value="vendor">
                                    <label class="form-check-label" for="inlineRadio1">I'm Vendor</label>
                                </div>

                                <div class="custom-control custom-checkbox py-3">
                                    <input type="checkbox" class="custom-control-input" id="customCheck1" checked required>
                                    <label class="custom-control-label" for="customCheck1">I agree to <a href="term-and-condition">terms</a> and <a href="privacy-and-policy">privacy policy</a>.</label>
                                </div>


                                <div class="custom-control custom-checkbox ">
                                    <input type="checkbox" class="custom-control-input" id="customCheck1" checked>
                                    <label class="custom-control-label" for="customCheck1">I would like to receive promotional offers from Maraya Global</label>
                                </div>


                                <div class="form-group mt-3">
                                    <button type="button" class="btn btn-primary btn-lg btn-block login-button">Register</button>
                                </div>
                                <div class="login-register">
                                    <a href="/marayaglobal">Login</a>
                                </div>
                        </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>

</body>
</html>
