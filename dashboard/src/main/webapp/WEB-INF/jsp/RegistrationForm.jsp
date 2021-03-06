<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
	integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">

</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RegistrationForm</title>
<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>



  


  
</head>
<body>

<h1>Fill In Your Details</h1>
	<form:form action="RegistrationForm.html" 
		modelAttribute="RegistrationFormmodel" method="post" enctype="multipart/form-data">
		<table align="center" class="table">
			<tr>
				<td><form:input path="name" placeholder="NAME"></form:input></td>
				<td><form:errors path="name"></form:errors></td>
			</tr>

			<tr>
				<td><form:input path="pId.pId" placeholder="EMPLOYEE-ID"/></td>
				<td><form:errors path="pId.pId" /></td>
			</tr>

			<tr>
				<td><form:input type="password" path="pId.password" placeholder="PASSWORD"></form:input></td>
				<td><form:errors path="pId.password"></form:errors></td>
			</tr>

			<tr>
				<td><form:input path="emailId" placeholder="EMAIL-ID"/></td>
				<td><form:errors path="emailId" /></td>
			</tr>

			<!-- <tr>
				<td>Profile Image:</td>
				<td><input type="file" name="file"></td>

			</tr> -->
			<tr>
				<td><form:select path="pId.type">
					<form:option value="s">Student</form:option>
					<form:option value="t">Trainer</form:option>
					<form:option value="a">Administrator</form:option>
				
				</form:select></td>
				<td><form:errors path="pId.type"></form:errors></td>
			</tr>
			<tr>
				<td><form:input path="vertical" placeholder="VERTICAL"></form:input></td>
				<td><form:errors path="vertical"></form:errors></td>
			</tr>
			<tr>
				<td><form:input path="location" placeholder="LOCATION"></form:input></td>
				<td><form:errors path="location"></form:errors></td>
			</tr>
			<tr>
				<td><form:input path="managerId" placeholder="MANAGER-ID"></form:input></td>
				<td><form:errors path="managerId"></form:errors></td>
			</tr>
			<tr>
				<td><form:input path="phoneNo" placeholder="PHONE-NO"></form:input></td>
				<td><form:errors path="phoneNo"></form:errors></td>
			</tr>
			
			
			
		<tr>
				<td>Photo:</td>
				<td><input type="file"  name="filename" /></td>
				<td></td>
			</tr>   
			
		<!-- 	
			<td><input type="file"  name="file1" /></td>
			 -->
			

			<tr>
				<td></td>
				<td><input type="submit" class="btn btn-danger btn-block" name="button" value="Enroll" /></td>
			</tr>

		</table>
		
	</form:form>
<script type="text/javascript">
$(document).ready(function() {
    $('form:select').material_select();
  });
            
</script>
</body>
</html>