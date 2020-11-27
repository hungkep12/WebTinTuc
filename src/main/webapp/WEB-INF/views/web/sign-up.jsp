<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- sử dụng taglibs của spring để bind-data từ end-point trả về. -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- tích hợp JSTL vào trong JSP -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Đăng ký tài khoản</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/libs/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <style>
    html,
    body {
        height: 100%;
    }

    body {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        padding-top: 40px;
        padding-bottom: 40px;
    }
    </style>
</head>
<!-- ============================================================== -->
<!-- signup form  -->
<!-- ============================================================== -->

<body>
    <!-- ============================================================== -->
    <!-- signup form  -->
    <!-- ============================================================== -->
    <form:form class="splash-container" modelAttribute="user" method="POST"
								action="/Dangky" enctype="multipart/form-data"
								id="validationform">
        <div class="card">
            <div class="card-header" style="text-align:center">
                <h3 class="mb-1">WEB TIN TỨC</h3>
                <p>Đăng ký tài khoản</p>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text" name="userName" required="" placeholder="Username" autocomplete="off">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" type="email" name="email" required="" placeholder="E-mail" autocomplete="off">
                    <form:errors path="email" cssStyle="color:red"></form:errors>
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" id="pass" name="pass" type="password" required=""  minlength="6" placeholder="Password">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" required="" id="pass1" type="password" placeholder="Confirm">
                     <p style="color: red;font-size: 10px;" id="CheckPasswordMatch"></p>
                </div>
                <div class="form-group pt-2">
                    <button class="btn btn-block btn-primary" id="register" type="submit">Register My Account</button>
                </div>
                <!-- <div class="form-group">
                    <label class="custom-control custom-checkbox">
                        <input class="custom-control-input" type="checkbox"><span class="custom-control-label">By creating an account, you agree the <a href="#">terms and conditions</a></span>
                    </label>
                </div>
                <div class="form-group row pt-0">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 mb-2">
                        <button class="btn btn-block btn-social btn-facebook " type="button">Facebook</button>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <button class="btn  btn-block btn-social btn-twitter" type="button">Twitter</button>
                    </div>
                </div> -->
            </div>
            <div class="card-footer bg-white">
                <p>Already member? <a href="/login" class="text-secondary">Login Here.</a></p>
            </div>
        </div>
    </form:form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
    function checkPasswordMatch() {
        var password = $("#pass").val();
        var confirmPassword = $("#pass1").val();
        if (password != confirmPassword ){
        	if(confirmPassword != '' ) $("#CheckPasswordMatch").html("Passwords does not match!");
      		 document.getElementById("register").disabled = true;
        }
            
        else{
        	if(confirmPassword != '') $("#CheckPasswordMatch").html("Passwords match.");
        	 document.getElementById("register").disabled = false;
        }
           
    }
    $(document).ready(function () {
       $("#pass1").keyup(checkPasswordMatch);
       $("#pass").keyup(checkPasswordMatch);
    });
    </script>
</body>

 
</html>