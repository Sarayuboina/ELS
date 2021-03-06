<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

<title>Lecturer Dashboard</title>

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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</head>

<body>
	<!-- container section start -->
	<section id="container" class="">


		<header class="header">
			<div class="toggle-nav">
				<div class="icon-reorder tooltips"
					data-original-title="Toggle Navigation" data-placement="bottom">
					<i class="icon_menu"></i>
				</div>
			</div>

			<!--logo start-->
			<a href="lecturer.jsp" class="logo"> <span class="lite">Welcome
					<%=session.getAttribute("uname")%></span></a>
			<!--logo end-->



			<div class="top-nav notification-row">
				<!-- notificatoin dropdown start-->
				<ul class="nav pull-right top-menu">



					<li id="task_notificatoin_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="fa fa-bell" aria-hidden="true"></i> <span
							class="badge bg-important">6</span>
					</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-blue"></div>
							<li>
								<p class="blue">You have 6 notifications!</p>
							</li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Please submit assignment!</div>

									</div>
							</a></li>


						</ul></li>

					<li id="task_notificatoin_bar" class="dropdown"><a href="#">
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Interaction</button>
							</div>
					</a></li>


					<!-- alert notification end-->


					<!-- user login dropdown start-->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <span class="profile-ava">
								<img alt="" src="">
						</span> <span class="username">Lecturer</span> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<div class="log-arrow-up"></div>
							<li class="eborder-top"><a href="#"><i
									class="icon_profile"></i> My Profile</a></li>
							<li><a href="<%=request.getContextPath()%>/LogoutServlet"><i
									class="icon_key_alt"></i> Log Out</a></li>
							<li><a href="#"><i class="icon_key_alt"></i>
									Documentation</a></li>
						</ul></li>
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
					<li><a class="" href="lecturer.jsp"> <i
							class="fas fa-chalkboard-teacher"></i> <span>Lecturer
								Dashboard</span>
					</a></li>

					<li><a href="lecturer_category.jsp" class=""> <i
							class=" icon_folder"></i> <span>Category</span>

					</a></li>

					<li class="active"><a href="#" class=""> <i
							class="icon_document_alt"></i> <span>Classes</span>
					</a></li>


					<li><a href="#" class=""> <i class="icon_folder-open"></i>
							<span>Materials</span>
					</a></li>
					<li><a href="#" class=""> <i class="fa fa-bullhorn"></i>
							<span>Announcement</span>

					</a></li>
					<li><a class="" href="resetpwd.jsp"> <i class=" icon_key"></i>
							<span>Change Password</span>
					</a></li>
					<li><a class=""
						href="<%=request.getContextPath()%>/LogoutServlet"> <i
							class="fa fa-sign-out"></i> <span>Logout </span>

					</a></li>

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
						<h3 class="page-header">
							<i class="icon_document_alt"></i>Classes
						</h3>
						<ol class="breadcrumb">
							<li><i class="fa fa-home"></i><a href="lecturer.jsp">Home</a></li>
							<li><i class="icon_folder"></i>Classes</li>
						</ol>
					</div>
				</div>
				<!-- page start-->

				<div class="row">
					<div class="col-sm-9">
						<section class="panel">
							<header class="panel-heading"> List of Classes! </header>

							<header>
								<div class="text-center"
									style="display: flex; justify-content: flex-end; width: 100%; padding: 0;">
									<button type="submit" class="btn btn-primary"
										data-toggle="modal" data-target="#myModal">Create
										Class</button>
								</div>
							</header>

							<table class="table">
								<thead>
									<tr>
										<th>Class_id</th>
										<th>Class_Name</th>
										<th>operations</th>
									</tr>
								</thead>

							</table>
						</section>
					</div>
				</div>


				<div class="container p-3 my-3 border">
					<!-- The Modal -->
					<div class="modal" id="myModal">
						<div class="modal-dialog">
							<div class="modal-content">

								<!-- Modal Header -->
								<div class="modal-header">
									<h4 class="modal-title">
										<span>Create a Class</span>
										<button type="button" class="close" data-dismiss="modal">&times;</button>
									</h4>

								</div>

								<!-- Modal body -->
								<div class="modal-body">
									<form action="">

										<div class="position-relative form-group">
											<input placeholder="Name your Class" maxlength="255"
												name="groupName" type="text"
												class="qa-test-group-title form-control" value="">
										</div>
										<div class="position-relative form-group">
											<textarea
												placeholder="Describe your class - Max. 260 characters"
												maxlength="260" name="groupDescription"
												class="groupDescription qa-test-group-description form-control"></textarea>
										</div>
										<div class="qa-test-select-grade position-relative form-group">
											<div>
												<div>
													<select placeholder="Select a Grade" name="selectGrade"
														class="qa-test-group-grade form-control">
														<option value="" hidden="">Select a Grade</option>
														<option value="none">None</option>
														<option value="pre_kindergarten">Prekindergarten</option>
														<option value="kindergarten">Kindergarten</option>
														<option value="first">1st Grade</option>
														<option value="second">2nd Grade</option>
														<option value="third">3rd Grade</option>
														<option value="fourth">4th Grade</option>
														<option value="fifth">5th Grade</option>
														<option value="sixth">6th Grade</option>
														<option value="seventh">7th Grade</option>
														<option value="eighth">8th Grade</option>
														<option value="ninth">9th Grade</option>
														<option value="tenth">10th Grade</option>
														<option value="eleventh">11th Grade</option>
														<option value="twelfth">12th Grade</option>
														<option value="higher_education">Higher Education</option>
														<option value="adult">Adult Education</option>
													</select>
												</div>
											</div>
											<br>
											<div
												class="qa-test-select-subject position-relative form-group">
												<div>
													<div>
														<select placeholder="Select Subject"
															name="selectSubjectArea"
															class="qa-test-group-subject form-control">
															<option value="" hidden="">Select Subject</option>
															<option value="all">All</option>
															<option value="computer_technology">Computer
																Technology</option>
															<option value="creative_arts">Creative Arts</option>
															<option value="health_pe">Health and PE</option>
															<option value="language_arts">Language Arts</option>
															<option value="mathematics">Mathematics</option>
															<option value="professional_development">Professional
																Development</option>
															<option value="science">Science</option>
															<option value="social_studies">Social Studies</option>
															<option value="special_education">Special
																Education</option>
															<option value="vocational_studies">Vocational
																Studies</option>
															<option value="world_languages">World Languages</option>
														</select>
													</div>
												</div>
											</div>


										</div>

										<!-- Modal footer -->
										<div class="modal-footer">
											<button type="button"
												class="qa-test-group-cancel btn btn-white"
												data-dismiss="modal">
												<span>Cancel</span>
											</button>
											<button type="submit"
												class="qa-test-group-create btn btn-primary">
												<span>Create</span>
											</button>
										</div>
									</form>
								</div>
							</div>
						</div>


					</div>
				</div>








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
