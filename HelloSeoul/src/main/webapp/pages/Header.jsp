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
<c:set var="id" value="test"/>
<%-- <c:set var="id" value="test1"/> --%>
<body>
<header>
<div id='mainheading'>
<div id='logosector'><img id='logo' alt="logo" src="/web/resources/helloseoul/img/seoul_logo.png"></div>
<div id='menubar'>
	<div id="food">
	<h2><a href="#">■FOOD</a></h2>
		<div>
		<a href="#">KOREA&nbsp;&nbsp;</a>
		<a href="#">CHINA&nbsp;&nbsp;</a>
		<a href="#">JAPAN</a>
		</div>
	</div>
	<div id="shop">
	<h2><a href="#">■SHOP</a></h2>
		<div>
		<a href="#">SHOP1&nbsp;&nbsp;</a>
		<a href="#">SHOP2&nbsp;&nbsp;</a>
		<a href="#">SHOP3</a>
		</div>
	</div>
	<div id="hotspot">
	<h2><a href="#">■HOTSPOT</a></h2>
		<div>
		<a href="#">PLAYING&nbsp;&nbsp;</a>
		<a href="#">PLAYING&nbsp;&nbsp;</a>
		<a href="#">PLAYING</a>
		</div>
	</div>
	<div id="ticket">
	<h2><a href="#">■TICKET</a></h2>
	</div>
</div>
<div id='controlbutton'>
<c:if test="${id=='test'}">
<div><a href="#">LOGIN</a></div>
<div><a href="#">JOIN</a></div>
</c:if>
<c:if test="${id!='test'}">
<div><a href="#">COM</a></div>
<div><a href="#">LOGOUT</a></div>
<div><a href="#">MYPAGE</a></div>
</c:if>
</div>
</div>
</header>
</body>
</html>