<%@page import="com.dashboard.util.AuthenticationImpl"%>
<%@page import="com.dashboard.util.Authentication"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="com.dashboard.beans.CredentialBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Logout</title>

  <script type = "text/javascript" 
         src = "http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		
      <script type = "text/javascript" 
         src = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>
         
       <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
  
         
<style type="text/css">
.jumbotron {
    margin-bottom: 0px;
    
    background-image: url(img/backg-auto.jpg);
   
    background-size: cover;
    background-repeat: no-repeat;
    color: white;
    text-shadow: grey 0.1em 0.1em 0.1em;
}
</style>

<script type="text/javascript">
$(document).ready(function(){

    $("#aa").find('span').trigger("click");
		
});
</script>
</head>
<body class="jumbotron" onload="tohome();">
<div >

<%

AuthenticationImpl authentication1=new AuthenticationImpl();

CredentialBean CredentialBean = (CredentialBean) session.getAttribute("cb");
authentication1.changeLoginStatus(CredentialBean, 0);
%>
<h2 style="color: OrangeRed;opacity:0.7">Logout Successful. See u soon. </h2>
<div style="text-align: center">
<div class="preloader-wrapper big active">
    <div class="spinner-layer spinner-red-only">
      <div class="circle-clipper left">
        <div class="circle"></div>
      </div><div class="gap-patch">
        <div class="circle"></div>
      </div><div class="circle-clipper right">
        <div class="circle"></div>
      </div>
    </div>
  </div>
 </div>
<h1 style="color:grey;text-align: right;opacity:0.6">Nothing happens <br>unless first we <h1 style="color:OrangeRed;text-align: right">DREAM...!</h1></h1>
</div>
<a id="aa" href="Index2.jsp"><span>HomePage</span></a>
</body>
</html>