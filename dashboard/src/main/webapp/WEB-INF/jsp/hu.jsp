<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" class="btn btn-info" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" class="btn btn-info" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" class="btn btn-info" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
 
<title>Insert title here</title>

<style>
div{

margin-top:30px;margin-bottom:30px;

}
img{
float:right;

width:60px;
height:60px;
}


a,h3,h5{
font-family: "Droid Sans";

color:#D9534F;
font-weight: bold !important;

}
a{font-size:18px;}
span
{
margin-top:20px;
font-family: "Droid Sans";
  font-style: normal;
color:#D9534F;
font-weight: bold !important;
font-size:15px;

}
div.divClass
{
border:1px solid #d6d4d7;
padding-left:40px;

}
textarea {
	color: #555;
	line-height: 1.5625;
	margin: 0;
	padding: 0;
	text-decoration: none;
	rows:5;
	width:100%;
}
.avatar,
.post-image {
	background-color: #f5f5f5;
	border: 1px solid #ddd;
	padding:5px;
	
}
.disabled123
{
color:transparent;
display:none;

}

</style>

 



<script>var req;var url;var responseTo;var reqObId;

function myLike(id,val){
	
	req=new XMLHttpRequest();
	url="tostorelike.html?id="+id+"&val="+val;
	
	req.onreadystatechange= getResponse1;//This implies that whenever state changes, getResponse is called.
	req.open("GET", url, true);	//Here it is calling the servlet, so this will change the state and hence call getResponse.

	req.send(null);
}
function getResponse1()
{
	
	}
function myFunction(data,data1,desc){


req=new XMLHttpRequest();
if(data1>2)
	{
	
	 url="tostorepost.html?description="+desc;
	}
else
	{
	
url="tostorecomment.html?posttosend="+data+"&description="+desc+"&type="+data1;
	}

//alert(url);	
req.onreadystatechange= getResponse;//This implies that whenever state changes, getResponse is called.
	req.open("GET", url, true);	//Here it is calling the servlet, so this will change the state and hence call getResponse.

	req.send(null);  }



function getResponse(){

	if (req.readyState==4) // if request is complete
		{
		reqObId = req.responseText;
		//alert("response"+reqObId);
		}
}
</script>
<script>
var p;var date = new Date().toString().slice(0,15);

$(this).on("load",function(e){
	
	//alert("loaded");
	p =$("#sessionId").val();
	$( "div" ).animate({
	    left: [ "+=50", "swing" ],
	    opacity: [ 1, "linear" ]
	}, 300 );
	$("img").addClass("img img-circle avatar");
	$("div:not(.container)").addClass("divClass");


$(document).on("click","a",function(){
	alert($(this).text());
	$("a").each(function() {
		
		  if ($(this).attr('id') == "ajju") {
			//  alert("u found me...."+req.responseText);
		    $(this).attr('id',req.responseText);
		  }
		});
	$("button").each(function() {
		
		  if ($(this).attr('id') == "ajju") {
			  alert("u found me...."+req.responseText);
			  $(this).attr('id',req.responseText);
		  }
		});
	if($(this).text()=="Reply")
		{
		alert("yes i m reply");
		
var toSeeParent =	$(this).parent("div");
	toSeeParent.append("<div class='kavya divClass'><textarea rows='5'></textarea><button class='btn btn-info toAccept'>post</button></div>");
	$("img").addClass("img img-circle avatar");}
});


//alert(date);
$(document).on("click","button.like",function(){
	$("a").each(function() {
		
		  if ($(this).attr('id') == "ajju") {
		//	  alert("u found me...."+req.responseText);
			  $(this).attr('id',req.responseText);
		  }
		});
	$("button").each(function() {
		
		  if ($(this).attr('id') == "ajju") {
			//  alert("u found me...."+req.responseText);
			  $(this).attr('id',req.responseText);
		  }
		});
	//alert("yes...");
	var id = $(this).attr("id");
	var val = $(this).text();
	var val1 = val.slice(0,2);
	//alert(val.slice(0,1));
	if(val.slice(0,1)==" "){		val1 = 0;}
	$(this).value = "";
	$(this).text(+(parseInt(val1)+1)+" like ");
	myLike(id,parseInt(val1));
	
	
	
});
$(document).on("click","button.toAccept",function(){
	$("a").each(function() {
		
		  if ($(this).attr('id') == "ajju") {
			  //alert("u found me...."+req.responseText);
			  $(this).attr('id',req.responseText);
		  }
		});
	$("button").each(function() {
		
		  if ($(this).attr('id') == "ajju") {
			//  alert("u found me...."+req.responseText);
			  $(this).attr('id',req.responseText);
		  }
		});
	//alert("i m not here");
var resp = $(this).parent("div").parent("div");

//alert(resp.find("a").attr("id"));
var idToSend = resp.find("a").attr("id");
var desc = resp.find("textarea").val();
var data = resp.find("a").attr("id");
var data1 = 3; 
var classToAdd = "comment";
 if(resp.find("a").hasClass("cc")&&resp.find("a").attr("id")!=undefined)
	 {
	 classToAdd = "disabled123";
	 data1 = 0;
	// alert("cc");
	 }
if(resp.find("a").hasClass("comment")&&resp.find("a").attr("id")!=undefined)
{
	//alert(resp.find("a").attr("id"));
	data1 = 1;
	classToAdd = "cc";
	
	 }
//alert(data1+"data1 that i m sendinfg");
myFunction(data,data1,desc);


	
	resp.find("a").eq(0).after("<div class='divClass'><img src='pic.html?a="+p+"' /><br/><span>You</span> says:<br/><span>"+date+"</span><p>"+resp.find("textarea").val()+"</p><button class='like btn btn-default' id='ajju' > like</button><a class="+classToAdd+" id='ajju'>Reply</a></div>");
	$("img").addClass("img img-circle avatar");$(this).parent("div:not(.jumbotron)").remove();	


});


});</script>




