<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	var selectnos = 0;
	function ifchecked(i) {

		if (document.getElementById(i).checked) {
			selectnos++;
		//	alert("checked="+i+" selects="+selectnos);
		} else {
			selectnos--;
		//	alert("unchecked= "+i+" selects="+selectnos);
		}
	}
	
	
	function isSelected() {
		if(selectnos == 0)
		{
			alert("You haven't selected any trainer to delete...");
			return false;
		}
	}
</script>
</head>
<body>
	<br>
	<br>
	<form:form action="deleteTrainer.html" modelAttribute="deleteTrainer"
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
				<!-- <th>Edit</th> -->
				<th>Delete</th>
			</tr>

			<c:forEach var="ele" items="${dispall}">

				<tr>
				
				    <%-- <td><c:out value="${ele.autogen}" /></td> --%>
					<td><c:out value="${ele.pId.pId}" /></td>
					<td><c:out value="${ele.name}" /></td>
					<td><c:out value="${ele.location}" /></td>
					<td><c:out value="${ele.managerId}" /></td>
					<td><c:out value="${ele.vertical}" /></td>
					<td><c:out value="${ele.emailId}" /></td>
					<td><c:out value="${ele.phoneNo}" /></td>

					<%!int i = 0;%>
					<%-- <td><a
						href="modifyTrainer.html?value=${ele.pId.pId}&value1=${ele.name}&value6=${ele.location}&value7=${ele.autogen}&value2=${ele.managerId}&value3=${ele.vertical}&value4=${ele.emailId}&value5=${ele.phoneNo}">Edit</a></td> --%>
					<td><input type="checkbox" name="delete" value="${ele.autogen}"
						id="<%=++i%>" onclick="ifchecked(this.id)" /></td>

				</tr>


			</c:forEach>
		</table>
		<br>
		<br>
		<input type="submit" id="s1" value="Delete"
			onclick=" return isSelected()" />
	</form:form>

</body>
</html>