<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Community Portal Home Page</title>

<!-- BOOTSTRAP STYLES-->
<link href="<s:url value="/assets/css/bootstrap.css"/>" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="<s:url value="/assets/css/font-awesome.css"/>"
	rel="stylesheet" />
<!-- CUSTOM STYLES-->
<link href="<s:url value="/assets/css/custom.css"/>" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />

<link href="<s:url value="/assets/css/custom.css"/>" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="<s:url value="/assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<s:url value="/assets/fonts/iconic/css/material-design-iconic-font.min.css"/>" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<s:url value="/assets/css/util.css"/>" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<s:url value="/assets/css/main.css"/>" />
<!--===============================================================================================-->

</head>
<body>
	<div id="wrapper">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="adjust-nav">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".sidebar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="<s:url value="home.jsp"/>"> <img
						style="max-width: 100px; margin-top: -7px;"
						src="<s:url value="/assets/img/cp.png"/>"> communityportal
					</a>

				</div>
				<span class="logout-spn"> <strong>Welcome, <i><s:property
								value="%{username}" /></i></strong> <br> 
					<span class="logout-spn">
							<a href="<s:url value="index.jsp"/>"
							onclick="return confirmBox();" style="color: #fff;">LOGOUT</a>
					</span>
				</span>
			</div>
		</div>
		<!-- /. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">

					<li class="active-link"><a href="<s:url value="home.jsp"/>"><i
							class="fa fa-desktop"></i>Home</a></li>

					<li><a href="<s:url value="employee.action"/>"><i
							class="fa fa-users fa"></i>My Network</a></li>

					<li><a href="<s:url value="blank.jsp"/>"><i
							class="fa fa-qrcode "></i>Jobs</a></li>

					<li><a href="<s:url value="blank.jsp"/>"><i
							class="fa fa-comments-o fa"></i>Messaging</a></li>

					<li><a href="<s:url value="blank.jsp"/>"><i
							class="fa fa-bell-o fa"></i>Notifications</a></li>

					<li><a href="<s:url value="report.action"/>"><i
							class="fa fa-user"></i>Me</a></li>

					<li><a href="<s:url value="blank.jsp"/>"><i
							class="fa fa-edit "></i>Work</a></li>

					<li><a href="<s:url value="blank.jsp"/>"><i
							class="fa fa-bar-chart-o "></i>Learning</a></li>
				</ul>
			</div>
		</nav>

		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<!-- /. ROW  -->
				<!-- HERO -->
				<section
					class="hero hero-bg d-flex justify-content-center align-items-center">
					<div class="container">


						<img style="height: 59em; width: 65em; margin-left: 450px;"
							src="<s:url value="/assets/img/portal.png"/>" class="img-fluid"
							alt="portal">
					</div>

				</section>

			</div>

		</div>
		<!-- /. PAGE INNER  -->
	</div>
	<!-- /. PAGE WRAPPER  -->


	<div class="footer">
		<div class="row">
			<div class="text-center">&copy; 2020 | communityportal</div>
		</div>
	</div>


	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="<s:url value="/assets/js/jquery-1.10.2.js"/>"></script>

	<!-- BOOTSTRAP SCRIPTS -->
	<script src="<s:url value="/assets/js/bootstrap.min.js"/>"></script>

	<!-- CUSTOM SCRIPTS -->
	<script src="<s:url value="assets/js/custom.js"/>"></script>

	<script src="<s:url value="assets/js/main.js"/>"></script>

	<script>
	
	function confirmBox() {
		   var answer;
		   answer = window.confirm("Confirm logout");
		   if (answer == true) {
		      return true;
		   } else {
		      return false;
		   }
		}
	
	</script>

</body>
</html>