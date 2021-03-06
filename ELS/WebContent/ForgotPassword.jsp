<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.controller.ResetPasswordServlet"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">
<script type="text/javascript">
  function validateform(){  
	  
		  var fname=document.regform.fname.value;
		  var lname=document.regform.lname.value;
		  var letters = /^[A-Za-z]+$/;
		  if((fname.match(letters))
	      { 
	      return true;
	      }
	      else
	      {
	    	  document.getElementById("fnameloc").innerHTML="Enter alphabets only";
	      return false;
	      }
		  if((lname.match(letters))
	      { 
	      return true;
	      }
	      else
	      {
	    	  document.getElementById("lnameloc").innerHTML="Enter alphabets only";
	      return false;
	      }
		  
  }
 </script>

<title>Forgot Password?</title>

<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="css/elegant-icons-style.css" rel="stylesheet" />
<link href="css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles -->
<link href="css/styles.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />


</head>

<body class="login-img3-body">

	<div class="container">

		<form name="passform" class="login-form" action="ResetPasswordServlet"
			method="post" onsubmit="return validateform()">
			<div class="login-wrap">
				<div class="text-center">
					<p class="login-img">
						<i class="icon_lock_alt"></i>
					<h2>
						<b><i>Forgot your password?</i></b>
					</h2>
					</p>
					<h4>Enter your Email address and we will send you random
						password</h4>
					<div class="input-group">
						<span class="input-group-addon"><i class="icon_mail"></i></span> <input
							type="email" class="form-control" id="mail"
							placeholder="Enter your valid mail_id" name="email" autofocus
							required>
					</div>
					<span class="pull-center"><a href="resetpwd.html"><button
								class="btn btn-primary btn-lg btn-block" type="submit">
								<i class="icon_lock-open"></i>Click to Reset
							</button></a></span>
				</div>

			</div>
		</form>
		<div class="text-right">
			<div class="credits">

				Designed by <a href="#">ELS</a>
			</div>
		</div>
	</div>


</body>

</html>
