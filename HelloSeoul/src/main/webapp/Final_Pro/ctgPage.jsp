<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Icon Error Begin-->
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<!-- Icon Error End-->

<title>Hello, Seoul</title>

<!--JS Section Begin -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=68fb4c87ba8765d71119fecd40096446"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script type="text/javascript">
$(function(){
	
	$("#search").click(function(){
 		if($('#locctg').val()=='choose'||$('#detailctg').val()=='choose'||$('#query').val().length==0){
 		alert('?');
 		return false;
 		}else{
 			$.ajax({
 				type : 'post',
 				url : '/web/searchFood',
 				data : {
 					'loc_sg':$('#locctg').val(),
 					'loc_ctg2':$('#detailctg').val(),
 					'query':$('#query').val()},
 				dataType : 'json',
 				success : function(r){
 					$("#tablebd>tr").remove();
 					for(var x=0; x<r.length;x++){
 						console.log(r[x].loc_addr);
 						
 						$("#tablebd").append(
 						`<tr class='table-info' style="border: solid; height: 50px;">
 						<td id='locname' style="border: solid; width: 300px;">\${r[x].loc_name}</td>
 						<td style="border: solid; width: 80px">
 						<input type="checkbox" name="zzim" value=\${r[x].loc_pc}>
 						</td>
 						</tr>`
 						);
 						}
 					
 					$(function(){
 						$('tr #locname').click(function(){
 							alert($(this).text());
 							var sel = $(this).text();
 	 						for(var x=0; x<r.length;x++){
 	 							if(r[x].loc_name==sel){
 	 								var loc = r[x];
 	 							}
 	 						}
 	 						
 	 						//
 	 						
							//마커가 표시될 위치입니다 
							var markerPosition  = new kakao.maps.LatLng(37.561597, 126.9885794); 

							//마커를 생성합니다
							var marker = new kakao.maps.Marker({
							position: markerPosition
							});

							//마커가 지도 위에 표시되도록 설정합니다
							map.setCenter(markerPosition);
							marker.setMap(map);
	
							//아래 코드는 지도 위의 마커를 제거하는 코드입니다
							//marker.setMap(null);
 	 						
 	 						//
 	 						
 						
 							$('#tabab').html(
 									`<table class='table table-hover'>
 									<tbody>
 										<tr style="border: solid;">
 											<td rowspan="6" style="border: solid; width: 300px;">장소사진</td>
 											<td style="border: solid; width: 20%;">장소명</td>
 											<td style="border: solid;">\${loc.loc_name}</td>
 										</tr>
 										<tr style="border: solid;">
 											<td style="border: solid;">세부 카테고리</td>
 											<td style="border: solid;">\${loc.loc_ctg2}</td>
 										</tr>
 										<tr style="border: solid;">
 											<td style="border: solid;">장소주소</td>
 											<td style="border: solid;">\${loc.loc_addr}</td>
 										</tr>
 										<tr style="border: solid;">
 											<td style="border: solid;">영업시간</td>
 											<td style="border: solid;">\${loc.loc_op} ~ \${loc.loc_cl}</td>
 										</tr>
 										<tr style="border: solid;">
 											<td style="border: solid;">전화번호</td>
 											<td style="border: solid;">\${loc.loc_tel}</td>
 										</tr>
 										<tr style="border: solid;">
 											<td style="border: solid;">기타</td>
 											<td style="border: solid;">\${loc.loc_sg}</td>
 										</tr>
 										<tr class="table-primary" style="border: solid;">
 											<td style="border: solid;" colspan="3" id="shit">장소정보</td>
 										</tr>
 										<tr style="border: solid;">
 											<td colspan="3" style="border: solid; height: 350px">\${loc.loc_info}</td>
 										</tr>
 									</tbody>
 								</table>`		
 							);
 							
 						});
 					});
 				},
 				error : function(x){
 					alert("Error!");
 				}
 			});
 			//$('#폼아이디').submit();
 		}
	});
	
	$('#zzimcom').click(function(){
		$("input[name='zzim']").each(function(){
			if($(this).prop("checked")){
				alert($(this).val());
			}
		});
	});
	
	ajaxProcess();
	
	
	
	
});//loadFunction
function ajaxProcess(){
	$.ajax({
		type:'post',
		url:'/web/showMainDb',
		dataType:'json',
		success : function(r){
			for(var x=0; x<r.length;x++){
				console.log(r[x].loc_addr);
				
				$("#tablebd").append(
				`<tr class='table-info' style="border: solid; height: 50px;">
				<td id='locname' style="border: solid; width: 300px;">\${r[x].loc_name}</td>
				<td style="border: solid; width: 80px">
				<input type="checkbox" name="zzim" value=\${r[x].loc_pc}>
				</td>
				</tr>`
				);
				}
				$(function(){
					$('tr #locname').click(function(){
						alert($(this).text());
						var sel = $(this).text();
 						for(var x=0; x<r.length;x++){
 							if(r[x].loc_name==sel){
 								var loc = r[x];
 							}
 						}
 						//
	 						
						//마커가 표시될 위치입니다 
						var markerPosition  = new kakao.maps.LatLng(37.561597, 126.9885794); 

						//마커를 생성합니다
						var marker = new kakao.maps.Marker({
						position: markerPosition
						});

						//마커가 지도 위에 표시되도록 설정합니다
						map.setCenter(markerPosition);
						marker.setMap(map);

						//아래 코드는 지도 위의 마커를 제거하는 코드입니다
						//marker.setMap(null);
	 						
	 						//
						
						$('#tabab').html(
								`<table class='table table-hover'>
								<tbody>
									<tr style="border: solid;">
										<td rowspan="6" style="border: solid; width: 300px;">장소사진</td>
										<td style="border: solid; width: 20%;">장소명</td>
										<td style="border: solid;">\${loc.loc_name}</td>
									</tr>
									<tr style="border: solid;">
										<td style="border: solid;">세부 카테고리</td>
										<td style="border: solid;">\${loc.loc_ctg2}</td>
									</tr>
									<tr style="border: solid;">
										<td style="border: solid;">장소주소</td>
										<td style="border: solid;">\${loc.loc_addr}</td>
									</tr>
									<tr style="border: solid;">
										<td style="border: solid;">영업시간</td>
										<td style="border: solid;">\${loc.loc_op} ~ \${loc.loc_cl}</td>
									</tr>
									<tr style="border: solid;">
										<td style="border: solid;">전화번호</td>
										<td style="border: solid;">\${loc.loc_tel}</td>
									</tr>
									<tr style="border: solid;">
										<td style="border: solid;">기타</td>
										<td style="border: solid;">\${loc.loc_sg}</td>
									</tr>
									<tr class="table-primary" style="border: solid;">
										<td style="border: solid;" colspan="3" id="shit">장소정보</td>
									</tr>
									<tr style="border: solid;">
										<td colspan="3" style="border: solid; height: 350px">\${loc.loc_info}</td>
									</tr>
								</tbody>
							</table>`		
						);
						
					});
				});
				
		},
		error : function(x){
			console.log(x);
		}
	});
}
</script>
<!--JS Section End -->

