<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    
 
          
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
  <script type = "text/javascript" 
         src = "http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		
      <script type = "text/javascript" 
         src = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>
         
         
             <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
  
  
  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<style type="text/css">

.container-fluid
{
position: absolute;
width: 100%;
}

 .parallax-container {
      height: "100px";
    }
</style>
</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
	$("#page").hide();
	$("#showpage").click(function()
			{
		$("#page").stop(true,true).show("slide",{direction:"right",},500);
		$("#home").stop(true,true).hide("slide",{direction:"left",},250);

			})
			
			
			$("#showhome").click(function()
			{
		$("#page").stop(true,true).hide("slide",{direction:"right",},250);
		$("#home").stop(true,true).show("slide",{direction:"left",},500);

			})
			
			
			
			
			      $('.parallax').parallax();
			   
			        
			
			
})
</script>

  





  <div class="container-fluid " id="home" style="text-align:right">
  <div class="parallax-container" style="border: solid green;height: 300px;overflow: hidden;">
    <div class="parallax">
    <video style="width:100%" autoplay loop muted> 
    <source src="5033150.mp4" type="video/mp4">
    </video>
<!--     <img src="lightbulb-shutterstock_130900220 (3).jpg" >
 -->    
    </div>
    </div>
<div class="row ">
<div  class="col l12 s12 m13">

<a id="showpage" class="btn-large">Login</a>

</div>

</div>
</div>


<div class="container-fluid" id="page" style="text-align:left;">
<div class="row ">
<div class="col l12 s12 m13">
<a id="showhome" class="btn-large">Logout</a>
</div>
</div>
</div>




</body>
</html>