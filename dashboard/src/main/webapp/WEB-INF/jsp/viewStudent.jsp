<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MyProfile</title>

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
  
  
<body style="text-align: center">


				<h4>My Profile</h4>
				
				<form:form action="viewStudent.html" modelAttribute="viewStudent"
		align="center">
		
		<table class="responsive-table bordered highlight">
		<c:forEach var="ele" items="${dispall}">
		
				<tr>
						<td>Name</td>
						<td>${ele.name}</td>
				
				</tr>
				
				<tr>
						<td>Location</td>
						<td>${ele.location}</td>
				
				</tr>
				
				<tr>
						<td>Vertical</div>
						<td>${ele.vertical}</div>
				
				</td>
				
				<tr>
						<td>Email Id</div>
						<td>${ele.emailId}</div>
				
				</td>
		
		
		
		<tr>
						<td>Phone</td>
						<td>${ele.phoneNo}</td>
				
				</tr>
				
				<tr>
						<td></td>
						<td><a href="modifyStudent.html?value=${ele.pId.pId}&value1=${ele.name}&value6=${ele.location}&value7=${ele.autogen}&value2=${ele.managerId}&value3=${ele.vertical}&value4=${ele.emailId}&value5=${ele.phoneNo}" class="waves-effect waves-light btn">Edit</a></td>
				
				</tr>
				
				
				
		</c:forEach>
		</table>
		</form:form>
		
		
		
		
		
		
		
	
					<%-- <table class="table table-hover" id="bootstrap-table">
						<thead>
				<tr>
			  	<th style="display:none;">pId</th>
				<th>Name</th>
				<th>Location</th>
				<th style="display:none;">Manager Id</th>
				<th>Vertical</th>
				<th>Email Id</th>
				<th>Phone</th>
				<th>Edit</th>
				</tr>
				</thead>
				<tbody>
<c:forEach var="ele" items="${dispall}">
<tr>
<td style="display:none;">
<c:out value="${ele.pId.pId}" /></td>					
<td><c:out value="${ele.name}" /></td>
<td><c:out value="${ele.location}" /></td>
<td style="display:none;"><c:out value="${ele.managerId}" /></td>
<td><c:out value="${ele.vertical}" /></td>
<td><c:out value="${ele.emailId}" /></td>
<td><c:out value="${ele.phoneNo}" /></td>
 <td><a href="modifyStudent.html?value=${ele.pId.pId}&value1=${ele.name}&value6=${ele.location}&value7=${ele.autogen}&value2=${ele.managerId}&value3=${ele.vertical}&value4=${ele.emailId}&value5=${ele.phoneNo}">Edit</a></td>
</c:forEach></tbody>
</table>
</form:form>
 --%>
	
</body>
</html>