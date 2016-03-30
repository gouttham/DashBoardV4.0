<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.dashboard.util.DBUtill"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AdminPage</title>


<script type = "text/javascript" 
         src = "http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		
      <script type = "text/javascript" 
         src = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>
         
         
         
         

 <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
          
<script type="text/javascript">
$(document).ready(function(){
	
    $('.scrollspy').scrollSpy();
    $('.table-of-contents').pushpin({ top: $('.table-of-contents').offset().top });

    
    $('.parallax').parallax();
  });
</script>   


 
          
</head>
<body>




<% Connection conn1 = DBUtill.getDBConnection();
PreparedStatement pre1 = conn1.prepareStatement("select * from newdb.db_profile where pId='"+session.getAttribute("pId")+"'");
ResultSet rs1=pre1.executeQuery();
rs1.next();

%>
 <div class="parallax-container" style="overflow: hidden;height:200px">
    <div class="parallax">

     <img src="img2/hd-background-13.jpg" style="width=100%">
     
    </div>
    
    <div style="color:OrangeRed">
    <h5>Welcome&nbsp&nbsp<%=rs1.getString("name") %></h5>
    </div>
    
    <div class="row" style="padding-top: 7%">
   <div class="table-of-contents col l12" style="background: Tan;padding-top: 10px;padding-bottom: 10px;opacity:0.7 ">
   
        <a class="col " href="#Home">Home</a>
        <a class="col " href="#View_Students">View Students</a>
        <a class="col " href="#View_Trainers">View Trainers</a>
        <a class="col " href="#View_Scheduled_Interview">View Scheduled Interview</a>
        <a class="col " href="#Authorize_Access">Authorize Access</a>
        <a class="col " href="#Add_Skills">Add Skills</a>


    </div>
</div>
    
    
    </div>



 

    
               
                    <a href="#">
                        Admin Id:&nbsp<%=session.getAttribute("pId") %>
                    </a>
              

<div class="row">

    <div class="col s12 m10 l10" style="text-align: center;width:100%;border: solid red"> 
    
    <div id="Home" class="section scrollspy" >
        <p>Home </p>
       <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
       
      </div>   
      
      
      <div id="View_Students" class="section scrollspy" >
      			
							    <div class="parallax-container" style="overflow: hidden;height:100px">
							    <div class="parallax">
							
							     <img src="img2/hd-background-13.jpg" style="width=100%">
							     
							    </div>
							            <h5>View_Students </h5>
							    </div>
							<iframe src="ViewStudents.html" style="width:80%;height: 600px;align:center;border: none;"></iframe>
	
      </div>
      
      
      
      
      
      
        
      
      
      
         <div id="View_Trainers" class="section scrollspy" >
      			
							    <div class="parallax-container" style="overflow: hidden;height:100px">
							    <div class="parallax">
							
							     <img src="img2/hd-background-13.jpg" style="width=100%">
							     
							    </div>
							            <h5>View_Trainers </h5>
							    </div>
				            <iframe src="ViewTrainers.html" style="width:80%;height: 600px;align:center;border: none;padding-top: -20px"></iframe>
					
      </div>
      
      


   <div id="View_Scheduled_Interview" class="section scrollspy" >
      			
							    <div class="parallax-container" style="overflow: hidden;height:100px">
							    <div class="parallax">
							
							     <img src="img2/hd-background-13.jpg" style="width=100%">
							     
							    </div>
							            <h5>View_Scheduled_Interview</h5>
							    </div>
				            <iframe src="ViewScheduledInterview.html" style="width:80%;height: 600px;align:center;border: none;padding-top: -20px"></iframe>
					
      </div>
      
      
    
      
    
      
      
        <div id="Authorize_Access" class="section scrollspy" >
      			
							    <div class="parallax-container" style="overflow: hidden;height:100px">
							    <div class="parallax">
							
							     <img src="img2/hd-background-13.jpg" style="width=100%">
							     
							    </div>
							            <h5>Authorize_Access</h5>
							    </div>
				            <iframe src="authorizeaccess.html" style="width:80%;height: 600px;align:center;border: none;padding-top: -20px"></iframe>
					
      </div>
      
      
      
        <div id="Add_Skills" class="section scrollspy" >
      			
							    <div class="parallax-container" style="overflow: hidden;height:100px">
							    <div class="parallax">
							
							     <img src="img2/hd-background-13.jpg" style="width=100%">
							     
							    </div>
							            <h5>Add_Skills</h5>
							    </div>
				            <iframe src="addskill.html" style="width:80%;height: 600px;align:center;border: none;padding-top: -20px"></iframe>
					
      </div>
      
       
    </div>
  
  </div>
   
    
    
    
    
</body>
</html>