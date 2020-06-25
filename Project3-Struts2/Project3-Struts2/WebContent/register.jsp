<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Community Portal Registration Page</title>

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
	href="<s:url value="/assets/css/util.css"/>" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<s:url value="/assets/css/main.css"/>" />
<!--===============================================================================================-->

<style type="text/css">
.button-register {
	background-color: green;
	color: white;
}

.button-report {
	background-color: #000000;
	color: white;
	margin-left: 30%;
}
</style>

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
					<a class="navbar-brand" href="<s:url value="register.jsp"/>"> <img
						style="max-width: 100px; margin-top: -7px;"
						src="<s:url value="/assets/img/cp.png"/>"> communityportal
					</a>

				</div>
				<span class="logout-spn"> <span class="logout-spn"> <a
						href="<s:url value="index.jsp"/>" style="color: #fff;">Home</a>
				</span>

				</span>
			</div>
		</div>

	</div>
	<br>
	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('assets/img/circles.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				
				<!-- <a href="report"><button class="btn btn-lg btn-primary" type="button">Report</button></a> -->
				
				<s:form action="registeruser" method="post">
					<span class="login100-form-title p-b-49"> REGISTRATION </span>

					<s:textfield
						cssClass="wrap-input100 validate-input m-b-23 input100" onpaste="return false"
						name="fname" onkeypress="return (event.charCode > 64 && 
						event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)" placeholder="Type your first name here" />

					<s:textfield
						cssClass="wrap-input100 validate-input m-b-23 input100" onpaste="return false"
						name="lname" onkeypress="return (event.charCode > 64 && 
						event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)" placeholder="Type your last name here" />

					<s:radio name="role" list="{'Admin','Regular User'}" align="center"/>
						
					<s:textfield
						cssClass="wrap-input100 validate-input m-b-23 input100"
						name="email" placeholder="Type your email here" />

					<s:textfield
						cssClass="wrap-input100 validate-input m-b-23 input100"
						name="uname" placeholder="Type your username here" />
						
					<s:textfield
						cssClass="wrap-input100 validate-input m-b-23 input100"
						name="password" placeholder="Type your password here" />

					<s:radio name="gender" list="{'Male','Female'}" align="center"/>


					<s:submit cssClass="btn btn-lg btn-primary" value="Register"
						align="center" />


				</s:form>

				<s:if test="ctr>0">
					<span style="color: green;"><s:property value="msg" /></span>
				</s:if>
				<s:else>
					<span style="color: red;"><s:property value="msg" /></span>
				</s:else>

				<div class="flex-col-c p-t-155">
					<span class="txt1 p-b-17"> Already on Community Portal? </span> <a
						href="<s:url value="signin.jsp"/>" class="txt2"> Sign in </a>
				</div>
			</div>
		</div>
	</div>

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

</body>
</html>


