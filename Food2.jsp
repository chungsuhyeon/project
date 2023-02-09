<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=68fb4c87ba8765d71119fecd40096446"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css" href="/boarding/resources/travel/css/common.css">
<link rel="stylesheet" type="text/css" href="/boarding/resources/travel/css/cart.css">
<link rel="stylesheet" type="text/css" href="/boarding/resources/travel/css/art.css">

<script type="text/javascript">
$(function(){
	
});
</script> 
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<div id="text1" style="border: solid; height: 800px; width: 1300px; float: left; margin-left: 100px">
<div>
<table style="border: solid; float: left; width: 700px; height: 780px; margin-top: 10px; margin-left: 10px;;">

<tr style="border: solid;">
<td rowspan="6" style="border: solid; width: 300px;">0</td>
<td style="border: solid; width: 20%;">00</td>
<td style="border: solid;">0</td>
</tr>

<tr style="border: solid;">
<td style="border: solid;">01</td>
<td style="border: solid;">0</td>
</tr>
<tr style="border: solid;">
<td style="border: solid;">02</td>
<td style="border: solid;">0</td>
</tr>

<tr style="border: solid;">
<td style="border: solid;">03</td>
<td style="border: solid;">0</td>
</tr>

<tr style="border: solid;">
<td style="border: solid;">04</td>
<td style="border: solid;">0</td>
</tr>

<tr style="border: solid;">
<td style="border: solid;">05</td>
<td style="border: solid;">0</td>
</tr>

<tr style="border: solid;">
<td style="border: solid;" colspan="3">05</td>
</tr>

<tr style="border: solid;">
<td colspan="3" style="border: solid; height: 350px">0</td>
</tr>

</table>
</div>
<div id="map" style="width:550px;height:500px; border: solid; margin-top: 10px; float: right; margin-right: 20px"></div>
<script>
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
</script>
<div id="112334" style="border: solid; height:250px; width: 150px; float: right; margin-right: 20px; margin-top: 20px;"></div>
<div id="112334" style="border: solid; height:250px; width: 150px; float: right; margin-right: 40px; margin-top: 20px;"></div>
<div id="112334" style="border: solid; height:250px; width: 150px; float: right; margin-right: 60px; margin-top: 20px;"></div>
</div>
<div id="text2"style="border: solid; height: 800px; width: 400px; float:right; margin-right: 50px">
<input type="text">
<button style="border: solid; float: right;">검색</button>
<input type="text">
<div style="border: solid; height:610px; overflow: auto; margin-left: 5px; margin-top: 50px;">
<table style="border: solid;, width: 390px;. height: 600px; ">
<tr style="border: solid; height: 50px;">
<td style="border: solid; width: 300px;">04</td>
<td style="border: solid; width: 80px"><button>찜</button></td>
</tr>
</table>
</div>
</div>
</body>
</html>