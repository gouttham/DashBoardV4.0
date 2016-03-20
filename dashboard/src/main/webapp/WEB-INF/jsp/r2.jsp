<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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


          <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
  
  

  
   
</style>


  <script type="text/javascript">
$(document).ready(function() {
    $('form:select').material_select();
  });
            
</script>
  
  
  <style type="text/css">
  .row
  {
  color:OrangeRed;
  }
  </style>
</head>
<body>

	<form:form action="RegistrationForm.html" 
		modelAttribute="RegistrationFormmodel" method="post">
			
			
			<div class="row">
        	<div class="input-field col s12 ">
				<form:input path="name" placeholder="NAME"></form:input>
				<form:errors path="name"></form:errors>
			</div>
			</div>
			
			<div class="row">
        	<div class="input-field col s12 ">

			
				<form:input path="pId.pId" placeholder="EMPLOYEE-ID"/>
				<form:errors path="pId.pId" />
			</div>
			</div>
			
			<div class="row">
        	<div class="input-field col s12 ">

			
				<form:input type="password" path="pId.password" placeholder="PASSWORD"></form:input>
				<form:errors path="pId.password"></form:errors>
			</div>
			</div>
			
			<div class="row">
        	<div class="input-field col s12 ">

			
			<form:input path="emailId" placeholder="EMAIL-ID"/>
				<form:errors path="emailId" />
			</div>
			</div>
			


              
              
			
			<div class="row" style="color: black">
        	<div class="input-field col s12">

			
				<form:select cssClass="browser-default" path="pId.type">
					<form:option value="s"><h5>Student</h5></form:option>
					<form:option value="t">Trainer</form:option>
					<form:option value="a">Administrator</form:option>
				
				</form:select>
				
				<form:errors path="pId.type"></form:errors>
			
			
			</div>
			</div>
			
			<div class="row">
        	<div class="input-field col s12 ">
			
			
				<form:input path="vertical" placeholder="VERTICAL"></form:input>
				<form:errors path="vertical"></form:errors>
			
			</div>
			</div>
			
			<div class="row">
        	<div class="input-field col s12 ">
			
				<form:input path="location" placeholder="LOCATION"></form:input>
				<form:errors path="location"></form:errors>
			</div>
			</div>
			
			<div class="row">
        	<div class="input-field col s12 ">
			
			
				<form:input path="managerId" placeholder="MANAGER-ID"></form:input>
				<form:errors path="managerId"></form:errors>
			</div>
			</div>
			
			<div class="row">
        	<div class="input-field col s12 ">
			
				<form:input path="phoneNo" placeholder="PHONE-NO"></form:input>
				<form:errors path="phoneNo"></form:errors>
			
			</div>
			</div>
			
			
			
			
			<%-- <tr>
				<td>Photo:</td>
				<td><form:input type="file" path="f" name="file" /></td>
				<td><form:errors path="f"></form:errors></td>
			</tr>   --%>
			
		<!-- 	
			<td><input type="file"  name="file1" /></td>
			 -->
			

			
			<div style="text-align: left">
			<button class="btn waves-effect waves-red btn-large" type="submit" name="action">Enroll
  			</button>
        
			</div>

		

		
	</form:form>

</body>
</html>