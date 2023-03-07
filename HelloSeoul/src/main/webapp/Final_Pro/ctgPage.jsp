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
	
});
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
			<div class='tbtab' style="width:60%; margin-top: 10px; margin-left: 10px;">
				<table class='table table-hover'>
					<tbody>
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
						<tr class="table-primary" style="border: solid;">
							<td style="border: solid;" colspan="3" id="shit">장소정보</td>
						</tr>
						<tr style="border: solid;">
							<td colspan="3" style="border: solid; height: 350px">세부정보 및 세부 사진</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class='textdetail' style="display: block; width: 40%;">
			<div class='mapping'>
			<div id="map" style="width:550px;height:500px; border: solid; margin-top: 10px; float: right; margin-right: 20px"></div>
<script>
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
		</script>
			</div>
			<div class='hotlist'>
			<div id="112334" style="border: solid; height:250px; width: 150px; float: right; margin-right: 20px; margin-top: 20px;">추천1</div>
			<div id="112334" style="border: solid; height:250px; width: 150px; float: right; margin-right: 40px; margin-top: 20px;">추천2</div>
			<div id="112334" style="border: solid; height:250px; width: 150px; float: right; margin-right: 60px; margin-top: 20px;">추천3</div>
			</div>
			
			</div>
		</div>
		
<div class="text2"style="border: solid; height: 800px; width: 20%; float:right;">
<select id='locctg'>
<option value="choose">지역</option>
<option value='kannam0'>kang1</option>
<option value='kannam1'>kang2</option>
</select>
<select id='detailctg'>
<option value="choose">세부카테고리</option>
<option value='koera'>korea</option>
<option value='china'>china</option>
</select>
<button id='search' style="border: solid; float: right;">검색</button>
<input id='query' type="text">
<div style="border: solid; height:610px; overflow: auto; margin-left: 5px; margin-top: 50px;">
<table id='list0' style="border: solid;, width: 390px;. height: 600px; ">
<tr>
<th>장소명</th>
<th>찜</th>
</tr>
<c:forEach var='i' begin="0" end="5" varStatus="cnt">
<tr style="border: solid; height: 50px;">
<td id='locname' style="border: solid; width: 300px;">${i}장소이름</td>
<td style="border: solid; width: 80px">
<input type="checkbox" name="zzim" value="${cnt.count }">
</td>
</tr>
</c:forEach>
</table>
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
</div>
<button id='zzimcom'>저장</button>
</div>
	
	</div>
	</section>
</body>
</html>