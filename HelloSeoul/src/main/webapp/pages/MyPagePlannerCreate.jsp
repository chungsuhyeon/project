<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>플래너 생성</title>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<link rel="stylesheet" type="text/css" href="/web/resources/hellomypage/css/mypageCreate.css">

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=68fb4c87ba8765d71119fecd40096446"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<script>
	$(function(){
		$('.tabcontent > table').hide();
		$('.tabnav a').click(function () {
			$('.tabcontent > table').hide().filter(this.hash).fadeIn();
			$('.tabnav a').removeClass('active');
			$(this).addClass('active');
			return false;
		}).filter(':eq(0)').click();
		
		$('.jjim_foot_button').click(function(){
			var locDataArr = new Array();
			var checkBox = $("input[name='select_location']:checked");
			
			checkBox.each(function(i){
				var checkTr = checkBox.parent().parent().eq(i);
				var checkTd = checkTr.children().eq(1); // 장소코드있는 td
				
				locDataArr.push(checkTd.children().val());
			}); // checkBox.each
			
			alert(locDataArr);
		});
		
		
// 		// table의 행 순서 변경
// 		var ordered_items;
//         onDragClass: "drag",
//         $('#table_1').tableDnD({
//             onDrop: function(table, row) {
//                 ordered_items = $.tableDnD.serialize('id');

//                 if(ordered_items){
//                     $.get("./delivery_order_update.php?"+ordered_items, function(data){
//                         alert("순서가 변경되었습니다.");
//                     });
//                 }
//             }
//         });
		
	});
	
// 	$(document).ready(function() {  
//         $("#table-1").tableDnD();  
//     });  
	
</script>

</head>

