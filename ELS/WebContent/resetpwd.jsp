<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">
  <script language="javascript">
    function passwordChanged() {
        var strength = document.getElementById('strength');
        var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
        var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
        var enoughRegex = new RegExp("(?=.{6,}).*", "g");
        var npwd = document.getElementById('npwd');
        if (npwd.value.length == 0 ) {
            strength.innerHTML = 'Type Password';
        } else if (false == enoughRegex.test(npwd.value)) {
            strength.innerHTML = 'More Characters';
        } else if (strongRegex.test(npwd.value)) {
            strength.innerHTML = '<span style="color:green">Strong!</span>';
        } else if (mediumRegex.test(npwd.value)) {
            strength.innerHTML = '<span style="color:orange">Medium!</span>';
        } else {
            strength.innerHTML = '<span style="color:red">Weak!</span>';
        }
    }
</script>
<script language="javascript">
 function pwdvalid(){
	 var npwd=document.passform.npwd.value;
	 var cpwd=document.passform.cpwd.value;
	 if(npwd.length < 6){
		 alert("Minimum length should be of 6 characters");
		 return false;
	 }
	 else if(npwd != cpwd){
		 alert("Password mismatched");
		 return false;
	 }
	 else{
		 return true;
	 }
	 
 }</script>
  <title>Change Password</title>

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
  <span class="text-center" style="color:red;bg-color:green"><h4>${msg}</h4></span>
    <form  name="passform" class="login-form" action="<%=request.getContextPath()%>/ResetpassServlet" method="post" onkeyup="return passwordChanged()" onsubmit=" return pwdvalid()">
      <div class="login-wrap">
      <div class="text-center">
        <p class="login-img"><i class="icon_lock-open"></i><h3><b><i>Change Password</i></b></h3></p>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_key_alt"></i></span>
         <input type="password" class="form-control" id="opwd" placeholder="Old Password" name="opwd"  required>
        </div>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_key_alt"></i></span>
         <input type="password" class="form-control" id="npwd" placeholder="New Password" name="npwd"  required>
        </div>
        <span id="strength"><h5 style="color:blue">Type Password</h5></span>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_key_alt"></i></span>
         <input type="password" class="form-control" id="cpwd" placeholder="Confirm Password" name="cpwd"  required>
        </div>
        
         
       <button class="btn btn-primary btn-lg btn-block" type="submit">Confirm</button></br>
        </div>
        </div>
        </form>
     <div class="text-right">
      <div class="credits">
          
          Designed by <a href="#">ELS</a>
        </div>
    </div>
  </div>

</html>