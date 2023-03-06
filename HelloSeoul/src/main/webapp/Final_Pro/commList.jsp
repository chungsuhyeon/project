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
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script type="text/javascript">
$(function(){

</script>
<!--JS Section End -->

<!-- Style Section Begin -->
<link type="text/css" rel="stylesheet" href="/web/resources/final_style/css/bootstrap.css">
<style type="text/css">

</style>
<!-- Style Section End -->


</head>
<body>
	<header>
<%-- 	<jsp:include page="header.jsp"></jsp:include> --%>
	</header>
	<section>
	<div class="board-field"  style="margin-top: 50px">
		<div class="col-md-2"></div>
		<div class="col-md-8" ">
			<div class="board-toolbar" 	style="text-align: right; margin-bottom: 20px">

				<a href="/web/proTravel/ComWrite.jsp" class="btn btn-primary btn-sm"><i
					class="glyphicon glyphicon-pencil" style="margin-right: 15px"></i>쓰기</a>
			</div>
			<div class="list-group"  	>

				<a href="ComInfo.jsp" class="list-group-item">
					<div class="board-title">
						<span class="board-category">[ALGORITHM]</span>
							버블정렬  <span class="badge">New</span>
					</div>
					<div class="board-meta"
						style="font-weight: 400; font-size: 1.2rem; color: #404040">
						<p>
							<i class="glyphicon glyphicon-user"></i> 미립 님 <i
								class="glyphicon glyphicon-comment"></i> 0 <i
								class="glyphicon glyphicon-ok"></i> 20 <i
								class="glyphicon glyphicon-time"></i> 2016.03.31 21:55
						</p>
					</div>
				</a>
				<a href="info.jsp" class="list-group-item">
					<div class="board-title">
						<span class="board-category">[JAVASCRIPT]</span>
							스크립트 태그를 마지막에 쓰는 이유<span class="badge">New</span>
					</div>
					<div class="board-meta"
						style="font-weight: 400; font-size: 1.2rem; color: #404040">
						<p>
							<i class="glyphicon glyphicon-user"></i> 미립 님 <i
								class="glyphicon glyphicon-comment"></i> 0 <i
								class="glyphicon glyphicon-ok"></i> 20 <i
								class="glyphicon glyphicon-time"></i> 2016.03.31 21:55
						</p>
					</div>
				</a>
				<a href="info.jsp" class="list-group-item">
					<div class="board-title">
						<span class="board-category">[JAVA]</span> String
							과 StringBuffer의 차이 <span class="badge">New</span>
					</div>
					<div class="board-meta"
						style="font-weight: 400; font-size: 1.2rem; color: #404040">
						<p>
							<i class="glyphicon glyphicon-user"></i> 미립 님 <i
								class="glyphicon glyphicon-comment"></i> 0 <i
								class="glyphicon glyphicon-ok"></i> 38 <i
								class="glyphicon glyphicon-time"></i> 2016.03.31 21:55
						</p>
					</div>
				</a>
				<a href="info.jsp" class="list-group-item">
					<div class="board-title">
						<span class="board-category">[JAVA]</span> Length
							vs Length() 
					</div>
					<div class="board-meta"
						style="font-weight: 400; font-size: 1.2rem; color: #404040">
						<p>
							<i class="glyphicon glyphicon-user"></i> 미립 님 <i
								class="glyphicon glyphicon-comment"></i> 0 <i
								class="glyphicon glyphicon-ok"></i> 11 <i
								class="glyphicon glyphicon-time"></i> 2016.03.31 21:55
						</p>
					</div>
				</a>
				<a href="info.jsp" class="list-group-item">
					<div class="board-title">
						<span class="board-category">[JAVA]</span> JAVA
							8.0 함수형 프로그래밍 과 람다식 
					</div>
					<div class="board-meta"
						style="font-weight: 400; font-size: 1.2rem; color: #404040">
						<p>
							<i class="glyphicon glyphicon-user"></i> 미립 님 <i
								class="glyphicon glyphicon-comment"></i> 0 <i
								class="glyphicon glyphicon-ok"></i> 32 <i
								class="glyphicon glyphicon-time"></i> 2016.03.31 21:55
						</p>
					</div>
				</a>
				<a href="info.jsp" class="list-group-item">
					<div class="board-title">
						<span class="board-category">[DATABASE]</span>
							성능고도화의 원리 
					</div>
					<div class="board-ma href="#"eta"
						style="font-weight: 400; font-size: 1.2rem; color: #404040">
						<p>
							<i class="glyphicon glyphicon-user"></i> 미립 님 
							<i class="glyphicon glyphicon-comment"></i> 0 
							<i class="glyphicon glyphicon-ok"></i> 17 
							<i class="glyphicon glyphicon-time"></i> 2016.03.31 21:55
						</p>
					</div>
				</a>
			</div>
			<div class="col-md-2"></div>
			<div class="col-md-8" align="center">
				<ul class="pagination">
					<li><a  href="#">이전</a></li>
					<li><a href="#">1</a></li>
					<li class="active"><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">...</a></li>
					<li><a href="#">19</a></li>
					<li><a href="#">다음</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	</section>
</body>
</html>