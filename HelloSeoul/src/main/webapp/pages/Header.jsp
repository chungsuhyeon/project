<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<link rel="stylesheet" type="text/css" href="/web/resources/helloseoul/css/headering.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script type="text/javascript">
$(function(){
	$('#menubar>div').hover(function(){
		if($(this).children('div').css('visibility')=='visible'){
			$(this).children('div').css('visibility','hidden');
		}else{
			$(this).children('div').css('visibility','visible');
		}
	});
	$('#logo').click(function(){
		alert("go home!");
	});
});
</script> 
</head>
<body>
<header>
<div id='mainheading'>
<div id='logosector'><img id='logo' alt="logo" src="/web/resources/helloseoul/img/logo.jpg"></div>
<div id='home'><a id="homea" href="MainPage.jsp"><h2>Hello, Seoul</h2></a></div>
<div id='menubar'>
	<div id="food">
	<h2><a href="#">■food</a></h2>
		<div>
		<a href="#">korea@@</a>
		<a href="#">china</a>
		<a href="#">japan</a>
		</div>
	</div>
	<div id="shop">
	<h2><a href="#">■shop</a></h2>
		<div>
		<a href="#">shop1</a>
		<a href="#">shop2</a>
		<a href="#">shop3</a>
		</div>
	</div>
	<div id="hotspot">
	<h2><a href="#">■hotspot</a></h2>
		<div>
		<a href="#">0101</a>
		<a href="#">0202</a>
		<a href="#">0303</a>
		</div>
	</div>
	<div id="ticket">
	<h2><a href="#">■ticket</a></h2>
	</div>
</div>
<div id='controlbutton'>*
<div><a href="#">com</a></div>
<div><a href="plogin.jsp">login</a></div>
<!-- <div><a href="#">logout</a></div> -->
<!-- <div><a href="#">join</a></div> -->
<div><a href="/web/myPageLoad">mypage</a></div>
</div>
</div>
</header>
</body>
</html>