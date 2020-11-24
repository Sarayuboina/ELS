<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">
<script language="javascript">
    function passwordChanged() {
        var strength = document.getElementById('strength');
        var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
        var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
        var enoughRegex = new RegExp("(?=.{6,}).*", "g");
        var pwd = document.getElementById('pwd');
        if (pwd.value.length == 0 ) {
            strength.innerHTML = 'Type Password';
        } else if (false == enoughRegex.test(pwd.value)) {
            strength.innerHTML = 'More Characters';
        } else if (strongRegex.test(pwd.value)) {
            strength.innerHTML = '<span style="color:green">Strong!</span>';
        } else if (mediumRegex.test(pwd.value)) {
            strength.innerHTML = '<span style="color:orange">Medium!</span>';
        } else {
            strength.innerHTML = '<span style="color:red">Weak!</span>';
        }
    }
    </script>

<script language="javascript">  
   
  function validateform(){
	  var uname = document.regform.uname.value;
	  var fname = document.regform.fname.value;
	  var lname = document.regform.lname.value;
	  var pwd=document.regform.pwd.value;
	  var cpwd=document.regform.cpwd.value;
	  var mail_id=document.regform.mail_id.value;
	  var letters = /^[A-Za-z]+$/;
	  if(uname == null || uname.match(" ") || uname.length<=5){
		  alert("Enter username name of minimum 6");
		  return false;
	  }
	  else if(!fname.match(letters))
	     {
	      alert("Enter valid characters");

	      return false;
	     }
	  else if(!lname.match(letters) || lname.length<=3)
	     {
		  alert("Enter lastname valid characters of minimum length 4");
	      return false;
	     }
	  else if(pwd.length < 6){
		 alert("Minimum length should be of 6 characters");
		 return false;
	  }
	  else if(pwd != cpwd){
			 alert("Password mismatched in confirm password");
			 return false;
		 }
	  else{
			 return true;
		 }
  }
		  
  
 </script>

<title>Student Registration</title>

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
	<span style="color: red"><h4 bgcolor="green"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></h4></span>
	<div class="container">

		<form name="regform" class="login-form"
			action="<%=request.getContextPath()%>/RegStudServlet" method="post"
			onkeyup="return passwordChanged()" onsubmit="return validateform()">
			<div class="login-wrap">
				<div class="text-center">
					<p class="login-img">
						<i class="icon_pencil_alt"></i>
					<h2>
						<b><i>Register here</i></b>
					</h2>
					</p>
					<span id="lengthloc"></span>
					<div class="input-group">
						<span class="input-group-addon"><b>User name: </b><i
							class="icon_profile"></i></span> <input type="text" class="form-control"
							id="uname" placeholder="User name" name="uname" autofocus
							required>


					</div>
					<span class="pull-right" color="red" id="fnameloc"></span>


					<div class="input-group">

						<span class="input-group-addon"><b>First name: </b><i
							class="icon_profile"></i></span> <input type="text" class="form-control"
							id="fname" placeholder="First name" name="fname" autofocus
							required>
					</div>
					<span class="pull-right" id="lnameloc"></span>
					<div class="input-group">

						<span class="input-group-addon"><b>Last name: </b><i
							class="icon_profile"></i></span> <input type="text" class="form-control"
							id="sid" placeholder="Last name" name="lname" autofocus required>
					</div>
					<div class="input-group">
						<span class="input-group-addon"><b>Personal mail_id: </b><i
							class="icon_mail"></i></span> <input type="email" class="form-control"
							id="mail" placeholder="mail_id" name="mail_id" autofocus required>
					</div>
					<div class="input-group">
						<span class="input-group-addon"><b>Password: </b><i
							class="icon_key_alt"></i></span> <input type="password"
							class="form-control" id="pwd" placeholder="Password" name="pwd"
							required>
					</div>
					<span id="strength"><h5 style="color: blue">Type
							Password</h5></span>
					<div class="input-group">
						<span class="input-group-addon"><b> Confirm Password: </b><i
							class="icon_key_alt"></i></span> <input type="password"
							class="form-control" id="cpwd" placeholder=" Confirm Password"
							name="cpwd" required>
					</div>
					<span class="pull-center"><a href="login.html"><button
								class="btn btn-primary btn-lg btn-block" type="submit">Register</button></a></span>
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