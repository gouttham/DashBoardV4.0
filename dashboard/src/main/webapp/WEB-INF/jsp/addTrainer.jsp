<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> Enter the details for the trainer</h1>


<form:form action="addTrainer.html" modelAttribute="addTrainer"
		name="f1">
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<table align="center" cellspacing="4" cellpadding="15">

			<tr>
				<td colspan="3">Enter Id for the Trainer</td>
				<td><form:input path="pId" /></td>
				<td><form:errors path="pId" /></td>
			</tr>
			<tr>
				<td colspan="3">Enter default password for the trainer</td>
				<td><form:input path="password" id = "pass"/></td>
				<td><form:errors path="password" /></td>
			</tr>
			<tr>
				<td colspan="3">Enter type (t for trainer)</td>
				<td><form:input path="type" id = "type"/></td>
				<td><form:errors path="type" /></td>
			</tr>
			
			<tr>
				<td colspan="3">UpdatedOn</td>
				<td><form:input path="updatedOn" id = "updatedOn"/></td>
				<td><form:errors path="updatedOn" /></td>
			</tr>
			
			<tr>
				<td colspan="3">Updated By</td>
				<td><form:input path="updatedBy" id = "updatedBy"/></td>
				<td><form:errors path="updatedBy" /></td>
			</tr>
			
			<tr>

				<td colspan="3" align="center"></td>
				<td colspan="3">
					<input type="submit" id="s" value="Add" onclick="return checkCapacity()"/>
				</td>
				<td></td>
			</tr>
		</table>
	</form:form>
</body>
</html>