</head>
<body>


<input type="hidden" value="<%=session.getAttribute("pId") %>" id="sessionId" />


<%
if(request.getAttribute("dataToDisplay")!=null){%>
<div class="container" style=" max-width: 900px;">
<h3>

	<%=request.getAttribute("dataToDisplay")%>!!!!!</h3></div><%} %>

<div class="container" style=" max-width: 900px;">
<div class="jumbotron">

<h3>Ask Your Doubt</h3>

<textarea rows="5"  style="width: 100%;" style="width: 100%;" id="textarea<%=session.getAttribute("pId") %>"></textarea><br/><br/>
<!-- You 7425 for tym being... -->

<button class="btn btn-danger toAccept" id="<%=session.getAttribute("pId") %>" >Post</button>
</div>
<a></a>
</div>

<div class="container" style=" max-width: 900px;">
<div style="border:1px solid #d6d4d7;padding-left:40px;display:none;" id="added<%=session.getAttribute("pId") %>">
<img src="pic.html?a=<%=session.getAttribute("pId") %>" />

<span style="text-transform: capitalize;font-family: sans-serif;color:#D9534F;">You</span>&nbspsays:
<h5><%SimpleDateFormat sdf = new SimpleDateFormat("MMM d yyyy 'at' h:mm a");
Date d = new Date();
%><%=sdf.format(d) %></h5>





<p id="e<%=session.getAttribute("pId") %>">
</p></div></div></div>

<div style="border:1px solid #d6d4d7;padding-left:40px;display:none"; id="todisplay<%=session.getAttribute("pId") %>"></div>






<%! int k = 0,k1=0;%>
 <c:forEach items="${jsonobject.array}" var="entry" > 
 
<div class="well container" style=" max-width: 900px;">

<div style="border:1px solid #d6d4d7;padding-left:40px;">
<img src="pic.html?a=${entry.postdetails[0]}" style="float:right;"  class="avatar photo"/>

<span style="text-transform: capitalize;font-family: sans-serif;color:#D9534F;">${entry.postdetails[1]}</span>&nbspsays:

<br/><h5>${entry.postdetails[2]}</h5>



<p>${entry.postdetails[3]}</p>
<c:set var="string" value="${entry2}" ></c:set>
<fmt:parseNumber var="i" integerOnly="true" 
                       type="number" value="${entry.postdetails[4]}" />
