<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script type="text/javascript">
  function validateform(){
	  var uname = document.regform.uname.value;
	  var pwd = document.regform.pwd.value;
	  var letters = /^[A-Za-z]+$/;
	  if(!uname.match(letters) || uname=="" || uname==null)
	     {
	      alert("Enter valid username");
	      status = false;
	     }
	  else if(!lname.match(letters) || lname.length<=3)
	     {
		  alert("Enter valid characters of minimum length 4");
	      status = false;
	     }
	  else
	     {
		   status = true;
	     }
  }
  </script>
  

  <title>ELS Login</title>

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
<div class="text-center">

 <div class="container">

    <form class="login-form" action="<%=request.getContextPath()%>/LoginServlet" method="post" onsubmit="validateform()">
      <div class="login-wrap">
        <p class="login-img"><i class="icon_lock_alt"></i></p>
        <div class="input-group">
     
          <span class="input-group-addon"><i class="icon_profile"></i></span>
         <input type="text" class="form-control" id="uname" placeholder="Username" name="uname" autofocus required>
        </div>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_key_alt"></i></span>
          <input type="password" class="form-control" id="pwd" placeholder="Password" name="pwd" required>
        </div>
        
        <label class="checkbox">
                <input type="checkbox" value="remember-me"> Remember me
                <span class="pull-right"> <a href="ForgotPassword.html"> Forgot Password?</a></span>
            </label>
         <span style="color:red"><h4 bgcolor="green"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></h4></span>
         
        <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button></br>
        <span class="pull-center"><a href="signup.html" class="btn btn-info btn-lg btn-block" type="submit">Signup</span></a>
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