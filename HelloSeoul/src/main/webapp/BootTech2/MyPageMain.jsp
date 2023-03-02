<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 메인</title>

<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=68fb4c87ba8765d71119fecd40096446"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="/boarding/resources/travel/css/common.css">
<link rel="stylesheet" type="text/css" href="/boarding/resources/travel/css/cart.css">
<link rel="stylesheet" type="text/css" href="/boarding/resources/travel/css/art.css">
<link rel="stylesheet" type="text/css" href="/web/resources/hellomypage/css/PagingStyle.css">

<script type="text/javascript">
	$(function(){
		
	});
</script> 

<style type="text/css">	
 	div {
		border: 1px solid;
	}
	
	.div_infomation {
		height: 100px;
		padding:10px;
		margin-top: 10px;
	}
	

	.planner_list {
		display: inline-block;
		height: 400px;
		width: 400px;
		border: 1px solid;
		padding: 10px;
	}
/* 	
	table {
	    margin-left:auto; 
	    margin-right:auto;
	}
*/

	.pagination {
	    clear: both;
	    position: relative;
	    margin: 30px auto 40px 0;
	    padding: 0;
	    text-align: center;
	}
	
	nav {
		display: block;
		outline: none;
	}
	
	/* pagination */
	.pagination {
		clear:both; 
		position:relative; 
		margin:30px auto 40px 0; 
		padding:0; 
		text-align:center;
	}
	
	.pagination:last-child {
		padding-bottom:0;
	}
	
	.pagination a, .pagination strong, .pagination .control {
		overflow:hidden; 
		display:inline-block; 
		position:relative; 
		min-width:32px; 
		height:32px; 
		margin:0 2px; 
		padding:0 2px; 
		line-height:31px; 
		border:1px solid #fff; 
		text-decoration:none; 
		color:#666; 
		font-weight:400; 
		vertical-align:middle; 
		border-radius:0;
	}
	
	.pagination .active {
		color:#2775c4; 
		border-color:#3671c8;
	}
	
	.pagination a:hover {
	border-color:#2775c4;
	}
	
	.pagination .control {
		overflow:hidden; 
		width:32px; 
		height:32px; 
		min-width:0; 
		padding:0; 
		border:1px solid #ccc; 
		font-size:0; 
		line-height:0; 
		text-indent:-9999px; 
		background:url('/web/resources/btn-pagination.png') no-repeat 0 0;
	}
	
	.pagination .control.disabled {
		cursor:default;
	}
	
	.pagination .control.first {
		margin:0; 
		background-position:0 0;
	}
	
	.pagination .control.prev {
		margin:0 6px 0 0; 
		background-position:-30px 0;
	}
	
	.pagination .control.next {
		margin:0 0 0 6px; 
		background-position:-60px 0;
	}
	
	.pagination .control.last {
		margin:0;
		background-position:-90px 0;
	}

</style>

</head>

<body>
	<jsp:include page="Header.jsp"></jsp:include>

	<div style="margin-left: 100px; margin-right: 100px; margin-top: 50px;">

		<!-- 회원정보 div -->
		<div class='div_infomation' id="text1">
			<div id='nickName' style="height: 75px; width: 33%; float:left;"> 닉네임 님</div>
			<div id='nickName' style="height: 75px; width: 66%; float:right;"> 회원정보 관련 내용</div>
		</div>
		
		<!-- 플래너 생성 버튼 및 찜 보기 버튼 -->
		<div align="right" style="hight:10px; width: 100%; margin-top:50px; margin-left:auto; margin-right:auto;">
			<a href="MypageJjim.jsp">찜 보기</a>
			&nbsp;&nbsp;&nbsp;
			<a href="MyPagedreate.jsp?userId=#">일정 생성</a>
		</div>
		
		
		<!-- 플래너 리스트 -->
		<div style="width: 98%; padding: 10px; justify-content: space-between; margin-top: 30px;">
			<button class="planner_list" onclick="location.href='MyPageShow.jsp';">
				<i>
					플래너 title 1 <br/>
					여행 지역 <br/>
					여행 시작날짜 ~ 끝날짜 <br/>
					디데이 계산
				</i>
			</button>
			<button class="planner_list" onclick="location.href='MyPageShow.jsp';">
				<i>
					플래너 title 2 <br/>
					여행 지역 <br/>
					여행 시작날짜 ~ 끝날짜 <br/>
					디데이 계산
				</i>
			</button>
			<button class="planner_list" onclick="location.href='MyPageShow.jsp';">
				<i>
					플래너 title 3 <br/>
					여행 지역 <br/>
					여행 시작날짜 ~ 끝날짜 <br/>
					디데이 계산
				</i>
			</button>
			<button class="planner_list" onclick="location.href='MyPageShow.jsp';">
				<i>
					플래너 title 4 <br/>
					여행 지역 <br/>
					여행 시작날짜 ~ 끝날짜 <br/>
					디데이 계산
				</i>
			</button>
		</div>
<!-- 		
		<table>
			<tbody>
				<tr>
					<td>
						<button class="planner_list" onclick="">
							<i>
								플래너 title 1 <br/>
								여행 지역 <br/>
								여행 시작날짜 ~ 끝날짜 <br/>
								디데이 계산
							</i>
						</button>
					</td>
					<td>
						<button class="planner_list" onclick="">
							<i>
								플래너 title 1 <br/>
								여행 지역 <br/>
								여행 시작날짜 ~ 끝날짜 <br/>
								디데이 계산
							</i>
						</button>
					</td>
					<td>
						<button class="planner_list" onclick="">
							<i>
								플래너 title 1 <br/>
								여행 지역 <br/>
								여행 시작날짜 ~ 끝날짜 <br/>
								디데이 계산
							</i>
						</button>
					</td>
					<td>
						<button class="planner_list" onclick="">
							<i>
								플래너 title 1 <br/>
								여행 지역 <br/>
								여행 시작날짜 ~ 끝날짜 <br/>
								디데이 계산
							</i>
						</button>
					</td>
				</tr>
			</tbody>
		
		</table>
 -->		
		<!-- 페이징 -->	
<!-- 		
	 	<div class="container xlarge" style="margin-top: 50px; align-content: center;">
			<ul>
				<li><a href="#">이전</a></li>
				<li><a href="#">1</a></li>
				<li class="active"><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">...</a></li>
				<li><a href="#">10</a></li>
				<li><a href="#">다음</a></li>
			</ul>
		</div>
	 -->	
		
		
		<nav class="pagination">
			<a href="#" onclick="updatePage(1); return false;" class="control first">처음 페이지</a>
			<a href="#" onclick="updatePage(1); return false;" class="control prev">이전 페이지</a>
			<a href="#" onclick="updatePage(1); return false;">1</a>
			<strong class="active">2</strong>
			<a href="#" onclick="updatePage(3); return false;">3</a>
			<a href="#" onclick="updatePage(4); return false;">4</a>
			<a href="#" onclick="updatePage(5); return false;">5</a>
			<a href="#" onclick="updatePage(6); return false;">6</a>
			<a href="#" onclick="updatePage(7); return false;">7</a>
			<a href="#" onclick="updatePage(8); return false;">8</a>
			<a href="#" onclick="updatePage(9); return false;">9</a>
			<a href="#" onclick="updatePage(10); return false;">10</a>
			<a href="#" onclick="updatePage(11); return false;" class="control next">다음 페이지</a>
			<a href="#" onclick="updatePage(1841); return false;" class="control last">마지막 페이지</a>
		</nav>
		
		
	</div>
	
</body>
</html>