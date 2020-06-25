<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<title>Community Portal Update</title>

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
				<span class="logout-spn"> 
					<span class="logout-spn">
							<a href="<s:url value="index.jsp"/>"
							onclick="return confirmBox();" style="color: #fff;">LOGOUT</a>
					</span>
				</span>
			</div>
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
			<div class="row">
				<form action=updatedetails method="post" class="form-group">
					<div class="table-responsive">
						<table class="table table-bordered table-striped table-highlight">
							<thead>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Role</th>
								<th>Email</th>
								<th>User Name</th>
								<th>Password</th>
								<th>Gender</th>
								<th></th>
							</thead>
							<tbody>
								<tr>
									<td><input type="text" class="form-control" name="fname"
										value='<s:property value="fname"/>'></td>

									<td><input type="text" class="form-control" name="lname"
										value='<s:property value="lname"/>'></td>

									<td><select class="form-control" name="role"
										value='<s:property value="role"/>'>
											<option>Admin</option>
											<option>Regular User</option>
									</select></td>

									<td><input type="email" class="form-control" name="email"
										value='<s:property value="email"/>'></td>
									<input type="hidden" class="form-control" name="emailhidden"
										value='<s:property value="email"/>'>

									<td><input type="text" class="form-control" name="uname"
										value='<s:property value="uname"/>'></td>

									<td><input type="text" class="form-control" name="pass"
										value='<s:property value="pass"/>'></td>

									<td><select class="form-control" name="gender"
										value='<s:property value="gender"/>'>
											<option>Male</option>
											<option>Female</option>
									</select></td>
									<td><button class="btn btn-lg btn-primary" name="submitType"
							value="update" type="submit">Update</button></td>

								</tr>
							</tbody>

						</table>
						
					</div>
				</form>

				<s:if test="ctr>0">
					<span style="color: red;"><s:property value="msg" /></span>
				</s:if>
				<s:else>
					<span style="color: red;"><s:property value="msg" /></span>
				</s:else>
			</div>
			<!-- /. ROW  -->
			<hr />

			<!-- /. ROW  -->
		</div>
		<!-- /. PAGE INNER  -->
	</div>
	<!-- /. PAGE WRAPPER  -->
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