<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.text.DateFormat"%>
    <%@page import="java.text.SimpleDateFormat"%>
    <%@page import="java.util.Date" %>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Modify</title>

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
</head>
<body>
<form:form action="modifyStudent.html" modelAttribute="modifyStudent" name="f1">
<%DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy"); %>
<%Date date1 = new Date(); %>


<script type="text/javascript">
	function checkCapacity() {
		var pno = document.f1.phoneNo.value;
		var email = document.f1.emailId.value;
		if(email.indexOf(".")==0 || email.indexOf(".")==email.length-1 || email.indexOf("@")==email.length-1 || email.indexOf("@")==0 )
			{
			
			   alert("Enter valid email id");
			   return false;
			}
		if(isNaN(pno) )
		{
			alert('Entered value is not a number');
			return false;
		}
	}
</script>









	
 <table class="responsive-table highlight" >
  
   <tr>
    <td colspan="2">Enter Id</td>
    <td><input type="text" name="pid" value='<%= request.getParameter("value") %>' readOnly="readonly"/></td> 
    <%request.setAttribute("pid",request.getParameter("value"));%>
   
    <%System.out.println("in jsp "+request.getAttribute("pid")); %>
    </tr>
    
    <tr>
    <!-- <td colspan="2">Enter Autoid </td> -->
    <td><form:input type="hidden" path="autogen" value='<%= request.getParameter("value7") %>' readOnly="true"/></td>
   </tr>
   
   <tr>
    <td colspan="2">Enter name </td>
    <td><form:input path="name" value='<%= request.getParameter("value1") %>'/></td>
   </tr>
   
   <tr>
    <td colspan="2">Enter Location </td>
    <td><form:input path="location" value='<%= request.getParameter("value6") %>'/></td>
   </tr>
   <tr>
    <td colspan="2">Enter manager Id</td>
     <td><form:input path="managerId" value='<%= request.getParameter("value2") %>'/></td>
   </tr>
   
   <tr>
    <td colspan="2">Enter vertical</td>
    <td><form:input path="vertical" value='<%= request.getParameter("value3") %>'/></td>
   </tr>
   
    <tr>
    <td colspan="2">Enter EmailId</td>
    <td><form:input path="emailId" id="email" value='<%= request.getParameter("value4") %>'/></td>
   </tr>
   
   <tr>
    <td colspan="2">Enter phoneNo</td>
    <td><form:input path="phoneNo" id="pno" value='<%= request.getParameter("value5") %>'/></td>
   </tr>
    
   <tr>
   <td></td>
     <td colspan="2" align="center"><input class="waves-effect waves-light btn" type="submit" id="s12" value="Modify" onclick="return checkCapacity()"/></td>
     </tr>
   </table>
   </form:form>
   
    
</body>
</html>