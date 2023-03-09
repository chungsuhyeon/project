<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC >
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<title>Start Simple Web</title>

<!-- Bootstrap Core CSS -->
<link href="/web/resources/comcss/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="/web/resources/comcss/css/clean-blog.css" rel="stylesheet">
<link href="/web/resources/comcss/css/board.css" rel="stylesheet">
<link href="/web/resources/helloseoul/css/headering.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="/web/resources/comcss/css/rss.css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<script type="text/javascript">
	$(function() {
		$("textarea#reply_contents").focus(function() {
			$("textarea#reply_contents").val("");
		});
		$("textarea#reply_contents").keyup(
				function() {
					$("span#replybyte").text(
							$("textarea#reply_contents").val().length);
				});
		$("input#reply_Submit")
				.click(
						function() {
							$.ajax({type : 'POST',
								    url : '/web/replyInsert',
									data : {
									reply : $("textarea").val(),
									no : $("input#com_no").val(),
									id : $("input#user_id").val()
									},
									dataType : 'json',
									success : function(p) {
										$('div#replyboard>div').remove();
									$(p).each(function(index, x) {
										$("div#replyboard").append('<div class="list_cmt"><div class="cmt_head"></div><div class="cmt_body"><span class="info_append"><span class="txt_name">'
																	+ x['user_nick']
																	+ '<span class="txt_bar">|</span><span class="txt_time">'
																	+ x['rep_regdate']
																	+ '</span></span><p class="txt_desc">'
																	+ x['rep_cont']
																	+ '</p></div><div class="cmt_foot">'
																	+ '<a href="#none">답글</a><span class="txt_bar">|</span><a href="#none">수정</a><span class="txt_bar">|</span><a href="#none">삭제</a><span class="txt_bar">|</span><a href="#none">신고</a></div></div>'
																	);

																$(Object.keys(x)).each(function(j,key){
																	console.log(key+ " "+ x[key]);
																	});
															});
										},
										error : function() {
											console.log("error");
										}

									});

						});
		//-----------------------------------------------------------------ajax--------------------------------------------------------------------------------------------------
		$("button#good").click(function(){
					$("button#good").html("<i class='glyphicon glyphicon-thumbs-up'></i>공감");
			$.ajax({
				type : 'POST',
			    url : '/web/goodAction',
				data:{com_no:$("input#com_no").val(),user_id:$("input#user_id").val()},
				dataType : 'text',
				success : function(p) {
					$("button#good").append(p);
					},
				error:function(){
					console.log("error");
				}
				
			});
		});
		
		
	});
</script>
<jsp:include page="Header.jsp"></jsp:include>
</head>
<body topmargin="250" style="margin-right: 150px:">



	<!-- Page Header -->
	<!-- Set your background image for this header on the line below. -->


	<div class="board-field" style="margin-top: 100px">
		<div class="list-group">
			<div class="list-group-item-board-title">
				<div class="board-title" style="border: 1px ridge;">

					<c:forEach items="${info }" var="i">
						<input type="hidden" id="com_no" name="com_no"
							value="${i.com_no }">
						<input type="hidden" id="user_id" name="user_id"
							value="${user_id }">
						<span class="board-category">[<c:choose>

								<c:when test="${i.com_ctg eq 1}">정보공유</c:when>
								<c:when test="${i.com_ctg eq 2}">후기</c:when>
								<c:otherwise>동행모집</c:otherwise>

							</c:choose>]
						</span>
						<a href="#"> ${i.com_title } </a>

						<div class="board-meta"
							style="font-weight: 400; font-size: 1.2rem; color: #404040">
							<p>
								<i class="glyphicon glyphicon-user"></i> ${i.user_nick } 님 <i
									class="glyphicon glyphicon-comment"></i> ${i.reply } <i
									class="glyphicon glyphicon-ok"></i>${i.com_hit } <i
									class="glyphicon glyphicon-time"></i> ${i.com_regdate } <i
									class="glyphicon glyphicon-thumbs-up"></i> 0 <i
									class="glyphicon glyphicon-thumbs-down"></i> 0
							</p>
						</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="list-group-item" style="height: 400px;">
				<span class="board-contents" style="width: 100%; height: 1000px;">
					${i.com_cont } </span>

			</div>
			<div class="bottom"
				style="margin: 10px; margin-top: 20px; text-align: right; border: 2px ridge;">
				<p style="text-align: center; margin-top: 30px">
					<button class="btn btn-success" id="good" >
						<i class="glyphicon glyphicon-thumbs-up"></i>공감 
					</button>
					<button class="btn btn-warning" id="bad">
						<i class="glyphicon glyphicon-thumbs-down"></i>비공감
					</button>

				</p>
				<a href="#" class="btn btn-default btn-xs pull-left">목록으로</a> <a
					href="/web/modifyAction?no=${i.com_no }&user_id=${user_id}"
					class="btn btn-default btn-xs">수정</a> <a
					href="/web/deleteCom?no=${i.com_no }&user_id=${user_id}"
					target="_action_frame_bbs" class="btn btn-default btn-xs"
					onclick="return confirm('정말로 삭제하시겠습니까?');">삭제</a> <a href="#"
					class="btn btn-default btn-xs">답변</a> <a href="#"
					class="btn btn-default btn-xs">스크랩</a>
				</c:forEach>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="cmt_comm">
		<form action="#">
			<fieldset class="fld_cmt">
				<legend class="screen_out">댓글 작성</legend>
				<textarea class="tf_cmt" cols="90" rows="5" title="한줄 토크를 달아주세요"
					id="reply_contents" name="reply_contents">한줄 토크를 달아주세요! (300자)</textarea>
				<!-- <button type="submit" class="img_sample btn_cmt">등록</button> -->
				<input type="button" value="등록" name="reply_Submit"
					id="reply_Submit"
					style="position:; top: 50px; width: 100px; height: 54px;">
				<p class="info_append">
					<span class="screen_out">입력된 바이트 수 : </span> <span class="txt_byte"
						id="replybyte" name="replybyte">0</span> / 300자 <span
						class="txt_bar">|</span> <a href="#none">댓글 운영원칙</a>
				</p>
			</fieldset>
		</form>
		<strong class="screen_out">전체 댓글</strong>
		<div id="replyboard">
			<c:forEach items="${reply }" var="i">
				<div class="list_cmt">
					<div class="cmt_head"></div>
					<div class="cmt_body">
						<span class="info_append"> <span class="txt_name">${i.user_nick }</span>
							<span class="txt_bar">|</span> <span class="txt_time">${i.rep_regdate }
						</span>
						</span>
						<p class="txt_desc">${i.rep_cont }</p>
					</div>
					<div class="cmt_foot">
						<a href="#none">답글</a><span class="txt_bar">|</span><a
							href="/web/replyMo">수정</a><span class="txt_bar">|</span><a href="/web/deleteReplyMain?no=${i.rep_no }&boardno=${i.com_no}&user_id=${user_id}"  >삭제</a><span
							class="txt_bar">|</span><a href="#none">신고</a>
					</div>
				</div>
		</c:forEach>
		</div>
		<!-- 		/--------------------------------------------->

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
		<!-- 	<!-- jQuery -->
		<!-- 	<script src="js/jquery.js"></script> -->

		<!-- 	<!-- Bootstrap Core JavaScript -->
		<!-- 	<script src="js/bootstrap.min.js"></script> -->

		<!-- 	<!-- Custom Theme JavaScript -->
		<!-- 	<script src="js/clean-blog.min.js"></script> -->
</body>

</html>
