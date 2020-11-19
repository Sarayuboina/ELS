<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title> Admin Dashboard</title>

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
  <link href="css/style.css" rel="stylesheet">
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
 

    <header class="header dark-bg">
      <div class="toggle-nav">
        <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
      </div>

      <!--logo start-->
      <a href="#" class="logo"> <span class="lite">Welcome  <%=session.getAttribute("Admin") %></span></a>
      <!--logo end-->

        
      <div class="top-nav notification-row">
        <!-- notificatoin dropdown start-->
        <ul class="nav pull-right top-menu">

            
          <!-- alert notification end-->
          <!-- user login dropdown start-->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="">
                            </span>
                            <span class="username">Admin</span>
                            <b class="caret"></b>
                        </a>
            <ul class="dropdown-menu extended logout">
              <div class="log-arrow-up"></div>
              <li class="eborder-top">
                <a href=""><i class="icon_profile"></i> My Profile</a>
              </li>
             <li>
                <a href="<%=request.getContextPath()%>/LogoutServlet"><i class="fa fa-sign-out"></i> Log Out</a>
              </li>
              <li>
                <a href=""><i class="icon_key_alt"></i> Documentation</a>
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
          <li>
            <a class="" href="adminDashboard.jsp">
                          <i class="icon_house_alt"></i>
                          <span>Admin Dashboard</span>
                      </a>
          </li>
          <li class="active">
            <a class="#" href="">
                          <i class="icon_document_alt"></i>
                          <span>Classes</span>
                      </a>
          </li>
          <li>
            <a class="#" href="adminSubjects.jsp">
                          <i class="icon_book_alt"></i>
                          <span>Subjects</span>
                      </a>
          </li>
          <li>
            <a class="#" href="">
                          <i class="icon_profile"></i>
                          <span>Lecturers</span>
                      </a>
          </li>
          
          <li>
            <a href="#" class="">
                          <i class="fa fa-graduation-cap"></i>
                          <span>Students</span>
                          
                      </a>
            </li>

         
         
          <li >
            <a href="resetpwd.html" class="">
                          <i class="icon_key_alt"></i>
                          <span>Change password</span>
                      </a>
          </li>
          <li >
            <a href="<%=request.getContextPath()%>/LogoutServlet" class="">
                          <i class="fa fa-sign-out"></i>
                          <span>Logout</span>
                          
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
            <h3 class="page-header"><i class="icon_document_alt"></i>Standard</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="adminDashboard.jsp">Home</a></li>
              <li><i class="icon_document_alt"></i>Standard</li>
            </ol>
          </div>
        </div>

          <!--/.col-->
       <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                
                    <div class="container text-left">
                     <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal">
                     Add Standard
                    </button>&nbsp;&nbsp;
                    
                       <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                         
                                             
                                     </div>
                                     <div class="modal-body">
                                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                                     
                                               <form action="insertstandard" method="post" scope="request">
                                 
                                            <div class="input-group">
                                             <span class="input-group-addon"><b>Standard Name: </b><i class="icon_document_alt"></i></span>
                                               <input type="text" class="form-control" id="standard_name" placeholder="standard name"  name="standard_name" autofocus required>
                                            </div>
                                       
                                          

                      
                    
                <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      <button type="submit" class="btn btn-primary">Add</button>/>
                 
                   </div>
      </div>
    </div>
  </div>
</div>
</div>


                    <br>
        <div class="col-sm-9">
            <section class="panel">
              <header class="panel-heading">
                List of Standards!
              </header>
              <table class="table">
                <thead>
                  <tr>
                    <th>Standard_id</th>
                    <th>Standard_name</th>
                    <th>operation</th>
                    
                  </tr>
                </thead>
        
            </section>
          </div>
                     <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="user" items="${listUser}">

                                <tr>
                                    <td>
                                        <c:out value="${user.standard_id}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.standard_name}" />
                                    </td>
                                   
                                    <td> <a href="deletestandard?standard_id=<c:out value='${user.standard_id}' />" class="btn btn-danger">Delete</a></td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

         </table>
                </div>
                <div class="container text right">
                 <img alt="img" src="img/standard.jpg" style="height:280px; width:780px" align="right"><br></br>
            </div>
            </div>
       
        <!--/.row-->


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
          Designed by <a href="#">ELS</a>
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