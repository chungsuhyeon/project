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
	
});
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
	<jsp:include page="header.jsp"></jsp:include>
	</header>
	<section>
	<div class="board-field" style="margin-top: 100px">
		<div class="list-group" >		
			<div class="list-group-item-board-title">
				<div class="board-title" style="border:1px ridge ;" >
					<span class="board-category">[CTG001]</span><a href="#">Title </a> 
					<div class="board-meta" style="font-weight: 400; font-size: 1.2rem; color: #404040" >
						<p>
							<i class="glyphicon glyphicon-user"></i> 미립 님 
							<i class="glyphicon glyphicon-comment"></i> 0
							<i class="glyphicon glyphicon-ok"></i> 20 
							<i class="glyphicon glyphicon-time"></i> 2016.03.31 21:55
					    	<i class="glyphicon glyphicon-thumbs-up"></i> 0
							<i class="glyphicon glyphicon-thumbs-down"></i> 0
						</p>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="list-group-item" style="height: 400px;">
				<div>
					<span class="board-contents" style="width:100%; height:1000px;" > 글의 정보가 나오는 곳. </span>
				</div>
			</div>
			<div class="bottom" style="margin: 10px;margin-top: 20px; text-align: right;">
				<p style="text-align: center; margin-top: 30px">
					<button class="btn btn-success">
						<i class="glyphicon glyphicon-thumbs-up"></i>공감
					</button>
					<button class="btn btn-warning">
						<i class="glyphicon glyphicon-thumbs-down"></i>비공감
					</button>
				</p>
				<a href="#" class="btn btn-outline-primary">목록으로</a> 
				<a href="#" class="btn btn-outline-primary">수정</a> 
				<a href="#" target="_action_frame_bbs" class="btn btn-outline-primary" onclick="return confirm('정말로 삭제하시겠습니까?');">삭제</a> 
				<a href="#" class="btn btn-outline-primary">답변</a>
				<a href="#" class="btn btn-outline-primary">스크랩</a> 
			</div>
			<div class="clear"></div>
		</div>
		<strong class="screen_out">전체 댓글</strong>
		<div class="list_cmt">
			<div class="cmt_head"></div>
				<div class="cmt_body">
					<span class="info_append">
						<span class="txt_name">글쓴이</span>
						<span class="txt_bar">|</span>
						<span class="txt_time">2023.01.01 14:22</span>
					</span>
				<p class="txt_desc">
				댓글 내용이 나오는 곳...댓글댓글 내용이 나오는 곳...댓글 내용이 나오는 곳...댓글 내용이 나오는 곳...
				</p>
				</div>
			<div class="cmt_foot">
			<a href="#none">답글</a><span class="txt_bar">|</span><a href="#none">수정</a><span class="txt_bar">|</span><a href="#none">삭제</a><span class="txt_bar">|</span><a href="#none">신고</a>
			</div>
		</div>
	</div>
	</section>
</body>
</html>