<button class="like btn btn-default" id="${entry.postdetails[0]}"><c:if test="${i!=0}">${entry.postdetails[4]}</c:if> like

</button>
<a id="${entry.postdetails[0]}" class="comment">Reply</a>
<%-- Status........${status.index} --%>

<c:forEach items="${entry.commentarray}" var="entry2" varStatus="status"> 

 <c:set var="string" value="${entry2}" ></c:set>
 <c:choose>
 <c:when test="${fn:startsWith(string, '[')}">

<div>
<%k=1; %>
<%--  ....................... ${entry2[0]}<br/> --%>
<img src="pic.html?a=${entry2[0]}" />
 
 <span style="text-transform: capitalize;font-family: sans-serif;color:#D9534F;">${entry2[1]} </span> says:<br/>
 
<h5>${entry2[2]}</h5>


<p>${entry2[3]}</p>
<fmt:parseNumber var="i1" integerOnly="true" 
                       type="number" value="${entry2[4]}" />
<button class="like btn btn-default" id="${entry2[0]}"><c:if test="${i1!=0}">${entry2[4]}</c:if> like </button>
</div>

</c:when>
<c:otherwise>
<%k1++; %>



<%if(k1 > 5){%> 
<fmt:parseNumber var="i3" integerOnly="true" 
                       type="number" value="${p1}" />
 <button class="like btn btn-default" id="${p}"><c:if test="${i3!=0}">${p1}</c:if> like </button><a id="${p}" class="cc">Reply</a>
</div>
<% k1 = 1; k=0;}  %>
<%if(k1==1&&k==0){%><div><%} %>

<%if(k1==1){ %>    
<c:set var="p" value="${entry2}" />

<%} %>
<%if(k1==2){ %>
<img src="pic.html?a=${p}"/>
 
<span style="text-transform: capitalize;font-family: sans-serif;color:#D9534F;">${entry2} </span>says:<br/><%} %>
<%if(k1==3){ %> 
<h5>${entry2}</h5>
<!-- dont know img -->

<%} %>
<%if(k1==4){ %> 
<p>${entry2}</p><%} %>
<%if(k1==5){ %> 
<c:set var="p1" value="${entry2}" /><%} %>
</c:otherwise></c:choose>

<c:if test="${status.last}">

<%if(k1 >=5){%>


<fmt:parseNumber var="i5" integerOnly="true" 
                       type="number" value="${p1}" />

<button class="like btn btn-default" id="${p}"><c:if test="${i5!=0}">${p1}</c:if> like</button> <a id="${p}" class="cc">Reply</a> 

</div><% k1 = 1; k=0;}  %>
</c:if>

 </c:forEach>
</div>
</div><%k1=0; %></div>
</c:forEach> 
<div class="text-center">
<a  href="hello.html" id="toSendPagePrevious" onclick="previous();" style="color:#d6d4d7;" ><span style="font-size:20px;color:#d6d4d7;"><<</span></a>
<a class="btn btn-default" href="hello.html" id="toSendPage" class="text"><span style="font-size:48px;"></span></a>
<a  href="hello.html" id="toSendNext"  onclick="next();" style="color:#d6d4d7;" ><span style="font-size:20px;color:#d6d4d7;">>></span></a>
</div>
<script>
//alert(window.location.href);
var toSend = document.getElementById("toSendPage");
var valueOfPage = window.location.href.slice(-1);
if(valueOfPage=='l')
	{
	valueOfPage = 1;
//	toSendPagePrevious.className =	toSendPagePrevious.className + " disabled";
	}
	

var val = parseInt(valueOfPage)+1;
		if(val>1){
//alert(val);
toSendPage.setAttribute("href","hello.html?page="+val);
//alert(toSendPage.getAttribute("href"));
toSendPage.innerHTML = valueOfPage;
toSendPagePrevious.setAttribute("href","hello.html?page="+(parseInt(val)-2));

toSendNext.setAttribute("href","hello.html?page="+val);}
		else
			{
			alert("no more pages to display");
			}
</script>


<script>


</script>

</body>
</html>