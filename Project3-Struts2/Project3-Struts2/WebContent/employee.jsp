<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>Community Portal My Network Page</title>

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

<!--Jquery CDN-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!--DataTable CDN-->
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
<script
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>


<style>
.table-row {
	cursor: pointer;
}
.avatar {
  vertical-align: middle;
  width: 50px;
  height: 50px;
  border-radius: 50%;
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
					<a class="navbar-brand" href="<s:url value="home.jsp"/>"> <img
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

					<li><a href="<s:url value="report.action"/>"><i class="fa fa-user"></i>Me</a></li>

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

				<section class="hero hero-bg d-flex justify-content-center align-items-center">

					<h1>Connections</h1>

					<div style="margin-top: 50px; margin-right: 282px;">
						<input type="text" id="myCustomSearchBox"
							class="wrap-input100 validate-input m-b-23 input100"
							placeholder="Search here">
						<table
							class="table table-bordered table-condensed table-striped table-hover display"
							style="width: 100%" id="mytbl">
							<thead>
								<tr class="success">
									<!-- <th></th> -->
									<th>First Name</th>
									<th>Last Name</th>
									<th>Company Name</th>
									<th>City</th>
									<th>Country</th>
								</tr>
							</thead>

							<s:iterator value="employees">
								<tr class="table-row" data-href="firstname">
									<!-- <td><img src="./assets/img/cp.png" alt="Avatar" class="avatar"></td> -->
									<td class="nr"><s:property value="firstname" /></td>
									<td class="nr"><s:property value="lastname" /></td>
									<td class="nr"><s:property value="companyname" /></td>
									<td class="nr"><s:property value="city" /></td>
									<td class="nr"><s:property value="country" /></td>
								</tr>
							</s:iterator>
						</table>
					</div>

					<div style="margin-top: 50px; margin-right: 282px;">
						<table
							class="table table-bordered table-condensed table-striped table-hover"
							id="mytbl">
							<thead>
								<tr class="success">
									<th>Employees sorted by Department</th>
									<th>Last Name</th>
									<th>Company Name</th>
									<th>City</th>
									<th>Country</th>
								</tr>
							</thead>

							<s:bean name="com.portal.action.DepartmentComparator"
 								var="deptComparator" /> 

 							<s:sort comparator="deptComparator" source="employees">
 								<s:iterator> 
									<tr class="table-row" data-href="firstname">
 										<td class="nr"><s:property value="firstname" /></td>
										<td class="nr"><s:property value="lastname" /></td>
										<td class="nr"><s:property value="companyname" /></td>
										<td class="nr"><s:property value="city" /></td>
										<td class="nr"><s:property value="country" /></td> 
									</tr> 
								</s:iterator>
							</s:sort>
 						</table>
 					</div> 

					<div style="margin-top: 50px; margin-right: 282px;">
 						<table
							class="table table-bordered table-condensed table-striped table-hover" 
							id="mytbl"> 
							<thead>
								<tr class="success"> 
 									<th>SubSet Tag - Employees working in Recruitment Company</th> 
 									<th>Last Name</th> 
									<th>Company Name</th>
 									<th>City</th>
 									<th>Country</th>
								</tr> 
 							</thead> 
 							<s:subset decider="recruitmentDecider" source="employees"> 
								<s:iterator> 
									<tr class="table-row" data-href="name"> 
										<td class="nr"><s:property value="firstname" /></td>
										<td class="nr"><s:property value="lastname" /></td>
										<td class="nr"><s:property value="companyname" /></td>
										<td class="nr"><s:property value="city" /></td>
										<td class="nr"><s:property value="country" /></td> 
 									</tr> 
								</s:iterator> 
							</s:subset> 
						</table> 
					</div> 

 					<div style="margin-top: 50px; margin-right: 282px;"> 
 						<table class="table table-bordered table-condensed table-striped table-hover" id="mytbl"> 
 							<thead> 
 								<tr class="success"> 
 									<th>SubSet Tag - Employees 2 and 3</th> 
 									<th>Last Name</th> 
 									<th>Company Name</th> 
									<th>City</th> 
 									<th>Country</th>
								</tr> 
							</thead> 

						<s:subset start="1" count="2" source="employees"> 

								<s:iterator> 
 									<tr class="table-row" data-href="name"> 
										<td class="nr"><s:property value="firstname" /></td>
										<td class="nr"><s:property value="lastname" /></td>
										<td class="nr"><s:property value="companyname" /></td>
										<td class="nr"><s:property value="city" /></td>
										<td class="nr"><s:property value="country" /></td> 
									</tr> 
								</s:iterator> 

 							</s:subset> 
						</table> 
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

	<!-- BOOTSTRAP SCRIPTS -->
	<script src="<s:url value="/assets/js/bootstrap.min.js"/>"></script>

	<!-- CUSTOM SCRIPTS -->
	<script src="<s:url value="assets/js/custom.js"/>"></script>

	<script src="<s:url value="assets/js/main.js"/>"></script>

	<%-- 	<script>
		$(document).ready(function() {
			$('#mytbl').dataTable();
		}); 
	</script> --%>

	<script>
		$(document).ready(function($) {
			/*   $(".table-row").click(function() {
			      window.document.location = $(this).data("href");
			  }); */

			/* $(".table-row").click(function() {
				$(this).closest('tr').find('td').each(function() {
					var textval = $(this).text(); // this will be the text of each <td>
					alert(textval);
				});
			}); */

			$(document).ready(function() {
				var table = $('#mytbl').DataTable();

				$('#mytbl tbody').on('click', 'tr', function() {
					var data = table.row(this).data();
					alert('You clicked on ' + data[0] + '\'s row');
				});
			});

		});
	</script>

	<script type="text/javascript">
		dTable = $('#mytbl').DataTable({
			"bLengthChange" : false, // this gives option for changing the number of records shown in the UI table
			"lengthMenu" : [ 5 ], // 5 records will be shown in the table
			"columnDefs" : [ {
				"className" : "dt-center",
				"targets" : "_all"
			} //columnDefs for align text to center
			],
			"dom" : "lrtip" //to hide default searchbox but search feature is not disabled hence customised searchbox can be made.
		});

		$('#myCustomSearchBox').keyup(function() {
			dTable.search($(this).val()).draw(); // this  is for customized searchbox with datatable search feature.
		})
	</script>
	
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