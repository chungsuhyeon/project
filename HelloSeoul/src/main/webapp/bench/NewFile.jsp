<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html>
<html>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>simpleMap</title>
		<script	src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<script src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=Ju05MDjH0r6uM74roaM9o7rwMSRwI0vi6M7QZtTW"></script>
		<script type="text/javascript">

var map;
var marker_s, marekr_e;

//경로그림정보
var drawInfoArr = [];


function initTmap(){
	// 1. 지도 띄우기
	map = new Tmapv2.Map("map_div", {
		center: new Tmapv2.LatLng(37.56701114710962, 126.9973611831669),
		width : "100%",
		height : "400px",
		zoom : 15,
		zoomControl : true,
		scrollwheel : true
	});
	
	// 시작, 도착 심볼찍기
	// 시작
	marker_s = new Tmapv2.Marker({
		position : new Tmapv2.LatLng(37.568085523663385, 126.98605733268329),
		icon : "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_r_m_s.png",
		iconSize : new Tmapv2.Size(24, 38),
		map:map
	});
	
	// 도착 
	marker_e = new Tmapv2.Marker({
		position : new Tmapv2.LatLng(37.56445848334345, 127.00973587385866),
		icon : "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_r_m_e.png",
		iconSize : new Tmapv2.Size(24, 38),
		map:map
	});
	
	marker = new Tmapv2.Marker({
		position : new Tmapv2.LatLng(37.56626352138058, 126.98735015742581),
		icon : "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_b_m_1.png",
		iconSize : new Tmapv2.Size(24, 38),
		map:map
	});
	
	marker = new Tmapv2.Marker({
		position : new Tmapv2.LatLng(37.56568310756034, 127.00221495976581),
		icon : "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_b_m_2.png",
		iconSize : new Tmapv2.Size(24, 38),
		map:map
	});
	
	marker = new Tmapv2.Marker({
		position : new Tmapv2.LatLng(37.570369, 126.992153),
		icon : "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_b_m_3.png",
		iconSize : new Tmapv2.Size(24, 38),
		map:map
	});
	
	marker = new Tmapv2.Marker({
		position : new Tmapv2.LatLng(37.56335290252303, 127.00352387777271),
		icon : "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_b_m_4.png",
		iconSize : new Tmapv2.Size(24, 38),
		map:map
	});
	
	marker = new Tmapv2.Marker({
		position : new Tmapv2.LatLng(37.570721714117965, 127.00186090818215),
		icon : "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_b_m_5.png",
		iconSize : new Tmapv2.Size(24, 38),
		map:map
	});
	
	marker = new Tmapv2.Marker({
		position : new Tmapv2.LatLng(37.56515390827723, 126.99066536776698),
		icon : "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_b_m_6.png",
		iconSize : new Tmapv2.Size(24, 38),
		map:map
	});
	
	var headers = {}; 
	headers["appKey"]="Ju05MDjH0r6uM74roaM9o7rwMSRwI0vi6M7QZtTW";
	
	$.ajax({
		type:"POST",
		headers : headers,
		url:"https://apis.openapi.sk.com/tmap/routes/routeOptimization30?version=1&format=json",//
		async:false,
		contentType: "application/json",
		data: JSON.stringify({
				  "reqCoordType": "WGS84GEO",
				  "resCoordType" : "EPSG3857",
				  "startName": "출발",
				  "startX": "126.98605733268329",
				  "startY": "37.568085523663385",
				  "startTime": "201711121314",
				  "endName": "도착",
				  "endX": "127.00973587385866",
				  "endY": "37.56445848334345",
				  "searchOption" : "0",
				  "viaPoints": [
				    {
				      "viaPointId": "test01",
				      "viaPointName": "test01",
				      "viaX": "126.98735015742581",
				      "viaY": "37.56626352138058",
				    },
				    {
				      "viaPointId": "test02",
				      "viaPointName": "test02",
				      "viaX": "127.00221495976581",
				      "viaY": "37.56568310756034",
				    },
				    {
				      "viaPointId": "test03",
				      "viaPointName": "test03",
				      "viaX": "126.992153",
				      "viaY": "37.570369",
				    },
				    {
				      "viaPointId": "test04",
				      "viaPointName": "test04",
				      "viaX": "127.00352387777271",
				      "viaY": "37.56335290252303",
				    },
				    {
				      "viaPointId": "test05",
				      "viaPointName": "test05",
				      "viaX": "127.00186090818215",
				      "viaY": "37.570721714117965",
				    },
				    {
				      "viaPointId": "test06",
				      "viaPointName": "test06",
				      "viaX": "126.99066536776698", 
				      "viaY": "37.56515390827723",
				    }
				  ]
		}),
		success:function(response){
			var resultData = response.properties;
			var resultFeatures = response.features;
			
			// 결과 출력
			var tDistance = "총 거리 : " + (resultData.totalDistance/1000).toFixed(1) + "km,  ";
			var tTime = "총 시간 : " + (resultData.totalTime/60).toFixed(0) + "분,  ";
			var tFare = "총 요금 : " + resultData.totalFare + "원";
			
			$("#result").text(tDistance+tTime+tFare);
			
			for(var i in resultFeatures) {
				var geometry = resultFeatures[i].geometry;
				var properties = resultFeatures[i].properties;
				var polyline_;
				
				drawInfoArr = [];
				
				if(geometry.type == "LineString") {
					for(var j in geometry.coordinates){
						// 경로들의 결과값(구간)들을 포인트 객체로 변환 
						var latlng = new Tmapv2.Point(geometry.coordinates[j][0], geometry.coordinates[j][1]);
						// 포인트 객체를 받아 좌표값으로 변환
						var convertPoint = new Tmapv2.Projection.convertEPSG3857ToWGS84GEO(latlng);
						// 포인트객체의 정보로 좌표값 변환 객체로 저장
						var convertChange = new Tmapv2.LatLng(convertPoint._lat, convertPoint._lng);
						
						drawInfoArr.push(convertChange);
					}

					polyline_ = new Tmapv2.Polyline({
						path : drawInfoArr,
						strokeColor : "#FF0000",
						strokeWeight: 6,
						map : map
					});
				}
			}
		},
		error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}	
	

</script>
<body onload="initTmap()"><!-- 맵 생성 실행 -->
	<p id="result"></p>

		
		<div id="map_wrap" class="map_wrap">
			<div id="map_div"></div>
		</div>
	</body>
</html>	