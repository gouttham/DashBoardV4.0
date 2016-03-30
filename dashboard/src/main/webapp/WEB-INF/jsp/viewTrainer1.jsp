<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form action="viewTrainer1.html" modelAttribute="viewTrainer1"
		align="center">
		<table align=center cellspacing="2" cellpadding="10" border="2">

			<tr>
			  <!--  <th>Auto</th> -->
				<th>pId</th>
				<th>name</th>
				<th>Location</th>
				<th>managerId</th>
				<th>vertical</th>
				<th>emailId</th>
				<th>Phone</th>
				<th>Edit</th>
				</tr>
				
<c:forEach var="ele" items="${dispall}">
<tr>
<td>
<c:out value="${ele.pId.pId}" /></td>					
<td><c:out value="${ele.name}" /></td>
<td><c:out value="${ele.location}" /></td>
<td><c:out value="${ele.managerId}" /></td>
<td><c:out value="${ele.vertical}" /></td>
<td><c:out value="${ele.emailId}" /></td>
<td><c:out value="${ele.phoneNo}" /></td>
 <td><a href="modifyTrainer.html?value=${ele.pId.pId}&value1=${ele.name}&value6=${ele.location}&value7=${ele.autogen}&value2=${ele.managerId}&value3=${ele.vertical}&value4=${ele.emailId}&value5=${ele.phoneNo}">Edit</a></td>
</c:forEach>
</table>
</form:form>
</body>
</html>