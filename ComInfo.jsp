<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script type="text/javascript">
$(function(){
	
});
</script> 
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>

<div class="board-field">
		<div class="list-group">
			<div class="list-group-item board-title">
				<div class="board-title">
					<span class="board-category">${info.category}</span><a href="#">
						${info.title} </a> 
				</div>
				<div class="board-meta"
					style="font-weight: 400; font-size: 1.2rem; color: #404040">
					<p>
						<i class="glyphicon glyphicon-user"></i> ${info.writer}
						<i class="glyphicon glyphicon-comment"></i> 0
						<i class="glyphicon glyphicon-ok"></i> ${info.hit} 
						<i class="glyphicon glyphicon-time"></i> ${info.regdate}
					    <i class="glyphicon glyphicon-thumbs-up"></i> ${info.good}
						<i class="glyphicon glyphicon-thumbs-down"></i> ${info.bad}
					</p>
				</div>
				<div class="clear"></div>
			</div>
			<div class="list-group-item">
				<span class="board-contents"> ${info.contents} </span>
				<p style="text-align: center; margin-top: 30px">
					<button id="good" name="good" class="btn btn-success">
 					<input type="checkbox" id="goodcheck" name="goodcheck" style="display:none" >
 					<!-- style="display:none" -->
						<i class="glyphicon glyphicon-thumbs-up"></i>공감 <b id="infogood">${info.good}</b>
					<button id="bad" name="bad" class="btn btn-warning">
					<input type="checkbox" id="badcheck" name="badcheck" style="display:none">
					<!-- style="display:none" -->
						<i class="glyphicon glyphicon-thumbs-down"></i>비공감 <b id="infobad">${info.bad}</b>
					</button>
				</p>
			</div>
			<div class="bottom" style="margin: 10px;margin-top: 20px; text-align: right">
				<a href="/boarding/showBoard" class="btn btn-default btn-xs pull-left">목록으로</a> 
				<a href="/boarding/board/password.jsp?infono=${info.no}&job=modify" class="btn btn-default btn-xs">수정</a> 
				<a href="/boarding/board/password.jsp?infono=${info.no}&job=delete" target="_action_frame_bbs" class="btn btn-default btn-xs" onclick="return confirm('정말로 삭제하시겠습니까?');">삭제</a> 
				<a href="/boarding/board/write.jsp?no=${info.no}&job=reply" class="btn btn-default btn-xs">답변</a>
				<a href="#" class="btn btn-default btn-xs" id="scrap" name="scrap">스크랩</a> 
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
					<ul class="list-inline text-center">
						<li><a href="#"> <span class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-envelope-o fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li><a href="#"> <span class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-home fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li><a href="#"> <span class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-github fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
					</ul>
					<p class="copyright text-muted">Copyright &copy;2016 SIST. All
						rights reserved | code by milib</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="js/clean-blog.min.js"></script>

</body>
</html>