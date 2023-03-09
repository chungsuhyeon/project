<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC >
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Start Simple Web</title>
<!-- Bootstrap Core CSS -->
<link href="/web/resources/comcss/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="/web/resources/comcss/css/clean-blog.css" rel="stylesheet">
<link href="/web/resources/comcss/css/board.css" rel="stylesheet">

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

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

<jsp:include page="header.jsp"></jsp:include>


	<!-- Page Header -->
	<!-- Set your background image for this header on the line below. -->
	
	<div class="board-field"  style="margin-top: 50px">
		<div class="col-md-2"></div>
		<div class="col-md-8" ">
			<div class="board-toolbar" 	style="text-align: right; margin-bottom: 20px">

				<a href="/web/Final_Pro/ComWrite.jsp" class="btn btn-primary btn-sm"><i
					class="glyphicon glyphicon-pencil" style="margin-right: 15px"></i>쓰기</a>
			</div>
			
			
			<div class="list-group"  	>
			<c:forEach items="${board }" var="i">
				
				<a href="/web/infoSelect?no=${i.com_no }" class="list-group-item">
				
					<div class="board-title">
						<span class="board-category">[
						<c:choose>
						<c:when test="${i.com_ctg eq 1}">정보공유</c:when>
						<c:when test="${i.com_ctg eq 2}">후기</c:when>
						<c:otherwise>동행모집</c:otherwise>
						
						</c:choose>
						
						
						
						
						
						
						]</span>
						${i.com_title }  <span class="badge">New</span>
					</div>
					<div class="board-meta"
						style="font-weight: 400; font-size: 1.2rem; color: #404040">
						<p>
						<input type="hidden" value="${user_id }" name="user_id">
							<i class="glyphicon glyphicon-user"></i> ${i.user_nick } 님 <i
								class="glyphicon glyphicon-comment"></i> ${i.reply } <i
								class="glyphicon glyphicon-ok"></i> ${i.com_hit } <i
								class="glyphicon glyphicon-time"></i> ${i.com_regdate }
						</p>
					</div>
				</a>
				
			
			
			</c:forEach>
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
	<!-- Footer -->
	<body>
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
				</div>
			</div>
		</div>
	</body>
<!-- 	<footer>
					<p class="copyright text-muted">Copyright &copy;2016 SIST. All
						rights reserved | code by milib</p>
						</footer> -->
	<!-- jQuery -->

</body>

</html>