<!-- Style Section Begin -->
<link type="text/css" rel="stylesheet" href="/web/resources/final_style/css/flatly_bootstrap.css">
<style type="text/css">

</style>
<!-- Style Section End -->


</head>
<body>
	<header>
	<jsp:include page="header.jsp"></jsp:include>
	</header>
	<section>
	<div class='container-fluid' style="margin-top: 10px; display: inline-flex;">
		<div class="text1" style="border: solid; width: 80%; display:inline-flex;">
			<div class='tbtab' id="tabab" style="width:60%; margin-top: 10px; margin-left: 10px;">
				<table class='table table-hover'>
								<tbody>
									<tr style="border: solid;">
										<td rowspan="6" style="border: solid; width: 300px;">장소사진</td>
										<td style="border: solid; width: 20%;">장소명</td>
										<td style="border: solid;"></td>
									</tr>
									<tr style="border: solid;">
										<td style="border: solid;">세부 카테고리</td>
										<td style="border: solid;"></td>
									</tr>
									<tr style="border: solid;">
										<td style="border: solid;">장소주소</td>
										<td style="border: solid;"></td>
									</tr>
									<tr style="border: solid;">
										<td style="border: solid;">영업시간</td>
										<td style="border: solid;"></td>
									</tr>
									<tr style="border: solid;">
										<td style="border: solid;">전화번호</td>
										<td style="border: solid;"></td>
									</tr>
									<tr style="border: solid;">
										<td style="border: solid;">기타</td>
										<td style="border: solid;"></td>
									</tr>
									<tr class="table-primary" style="border: solid;">
										<td style="border: solid;" colspan="3" id="shit">장소정보</td>
									</tr>
									<tr style="border: solid;">
										<td colspan="3" style="border: solid; height: 350px"></td>
									</tr>
								</tbody>
							</table>
			</div>
			<div class='textdetail' style="display: block; width: 40%;">
			<div class='mapping'>
			<div id="map" style="width:550px;height:500px; border: solid; margin-top: 10px; float: right; margin-right: 20px"></div>
			</div>
			<div class='hotlist'>
			<div id="112334" style="border: solid; height:250px; width: 150px; float: right; margin-right: 20px; margin-top: 20px;">추천1</div>
			<div id="112334" style="border: solid; height:250px; width: 150px; float: right; margin-right: 40px; margin-top: 20px;">추천2</div>
			<div id="112334" style="border: solid; height:250px; width: 150px; float: right; margin-right: 60px; margin-top: 20px;">추천3</div>
			</div>
			
			</div>
		</div>
		
<div class="text2"style="border: solid; height: 800px; width: 20%; float:right;">
<select class='form-select' id='locctg'>
<option value="choose">지역</option>
<option value='gangnam'>gangnam</option>
<option value='gangbok'>gangbok</option>
</select>
<select class='form-select' id='detailctg'>
<option value="choose">세부카테고리</option>
<option value='korean'>korean</option>
<option value='japan'>japan</option>
</select>
<button id='search' style="border: solid; float: right;">검색</button>
<input id='query' type="text">
<div style="border: solid; height:610px; overflow: auto; margin-left: 5px; margin-top: 50px;">
<table class='table table-hover' id='list0' style="border: solid;, width: 390px;. height: 600px; ">
<thead>
<tr class='table-primary'>
<th>장소명</th>
<th>찜</th>
</tr>
</thead>
<tbody id="tablebd">

</tbody>
</table>
<script type="text/javascript">
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(34.450701, 127.570667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커가 표시될 위치입니다 
//var markerPosition  = new kakao.maps.LatLng(37.561597, 126.9885794); 

//마커를 생성합니다
//var marker = new kakao.maps.Marker({
//position: markerPosition
//});

//마커가 지도 위에 표시되도록 설정합니다
//map.setCenter(markerPosition);
//marker.setMap(map);

//아래 코드는 지도 위의 마커를 제거하는 코드입니다
//marker.setMap(null); 
</script>
</div>
<button id='zzimcom'>저장</button>
</div>
	
	</div>
	</section>
</body>
</html>