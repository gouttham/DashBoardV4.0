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

width: 100%;

}

 .parallax-container {
      height: "1000px";
    }
</style>
</head>
<body>


<script type="text/javascript">

	
$(document).ready(function(){
	$("#page").hide();
	$("#showpage").click(function()
			{
		$("#page").stop(true,true).show("slide",{direction:"right",},750);
		$("#home").stop(true,true).hide("slide",{direction:"left",},500);

			})
			
			
			$("#showhome").click(function()
			{
		$("#page").stop(true,true).hide("slide",{direction:"right",},500);
		$("#home").stop(true,true).show("slide",{direction:"left",},750);

			})
			
			
			
			
			      $('.parallax').parallax();
	
	
	$("#tosignup").click(function(){
	
	
	 $('html, body').animate({
	        scrollTop: $("#signup").offset().top
	    }, 2000);
	 
	 
		
	})
	
	
		$("#signup").mouseenter(function(){
			$("#tosignup").css('text-decoration', 'underline','font-weight', 'bold')
		})	 
		$("#signup").mouseleave(function(){
			$("#tosignup").css('text-decoration', '','font-weight', 'bold')

		})	  

	
		
		
		
			    $('.modal-trigger').leanModal();
			  
			
			
})
</script>



<div class="container-fluid" id="page" style="text-align:left;position: absolute;">
<div class="row ">
<div class="col l12 s12 m13">
<a id="showhome" class="btn-large">Logout</a>
</div>
</div>
</div>
  





  <div class="container-fluid " id="home" style="position: absolute;">
  
  
  <div class="fixed-action-btn" style="bottom: 45px; right: 24px;">
    
    
     <a class="waves-effect waves-red btn-flat" id="tosignup" style="color:teal">Register</a>
   <a href="#modal1" class="btn-floating btn-large red waves-effect waves-light btn modal-trigger">Login</a>
   
<!-- <a id="showpage" href="#modal1" class="btn-floating btn-large red waves-effect waves-light btn modal-trigger">Login</a> -->
           
          
</div>
  
  
 <!-- Modal Trigger -->
 <!-- <a class="waves-effect waves-light btn modal-trigger" href="#modal1">Modal</a> -->

  <!-- Modal Structure -->
  <div id="modal1" class="modal">
    <div class="modal-content" style="background:#272125;text-align: center;">  
      <iframe src="LoginForm.html" width="700" height="400" target="_top" style="border:none"></iframe>
    </div>
    
    
  </div>  
  
 
  
  
  
  
  
  
  
   <header>
  <nav >
    <div style="background: OrangeRed">
        <h5 class="brand-logo" >Welcome Abode</h5>
    </div>
  </nav>
</header> 
  <div class="parallax-container" style="overflow: hidden;height:500px">
    <div class="parallax">
   <!--  <video style="width:100%" autoplay loop muted> 
    <source src="5033150.mp4" type="video/mp4">
    </video> -->
     <img src="img/b11.jpg" style="width=100%">
     
    </div>
    </div>
    
    
    
    
    <!-- <div class="section white">
    <div class="row container">
      <h2 class="header">Dashboard</h2>
      <p class="grey-text text-darken-3 lighten-3">An initiative by the  Account where Professionals can take a step towards upgrading Their Knowledge</p>
    </div>
    <div class="row container">
      <h4 class="light">Learn All You Can</h4>
      <pre class=" language-markup"><code class=" col s12 language-markup">
  <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>parallax-container<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>
    <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>parallax<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span><span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>img</span> <span class="token attr-name">src</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>images/parallax1.jpg<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span><span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span>
  <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span>
  <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>section white<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>
    <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>row container<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>
      <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>h2</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>header<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>Parallax<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>h2</span><span class="token punctuation">&gt;</span></span>
      <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>grey-text text-darken-3 lighten-3<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>Parallax is an effect where the background content or image in this case, is moved at a different speed than the foreground content while scrolling.<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
    <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span>
  <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span>
  <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>parallax-container<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>
    <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>parallax<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span><span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>img</span> <span class="token attr-name">src</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>images/parallax2.jpg<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span><span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span>
  <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span>
      </code></pre>
    </div>
  </div> -->
  <br/><br/> <br/><br/>
    <div class="container">
    <div class="section">

      <!--   Icon Section   -->
      <div class="row">
        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center light-blue-text"><i class="material-icons"><img src="iconmonstr-speech-bubble-14-icon-256-1.png" width="107" height="88" /></i></h2>
            <h5 class="center">Share & Connect </h5>

            <p class="light" style="text-align:center;">Sign In & Update your profile.
