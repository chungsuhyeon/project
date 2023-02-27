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

<!-- <link rel="stylesheet" type="text/css" href="/boarding/resources/travel/css/common.css"> -->


<script type="text/javascript">
$(function(){

});
</script> 
</head>
<jsp:include page="Header.jsp"></jsp:include>
<body>
<body>
<div id="text1" style="border: solid; height: 800px; width: 1300px; float: left; margin-left: 300px">
<div>
<table style="border: solid; float: left; width: 700px; height: 780px; margin-top: 10px; margin-left: 10px;;">

<tr style="border: solid;">
<td rowspan="6" style="border: solid; width: 300px;">장소사진</td>
<td style="border: solid; width: 20%;">장소명</td>
<td style="border: solid;">비트아카데미</td>
</tr>

<tr style="border: solid;">
<td style="border: solid;">세부 카테고리</td>
<td style="border: solid;">한식</td>
</tr>
<tr style="border: solid;">
<td style="border: solid;">장소주소</td>
<td style="border: solid;">강남</td>
</tr>
<tr style="border: solid;">
<td style="border: solid;">영업시간</td>
<td style="border: solid;">00:00~23:00</td>
</tr>

<tr style="border: solid;">
<td style="border: solid;">전화번호</td>
<td style="border: solid;">010-1234-1232</td>
</tr>

<tr style="border: solid;">
<td style="border: solid;">기타</td>
<td style="border: solid;">기타</td>
</tr>

<tr style="border: solid;">
<td style="border: solid;" colspan="3">장소정보</td>
</tr>

<tr style="border: solid;">
<td colspan="3" style="border: solid; height: 350px">세부정보 및 세부 사진</td>
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
<div id="112334" style="border: solid; height:250px; width: 150px; float: right; margin-right: 20px; margin-top: 20px;">추천1</div>
<div id="112334" style="border: solid; height:250px; width: 150px; float: right; margin-right: 40px; margin-top: 20px;">추천2</div>
<div id="112334" style="border: solid; height:250px; width: 150px; float: right; margin-right: 60px; margin-top: 20px;">추천3</div>
</div>
<script type="text/javascript">

//지도를 클릭했을때 클릭한 위치에 마커를 추가하도록 지도에 클릭이벤트를 등록합니다
//kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
//   // 클릭한 위치에 마커를 표시합니다 
//   addMarker(mouseEvent.latLng);             
//});

//지도에 표시된 마커 객체를 가지고 있을 배열입니다
var markers = [];

//마커 하나를 지도위에 표시합니다 
//addMarker(new kakao.maps.LatLng(33.450701, 126.570667));

//마커를 생성하고 지도위에 표시하는 함수입니다

//가게 정보 클릭했을때 지도에 표시하는 함수입니다.
$(function(){
	$('tr #locname').click(function(){
		alert('!!');
		addMarker(new kakao.maps.LatLng(33.450701, 126.570667));
	});
});

function addMarker(position) {
  
  // 마커를 생성합니다
  var marker = new kakao.maps.Marker({
      position: position
  });

  // 마커가 지도 위에 표시되도록 설정합니다
  marker.setMap(map);
  
  // 생성된 마커를 배열에 추가합니다
  markers.push(marker);

}

//배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
function setMarkers(map) {
  for (var i = 0; i < markers.length; i++) {
      markers[i].setMap(map);
  }            
}
</script>
</body>
</html>