<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Community Portal Index Page</title>

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
					<a class="navbar-brand" href="<s:url value="index.jsp"/>"> <img
						style="max-width: 100px; margin-top: -7px;"
						src="<s:url value="/assets/img/cp.png"/>"> communityportal
					</a>

				</div>
				<span class="logout-spn"> 
					<span class="logout-spn"> 
						<a href="<s:url value="register.jsp"/>" style="color: #fff;">Join Now | </a>
						<a href="<s:url value="signin.jsp"/>" style="color: #fff;">Signin</a>

				</span>

				</span>

			</div>
		</div>
		<!-- /. NAV TOP  -->


		<!-- HERO -->
		<section
			class="hero hero-bg d-flex justify-content-center align-items-center">
			<div class="container">
				<img style="height: 59em; width: 65em; margin-left: 600px;"
					src="<s:url value="/assets/img/portal.png"/>" class="img-fluid"
					alt="portal">
			</div>

		</section>


	</div>
	<!-- /. PAGE WRAPPER  -->


	<div class="footer">
		<div class="row">
			<div class="text-center">&copy; 2020 | communityportal</div>
		</div>
	</div>

</body>

	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="<s:url value="/assets/js/jquery-1.10.2.js"/>"></script>

	<!-- BOOTSTRAP SCRIPTS -->
	<script src="<s:url value="/assets/js/bootstrap.min.js"/>"></script>

	<!-- CUSTOM SCRIPTS -->
	<script src="<s:url value="assets/js/custom.js"/>"></script>

	<script src="<s:url value="assets/js/main.js"/>"></script>
	
</html>