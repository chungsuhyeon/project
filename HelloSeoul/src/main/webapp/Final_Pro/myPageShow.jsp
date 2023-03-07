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
		<div class='container-fluid'>
			<!-- tab -->
			<div class='menu col-12'>
				<ol class='breadcrumb'>
					<li class='breadcrumb-item'><a href='./myPagePlannerCreate.jsp'>Planner Modify</a></li>
					<li class='breadcrumb-item'><a href='./maPageMain.jsp'>Back</a></li>
				</ol>
			</div>
			<div class='data col-12' style="display: inline-flex;">
				<!-- tab head -->
				<div class='tabbar col-6'>
					<ul class='nav nav-tabs bg-primary' role='tablist'>
						<li class='nav-item' role='presentaion'>
							<a class='nav-link active' data-bs-toggle='tab' href='#Day1' aria-selected='true' role='tab'>Day1</a>
						</li>
						<li class='nav-item' role='presentaion'>
							<a class='nav-link' data-bs-toggle='tab' href='#Day2' aria-selected='false' role='tab'>Day2</a>
						</li>					
					</ul>
					<!-- tab contents -->
					<div id='myTabContent border border-info-1' class='tab-content'>
						<div class='tab-pane fade active show' id='Day1' role='tabpanel'>
							<table class='table table-hover'>
								<tbody>
									<tr class='table-light'>
										<td>
											<a href='#'>Location Name1</a>
											<br>
											<span>Gungu > Loc Ctg > Detail Ctg > </span>
										</td>
									</tr>
									<tr class='table-light'>
										<td>
											<a href='#'>Location Name2</a>
											<br>
											<span>Gungu > Loc Ctg > Detail Ctg > </span>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="tab-pane fade" id="Day2" role="tabpanel">
							<p>contents</p>
						</div>
					</div>
				</div>
				<div class='mapbar col-6'>
					<!-- map -->
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
			</div>
		</div>		
	</section>
</body>
</html>