<body>
	<jsp:include page="Header.jsp"></jsp:include>
	
	<!-- 뒤로가기 & 플래너 수정 버튼 -->
	<div class="div_buttons" align="right">
		<button onclick="location.href='MyPagedreate.jsp;'">날짜 재설정</button>
		&nbsp;&nbsp;&nbsp;
		<button onclick="location.href='MyPageMain.jsp';">뒤로가기</button>
	</div>
	
	<!-- title -->
	<div class="div_title">
		<span style="font-size: 25px">TITLE :</span> 
		<input id="title" type="text" style="width: 30%; height: 30px; font-size: 25px">
	</div>
	
	<!-- 메인 플래너 내용 -->	
	<div class="main_div">
		
		<!--tab-->
		<div class="tab">
			<ul class="tabnav">
				<li><a href="#tab01">day 1</a></li>
				<li><a href="#tab02">day 2</a></li>
				<li><a href="#tab03">day 3</a></li>
			</ul>
			<div class="table_set">
				<!-- table div -->
				<div class="tabcontent">
					<!-- 일정 table -->
					<table id='tab01' class="contents_table">
						<tbody>
							<tr>
								<td style="width: 190px">
									<select name="time">
										<option value="00">00:00</option>
										<option value="01">01:00</option>
										<option value="02">02:00</option>
										<option value="03">03:00</option>
										<option value="04">04:00</option>
										<option value="05">05:00</option>
										<option value="06">06:00</option>
										<option value="07">07:00</option>
										<option value="08">08:00</option>
										<option value="09">09:00</option>
										<option value="10">10:00</option>
										<option value="11">11:00</option>
										<option value="12">12:00</option>
										<option value="13">13:00</option>
										<option value="14">14:00</option>
										<option value="15">15:00</option>
										<option value="16">16:00</option>
										<option value="17">17:00</option>
										<option value="18">18:00</option>
										<option value="19">19:00</option>
										<option value="20">20:00</option>
										<option value="21">21:00</option>
										<option value="22">22:00</option>
										<option value="23">23:00</option>
										<option value="24">24:00</option>
									</select>
									<span> ~ </span>
									<select name="time">
										<option value="00">00:00</option>
										<option value="01">01:00</option>
										<option value="02">02:00</option>
										<option value="03">03:00</option>
										<option value="04">04:00</option>
										<option value="05">05:00</option>
										<option value="06">06:00</option>
										<option value="07">07:00</option>
										<option value="08">08:00</option>
										<option value="09">09:00</option>
										<option value="10">10:00</option>
										<option value="11">11:00</option>
										<option value="12">12:00</option>
										<option value="13">13:00</option>
										<option value="14">14:00</option>
										<option value="15">15:00</option>
										<option value="16">16:00</option>
										<option value="17">17:00</option>
										<option value="18">18:00</option>
										<option value="19">19:00</option>
										<option value="20">20:00</option>
										<option value="21">21:00</option>
										<option value="22">22:00</option>
										<option value="23">23:00</option>
										<option value="24">24:00</option>
									</select>
								</td>
								<td>
									<span>첫번재날 장소명</span>
									<br>
									<span style="font-size: 5px">지역 구 > 장소 카테고리 > 세부 카테고리 > </span>
								</td>
							</tr>
							<tr>
								<td style="width: 190px">
									<select name="time">
										<option value="00">00:00</option>
										<option value="01">01:00</option>
										<option value="02">02:00</option>
										<option value="03">03:00</option>
										<option value="04">04:00</option>
										<option value="05">05:00</option>
										<option value="06">06:00</option>
										<option value="07">07:00</option>
										<option value="08">08:00</option>
										<option value="09">09:00</option>
										<option value="10">10:00</option>
										<option value="11">11:00</option>
										<option value="12">12:00</option>
										<option value="13">13:00</option>
										<option value="14">14:00</option>
										<option value="15">15:00</option>
										<option value="16">16:00</option>
										<option value="17">17:00</option>
										<option value="18">18:00</option>
										<option value="19">19:00</option>
										<option value="20">20:00</option>
										<option value="21">21:00</option>
										<option value="22">22:00</option>
										<option value="23">23:00</option>
										<option value="24">24:00</option>
									</select>
									<span> ~ </span>
									<select name="time">
										<option value="00">00:00</option>
										<option value="01">01:00</option>
										<option value="02">02:00</option>
										<option value="03">03:00</option>
										<option value="04">04:00</option>
										<option value="05">05:00</option>
										<option value="06">06:00</option>
										<option value="07">07:00</option>
										<option value="08">08:00</option>
										<option value="09">09:00</option>
										<option value="10">10:00</option>
										<option value="11">11:00</option>
										<option value="12">12:00</option>
										<option value="13">13:00</option>
										<option value="14">14:00</option>
										<option value="15">15:00</option>
										<option value="16">16:00</option>
										<option value="17">17:00</option>
										<option value="18">18:00</option>
										<option value="19">19:00</option>
										<option value="20">20:00</option>
										<option value="21">21:00</option>
										<option value="22">22:00</option>
										<option value="23">23:00</option>
										<option value="24">24:00</option>
									</select>
								</td>
								<td>
									<span>첫번재날 장소명</span>
									<br>
									<span style="font-size: 5px">지역 구 > 장소 카테고리 > 세부 카테고리 > </span>
								</td>
							</tr>
						</tbody>
					</table>
					<table id='tab02' class="contents_table">
						<tbody>
							<tr>
								<td style="width: 190px">
									<select name="time">
										<option value="00">00:00</option>
										<option value="01">01:00</option>
										<option value="02">02:00</option>
										<option value="03">03:00</option>
										<option value="04">04:00</option>
										<option value="05">05:00</option>
										<option value="06">06:00</option>
										<option value="07">07:00</option>
										<option value="08">08:00</option>
										<option value="09">09:00</option>
										<option value="10">10:00</option>
										<option value="11">11:00</option>
										<option value="12">12:00</option>
										<option value="13">13:00</option>
										<option value="14">14:00</option>
										<option value="15">15:00</option>
										<option value="16">16:00</option>
										<option value="17">17:00</option>
										<option value="18">18:00</option>
										<option value="19">19:00</option>
										<option value="20">20:00</option>
										<option value="21">21:00</option>
										<option value="22">22:00</option>
										<option value="23">23:00</option>
										<option value="24">24:00</option>
									</select>
									<span> ~ </span>
									<select name="time">
										<option value="00">00:00</option>
										<option value="01">01:00</option>
										<option value="02">02:00</option>
										<option value="03">03:00</option>
										<option value="04">04:00</option>
										<option value="05">05:00</option>
										<option value="06">06:00</option>
										<option value="07">07:00</option>
										<option value="08">08:00</option>
										<option value="09">09:00</option>
										<option value="10">10:00</option>
										<option value="11">11:00</option>
										<option value="12">12:00</option>
										<option value="13">13:00</option>
										<option value="14">14:00</option>
										<option value="15">15:00</option>
										<option value="16">16:00</option>
										<option value="17">17:00</option>
										<option value="18">18:00</option>
										<option value="19">19:00</option>
										<option value="20">20:00</option>
										<option value="21">21:00</option>
										<option value="22">22:00</option>
										<option value="23">23:00</option>
										<option value="24">24:00</option>
									</select>
								</td>
								<td>
									<span>두번재날 장소명</span>
									<br>
									<span style="font-size: 5px">지역 구 > 장소 카테고리 > 세부 카테고리 > </span>
								</td>
							</tr>
						</tbody>
					</table>
					<table id='tab03' class="contents_table">
						<tbody>
							<tr>
								<td style="width: 190px">
									<select name="time">
										<option value="00">00:00</option>
										<option value="01">01:00</option>
										<option value="02">02:00</option>
										<option value="03">03:00</option>
										<option value="04">04:00</option>
										<option value="05">05:00</option>
										<option value="06">06:00</option>
										<option value="07">07:00</option>
										<option value="08">08:00</option>
										<option value="09">09:00</option>
										<option value="10">10:00</option>
										<option value="11">11:00</option>
										<option value="12">12:00</option>
										<option value="13">13:00</option>
										<option value="14">14:00</option>
										<option value="15">15:00</option>
										<option value="16">16:00</option>
										<option value="17">17:00</option>
										<option value="18">18:00</option>
										<option value="19">19:00</option>
										<option value="20">20:00</option>
										<option value="21">21:00</option>
										<option value="22">22:00</option>
										<option value="23">23:00</option>
										<option value="24">24:00</option>
									</select>
									<span> ~ </span>
									<select name="time">
										<option value="00">00:00</option>
										<option value="01">01:00</option>
										<option value="02">02:00</option>
										<option value="03">03:00</option>
										<option value="04">04:00</option>
										<option value="05">05:00</option>
										<option value="06">06:00</option>
										<option value="07">07:00</option>
										<option value="08">08:00</option>
										<option value="09">09:00</option>
										<option value="10">10:00</option>
										<option value="11">11:00</option>
										<option value="12">12:00</option>
										<option value="13">13:00</option>
										<option value="14">14:00</option>
										<option value="15">15:00</option>
										<option value="16">16:00</option>
										<option value="17">17:00</option>
										<option value="18">18:00</option>
										<option value="19">19:00</option>
										<option value="20">20:00</option>
										<option value="21">21:00</option>
										<option value="22">22:00</option>
										<option value="23">23:00</option>
										<option value="24">24:00</option>
									</select>
								</td>
								<td>
									<span>세번재날 장소명</span>
									<br>
									<span style="font-size: 5px">지역 구 > 장소 카테고리 > 세부 카테고리 > </span>
								</td>
							</tr>
						</tbody>
					</table>
				
				</div>
				
				<div align="right" style="margin: 20px; width:95%; border: 1px solid #ddd">
					<button onclick="location.href='MyPagedreate.jsp;'">일정 제거</button>
					&nbsp;&nbsp;&nbsp;
					<button class="create_planner_button" onclick="location.href='MyPageShow.jsp;'">플래너 저장</button>
				</div>
				
			</div>
		</div>
		
		<!-- 찜목록 -->
		<div class="jjim_table">
			<div class="jjim_list">
				<table style="margin: 20px; width:95%; border: 1px solid #ddd;">
					<tbody>
						<tr>
							<td><input type="checkbox" name="select_location" value="장소코드1"></td>
							<td>
								<span>1번 찜 장소</span>
								<br>
								<span style="font-size: 5px">지역 구 > 장소 카테고리 > 세부 카테고리 > </span>
							</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="select_location" value="장소코드2"></td>
							<td>
								<span>2번 찜 장소</span>
								<br>
								<span style="font-size: 5px">지역 구 > 장소 카테고리 > 세부 카테고리 > </span>
							</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="select_location" value="장소코드3"></td>
							<td>
								<span>3번 찜 장소</span>
								<br>
								<span style="font-size: 5px">지역 구 > 장소 카테고리 > 세부 카테고리 > </span>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<div class="jjim_foot_button" align="right">			
				<button onclick="">일정에 추가</button>
			</div>
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
