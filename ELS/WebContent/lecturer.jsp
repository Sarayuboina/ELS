<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title> Lecturer Dashboard</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.min.css" rel="stylesheet" />
 
  <!-- Custom styles -->
 
  <link href="css/widgets.css" rel="stylesheet">
  <link href="css/style_lecturer.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />
  
  <link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
  <!-- =======================================================
    Theme Name: NiceAdmin
    Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>
<body>
<!-- container section start -->
  <section id="container" class="">
 

    <header class="header">
      <div class="toggle-nav">
        <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
      </div>

      <!--logo start-->
      <<a href="#" class="logo"> <span class="lite">Welcome <%=request.getAttribute("userName") %></span></a>
      <!--logo end-->


        
      <div class="top-nav notification-row">
        <!-- notificatoin dropdown start-->
        <ul class="nav pull-right top-menu">
        
        

			<li id="task_notificatoin_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="fa fa-bell" aria-hidden="true"></i>
                            <span class="badge bg-important">6</span>
                        </a>
            <ul class="dropdown-menu extended tasks-bar">
              <div class="notify-arrow notify-arrow-blue"></div>
              <li>
                <p class="blue">You have 6 notifications!</p>
              </li>
              <li>
                <a href="#">
                  <div class="task-info">
                    <div class="desc">Please submit assignment!</div>
                    
                  </div>
                 </a>
              </li>
             
   
          </ul>
          </li>
          
          <li id="task_notificatoin_bar" class="dropdown">
             <a href="#">
             <div class="text-center"><button type="submit" class="btn btn-primary">Interaction</button></div>
            </a> 
             </li>
             
          
                   <!-- alert notification end-->
          
          
          <!-- user login dropdown start-->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="">
                            </span>
                            <span class="username">Lecturer</span>
                            <b class="caret"></b>
                        </a>
            <ul class="dropdown-menu extended logout">
              <div class="log-arrow-up"></div>
              <li class="eborder-top">
                <a href="#"><i class="icon_profile"></i> My Profile</a>
              </li>
             <li>
                <a href="<%=request.getContextPath()%>/LogoutServlet"><i class="fa fa-sign-out"></i> Log Out</a>
              </li>
              <li>
                <a href="#"><i class="icon_key_alt"></i> Documentation</a>
              </li>
              </ul>
          </li>
          <!-- user login dropdown end -->
        </ul>
        <!-- notificatoin dropdown end-->
      </div>
    </header>
    <!--header end-->

    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
          <li class="active">
            <a class="" href="lecturerdashboard.html">
                        <i class="fas fa-chalkboard-teacher"></i>
                          <span>Lecturer Dashboard</span>
                      </a>
          </li>
          
           <li >
            <a href="#" class="">
                          <i class=" icon_folder"></i>
                          <span>Category</span>
                          
                      </a>
            </li>
         
         <li >
            <a href="#" class="">
                          <i class="icon_document_alt"></i>
                          <span>Classes</span>
                      </a>
          </li>
          
          
          <li >
            <a href="#" class="">
                          <i class="icon_folder-open"></i>
                          <span>Materials</span>
                      </a>
          </li>
          <li >
            <a href="#" class="">
                          <i class="fa fa-bullhorn"></i>
                          <span>Announcement</span>
                          
                      </a>
            </li>
          <li>
            <a class="" href="resetpwd.html">
                          <i class=" icon_key"></i>
                          <span>Change Password</span>
                      </a>
          </li> 
          <li>
            <a class="" href="<%=request.getContextPath()%>/LogoutServlet">
                          <i class="fa fa-sign-out"></i>
                          <span>Logout </span>

                      </a>

          </li>

                 </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <!--overview start-->
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-laptop"></i>lecturer Dashboard</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="lecturerdashboard.html">Home</a></li>
              <li><i class="fa fa-laptop"></i>lecturer Dashboard</li>
            </ol>
          </div>
        </div>

                <!-- project team & activity end -->

      </section>
      <div class="text-right">
        <div class="credits">
          <!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
          Designed by <a href="https://bootstrapmade.com/">ELS</a>
        </div>
      </div>
    </section>
    <!--main content end-->
  </section>
  <!-- container section start -->

<!-- javascripts -->
 <script src="js/jquery.js"></script>
  <script src="js/jquery-ui-1.10.4.min.js"></script>
  <script src="js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
  <!-- bootstrap -->
  <script src="js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- charts scripts -->
  <script src="assets/jquery-knob/js/jquery.knob.js"></script>
  <script src="js/jquery.sparkline.js" type="text/javascript"></script>
  <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
  <script src="js/owl.carousel.js"></script>
 
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="js/sparkline-chart.js"></script>
    <script src="js/easy-pie-chart.js"></script>
    <script src="js/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="js/jquery-jvectormap-world-mill-en.js"></script>
   
    <script src="js/jquery.autosize.min.js"></script>
    <script src="js/jquery.placeholder.min.js"></script>
    <script src="js/gdp-data.js"></script>
    <script src="js/morris.min.js"></script>
    <script src="js/sparklines.js"></script>
    
    <script src="js/jquery.slimscroll.min.js"></script>
    <script>
      //knob
      $(function() {
        $(".knob").knob({
          'draw': function() {
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
        $("#owl-slider").owlCarousel({
          navigation: true,
          slideSpeed: 300,
          paginationSpeed: 400,
          singleItem: true

        });
      });

      //custom select box

      $(function() {
        $('select.styled').customSelect();
      });

      
    </script>

  
</body>
</html>