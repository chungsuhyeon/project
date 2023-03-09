<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>플래너 보기</title>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<link rel="stylesheet" type="text/css" href="/web/resources/hellomypage/css/mypageCreate.css">
<link rel="stylesheet" href="/web/resources/helloseoul/css/headerstyle.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=68fb4c87ba8765d71119fecd40096446"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script>
	$(function(){
		$('.tabcontent > table').hide();
		$('.tabnav a').click(function () {
			$('.tabcontent > table').hide().filter(this.hash).fadeIn();;
			$('.tabnav a').removeClass('active');
			$(this).addClass('active');
			return false;
		}).filter(':eq(0)').click();
				
	});
	
	
</script>

</head>

<body class='body'>
	<!--Header Begin -->
<%-- 	<jsp:include page="Header2.jsp" ></jsp:include> --%>
 	<%@ include file="../Final_Pro/header.jsp" %>
	
	<!-- 뒤로가기 & 플래너 수정 버튼 -->
	<div class="div_buttons" align="right">
		<button onclick="location.href='MyPageMain.jsp';">뒤로가기</button>
		&nbsp;&nbsp;&nbsp;
		<button onclick="location.href='MyPagePlannerCreate.jsp';">플래너 수정</button>
	</div>
	
	<!-- header 밑 바디 -->	
	<div class="main_div">
		
		<!-- 지도 -->
		<div class='div_map' id="map"></div>
				
		<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = { 
			        center: new kakao.maps.LatLng(37.4946287, 127.0276197), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };
			
			// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
			var map = new kakao.maps.Map(mapContainer, mapOption); 
		</script>
		
		
		<!--tab-->
		<div class="tab">
			<ul class="tabnav">
				<li><a href="#tab01">day 1</a></li>
				<li><a href="#tab02">day 2</a></li>
				<li><a href="#tab03">day 3</a></li>
			</ul>
			<div id='tabcontent' class="tabcontent">
				<!-- 일정 table -->
				<table id='tab01' class="contents_table">
					<tbody>
						<tr>
							<td> 1번째 행 </td>
							<td>
								<a href="#">첫번재날 장소명</a>
								<br>
								<span style="font-size: 5px">지역 구 > 장소 카테고리 > 세부 카테고리 > </span>
							</td>
						</tr>
						<tr>
							<td> 2번째 행 </td>
							<td>
								<a href="#">첫번재날 장소명</a>
								<br>
								<span style="font-size: 5px">지역 구 > 장소 카테고리 > 세부 카테고리 > </span>
							</td>
						</tr>
					</tbody>
				</table>
				<table id='tab02' class="contents_table">
					<tbody>
						<tr>
							<td> 1번째 행 </td>
							<td>
								<a href="#">두번재날 장소명</a>
								<br>
								<span style="font-size: 5px">지역 구 > 장소 카테고리 > 세부 카테고리 > </span>
							</td>
						</tr>
					</tbody>
				</table>
				<table id='tab03' class="contents_table">
					<tbody>
						<tr>
							<td> 1번째 행 </td>
							<td>
								<a href="#">세번재날 장소명</a>
								<br>
								<span style="font-size: 5px">지역 구 > 장소 카테고리 > 세부 카테고리 > </span>
							</td>
						</tr>
					</tbody>
				</table>
				
			</div>
		</div>
		
	</div>
	

</body>
</html>
