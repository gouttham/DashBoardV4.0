<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap - Data Table</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="../dashboard/assets/css/vendor/bootstrap.min.css"
	type="text/css" rel="stylesheet">
<link href="../dashboard/assets/css/vendor/font-awesome.min.css"
	type="text/css" rel="stylesheet">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600'
	rel='stylesheet' type='text/css'>
<link href="../dashboard/assets/css/jquery.bdt.css" type="text/css"
	rel="stylesheet">
<link href="../dashboard/assets/css/style.css" type="text/css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="box clearfix">
				<h3>Schedule Interview</h3>
				<form action="ScheduleInterview.html" method="post">
					<table class="table table-striped table-hover" id="bootstrap-table">
						<thead>
							<tr>
								<th><h5>Name</h5></th>
								<th><h5>Employee ID</h5></th>
								<th><h5>Email Id</h5></th>
								<th><h5>Skills</h5></th>
								<th><h5>Skill Points</h5></th>
								<th><h5>Schedule Interview</h5></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${result}" var="entry">
								<tr>
									<td>${entry.key.name}</td>
									<td>${entry.key.pId.pId}</td>
									<td>${entry.key.emailId}</td>
									<td><c:forEach items="${entry.value}" var="e2">
									${e2.skillId.skillName},
								</c:forEach></td>
									<td>${entry.key.skillPoints}</td>
									<td><input type="checkbox" name="stinlist" value="${entry.key.pId.pId}"></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<input class="btn btn-danger btn-block" type="submit" value="Schedule Interview">
				</form>
			</div>
		</div>
	</div>
	</div>

	<script src="http://code.jquery.com/jquery-2.1.1.min.js"
		type="text/javascript"></script>
	<script src="../dashboard/assets/js/vendor/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="../dashboard/assets/js/vendor/jquery.sortelements.js"
		type="text/javascript"></script>
	<script src="../dashboard/assets/js/jquery.bdt.js"
		type="text/javascript"></script>
	<script>
		$(document).ready(function() {
			$('#bootstrap-table').bdt();
		});
	</script>
</body>
</html>