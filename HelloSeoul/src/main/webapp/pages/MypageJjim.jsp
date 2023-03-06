<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찜 페이지</title>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<link rel="stylesheet" type="text/css" href="/web/resources/hellomypage/css/mypageCreate.css">

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=68fb4c87ba8765d71119fecd40096446"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<style type="text/css">
	.detail_info {
	   	height:870px;
		padding:10px;
		flex-shrink: 1;
		margin: 0px 1%;
		border: 1px solid #ddd;
		flex:1;
   }
      
   .jjim_list{
	   	width: 100%;
	   	height: 800px;
	   	border: 1px solid #ddd;
   }

</style>

<script>
	$(function(){
		$('.tabcontent > table').hide();
		$('.tabnav a').click(function () {
			$('.tabcontent > table').hide().filter(this.hash).fadeIn();
			$('.tabnav a').removeClass('active');
			$(this).addClass('active');
			return false;
		}).filter(':eq(0)').click();
		
	});
	
	
	$('document').ready(function(){
		$.ajax({
			url: '/web/ajaxMypageJjim',
			type: 'post',
			data: {user_id:'${user_id}'},
			dataType: 'json',
			contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
			success: function(result){
				console.log(result);
			},
			error: function(){
				alert("error : " + error);
			}
		}); // ajax
	});
	
	
</script>

</head>

<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<!-- 뒤로가기 & 플래너 수정 버튼 -->
	<div class="div_buttons" align="right">
		<button onclick="location.href='MyPageMain.jsp';">뒤로가기</button>
	</div>
	
	<!-- 메인 플래너 내용 -->	
	<div class="main_div">
		
		
		<!--tab-->
		<div class="tab">
			<ul class="tabnav">
				<li><a href="#tab01">음식점</a></li>
				<li><a href="#tab02">관광지</a></li>
				<li><a href="#tab03">쇼핑</a></li>
				<li><a href="#tab04">볼거리</a></li>
				<li><a href="#tab05">티켓팅</a></li>
			</ul>
			<div class="table_set">
				<!-- table div -->
				<div class="tabcontent">
					<!-- 일정 table -->
					<table id='tab01' class="contents_table">
						<tbody>
							<tr>
								<td><input type="checkbox" name="select_location" value="장소코드1"></td>
								<td>
									<a href="#">음식점 찜 장소 명</a>
									<br>
									<span style="font-size: 5px">지역 구 > 장소 카테고리 > 세부 카테고리 > </span>
								</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="select_location" value="장소코드2"></td>
								<td>
									<a href="#">음식점 찜 장소 명</a>
									<br>
									<span style="font-size: 5px">지역 구 > 장소 카테고리 > 세부 카테고리 > </span>
								</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="select_location" value="장소코드3"></td>
								<td>
									<a href="#">음식점 찜 장소 명</a>
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
								<td><a>두번째날 장소명</a></td>
								<td> 세번째 열 </td>
							</tr>
						</tbody>
					</table>
					<table id='tab03' class="contents_table">
						<tbody>
							<tr>
								<td> 1번째 행 </td>
								<td><a>세번째날 장소명</a></td>
								<td> 세번째 열 </td>
							</tr>
						</tbody>
					</table>
				
				</div>
			</div>
			
			<div align="right" style="margin: 20px; width:95%; border: 1px solid #ddd">
				<button class="create_planner_button" onclick="">찜 삭제</button>
			</div>
		</div>
		
		<!-- 상세정보 -->
		<div class="detail_info">
			<table style="margin: 20px; width:95%; border: 1px solid #ddd; align-content: center;">
				<tbody>
					<tr>
						<td>
							<img src="/web/resources/hellomypage/img/buliding.png" width="100%" height="200">
						</td>
					</tr>
					<tr>
						<td>
							<span style="font-size: 40px;">장소 명</span>
						</td>
					</tr>
					<tr>
						<td>
							<span style="font-size: 10px;">장소 카테고리 > 세부 카테고리</span>
						</td>
					</tr>
					<tr>
						<td>
							<span style="font-size: 20px;">장소 주소</span>
						</td>
					</tr>
					<tr>
						<td>
							<span style="font-size: 20px;">시작 시간</span>
						</td>						
					</tr>
					<tr>
						<td>
							<span style="font-size: 20px;">종료 시작</span>
						</td>						
					</tr>
					<tr>
						<td>
							<span style="font-size: 20px;">장소 정보</span>							
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		
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
		
	</div>
	

</body>
</html>
