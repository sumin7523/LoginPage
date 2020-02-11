<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Login Page | Sumin</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<c:url value='/assets/bower_components/bootstrap/dist/css/bootstrap.min.css' />">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<c:url value='/assets/bower_components/font-awesome/css/font-awesome.min.css' />">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<c:url value='/assets/bower_components/Ionicons/css/ionicons.min.css' />">
  <!-- Theme style -->
  <link rel="stylesheet" href="<c:url value='/assets/css/AdminLTE.min.css' />">
  <!-- iCheck -->
  <link rel="stylesheet" href="<c:url value='/assets/plugins/iCheck/square/blue.css' />">
  
  <!-- Notification css (Toastr) -->
  <link href="<c:url value='/assets/plugins/toastr/toastr.min.css' />" rel="stylesheet" type="text/css" />
  
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <style>
  html{
  -webkit-background-size: cover; 
  -moz-background-size: cover; 
  -o-background-size: cover; 
  background-size: cover;
  }
  </style>
</head>


<body class="hold-transition login-page" style="background:gray;">
<!-- <body class="hold-transition login-page" style="background:#D8D8D8;"> -->
<div class="login-box">
  <div class="login-logo">
    <a href="<c:url value='#' />" style="color:#ffffff;"><b>Login</b>Page</a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg" style="font-style:italic">Sign in to start your session</p>

    <form id="loginForm" method="post">
      <div class="form-group has-feedback">
        <input class="form-control" type=email name="email" value="${email}" parsley-trigger="change" required placeholder="email">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input class="form-control" type="password" name="passwd" parsley-trigger="change" required placeholder="password">
      <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
              <a href="<c:url value='#' />" class="text-center" style="color:#006400;">Register a new membership</a>
            </label>
          </div>
        </div>
        
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-primary btn-block btn-flat" style="background:#2F4F4F;">login</button>
        </div>
        
      </div>
      <!-- forgot my id/password -->
       <a href="#"> <span style="color:#8B0000">I forgot my id / password</a></span>
    </form>
  </div>
   
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="<c:url value='/assets/bower_components/jquery/dist/jquery.min.js' />"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<c:url value='/assets/bower_components/bootstrap/dist/js/bootstrap.min.js' />"></script>
<!-- iCheck -->
<script src="<c:url value='/assets/plugins/iCheck/icheck.min.js' />"></script>
<!-- Validation js (Parsleyjs) -->
<script src="<c:url value='/assets/plugins/parsleyjs/parsley.min.js' />"></script>
<script src="<c:url value='/assets/plugins/parsleyjs/i18n/ko.js' />"></script>

<script src="<c:url value='/assets/plugins/js-cookie-v2.1.4/js.cookie.js' />"></script>
<!-- Toastr js -->
<script src="<c:url value='/assets/plugins/toastr/toastr.min.js' />"></script>
        
<script>
    $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' /* optional */
        });
    });		
    var resizefunc = [];

    $('#loginForm').parsley();
</script>
</body>
</html>