Know trainees and peers accomplish with them to be measurable. Know about things happening in academy.</p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center light-blue-text"><i class="material-icons"><img src="icon-lg-220.png"  width="107" height="88" /></i></h2>
            <h5 class="center">Access Anywhere</h5>

            <p class="light" style="text-align:center;">It is  portable – Dashboard web application runs anywhere. Deploy standalone, in an app server, on a Cloud or all of the above. </p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center light-blue-text"><i class="material-icons"><img src="505335950.jpg" width="107" height="88" /></i></h2>
            <h5 class="center">Objective</h5>

            <p class="light" style="text-align:center;">  An initiative by the Account 
where professionals can take a 
step towards improving their knowledge.</p>
          </div>
        </div>
      </div>

    </div>
    <br><br>

    <div class="section">

    </div>
  </div>
    
    
    
    
    <div class="parallax-container" style="overflow: hidden;">
    <div class="parallax">
   
     <img src="img/five_wall_color-wide.jpg" style="width=100%">
     
    </div>
    </div>
    
    
    
    
      
     <div class="section white">
  
  <!--     <h2 class="header">Parallax</h2>
      <p class="grey-text text-darken-3 lighten-3">Parallax is an effect where the background content or image in this case, is moved at a different speed than the foreground content while scrolling.</p>
    </div>
    <div class="row container">
      <h4 class="light">Parallax Demo HTML</h4>
      <pre class=" language-markup"><code class=" col s12 language-markup">
  <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>parallax-container<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>
    <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>parallax<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span><span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>img</span> <span class="token attr-name">src</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>images/parallax1.jpg<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span><span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span>
  <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span>
  <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>section white<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>
    <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>row container<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>
      <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>h2</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>header<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>Parallax<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>h2</span><span class="token punctuation">&gt;</span></span>
      <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>grey-text text-darken-3 lighten-3<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>Parallax is an effect where the background content or image in this case, is moved at a different speed than the foreground content while scrolling.<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
    <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span>
  <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span>
  <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>parallax-container<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>
    <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>parallax<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span><span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>img</span> <span class="token attr-name">src</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>images/parallax2.jpg<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span><span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span>
  <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span>
      </code></pre> -->
      


  <div class="row container">
  <h4>Apple Academy</h4>
The Apple Academy program provides unique benefits to people. The AATCE program provides the opportunity for improving their knowledge, and also provide the additional benefit of Apple Certification.
<h5>Apple Certification Ignites Careers</h5>

Apple Certification can jump start rookie futures and distinguish them as a professional-level user of Apple's professional applications. Participation in the program allows you to offer high quality training on the same professional software used every day in current television shows, films and recording studios.
AATCE Program Overview

Courses are delivered by Apple Certified Trainers who maintain Apple's highest quality standards. An AATCE incorporates Apple's curriculum into their existing, accredited curriculum and administers certification only to their enrolled students and faculty, which is considered "academic delivery." AATCEs do not deliver training or certification exams to the general public, even as part of enrichment or extension programs - that is considered "commercial delivery." Some higher education facilities may be authorized as commercial AATCs, which means they can deliver both academic and commercial courses. Acceptance as an AATCE does not guarantee acceptance into the AATC program.

    
    </div>
  </div> 
  
  
    <div id="signup" class="parallax-container" style="overflow: hidden;height:750px;">
    <div class="parallax">
   
     <img src="img/6824266-hd-background.jpg" style="width=100%;">
     
    </div>
<label style="text-align: center"><h1 style="color:OrangeRed">Sign Up</h1></label>
    <div class="container" style="height:100%">
    <object data="r2.html" style="width: 100%;height:70%;"></object>
    </div>
    
    
    </div>
    
  
    
    
    
    
    
    
    
    




</div>










</body>
</html>