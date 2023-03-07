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
<link type="text/css" rel="stylesheet" href="/web/resources/final_style/css/flatly_bootstrap.css">
<style type="text/css">

.main{
	display:flex;
}

.main>div{
	border-radius : 70px;
	width: 400px;
	margin-top : 200px;
	margin-left : 120px;
	float: left;
	display: flex;
}
.card-header{
	background-color: none;
}

.card-title{
	text-align: center;
}

img{
	width:300px;
	height:300px;
}
</style>
<!-- Style Section End -->


</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<section class='section'>
		<div class='container-fluid bg-light'>
			<div class='main'>
				<div class="card bg-info mb-3" style="max-width: 20rem;">
  					<div class="card-header"><img alt="" src="/web/resources/final_style/img/indexFood.jpg"></div>
  					<div class="card-body">
    					<h4 class="card-title">FOOD</h4>
  					</div>
				</div>
				<div class="card bg-secondary mb-3" style="max-width: 20rem;">
  					<div class="card-header"><img alt="" src="/web/resources/final_style/img/indexFood.jpg"></div>
  					<div class="card-body">
    					<h4 class="card-title">SHOPPING</h4>
  					</div>
				</div>
				<div class="card bg-secondary mb-3" style="max-width: 20rem;">
  					<div class="card-header"><img alt="" src="/web/resources/final_style/img/indexFood.jpg"></div>
  					<div class="card-body">
    					<h4 class="card-title">HOTSPOT</h4>
  					</div>
				</div>
				<div class="card bg-secondary mb-3" style="max-width: 20rem;">
  					<div class="card-header"><img alt="" src="/web/resources/final_style/img/indexFood.jpg"></div>
  					<div class="card-body">
    					<h4 class="card-title">TICKET</h4>
  					</div>
				</div>
			</div>
		</div>
	</section>
	<footer>
	<%-- 	<jsp:include page=""></jsp:include> --%>
	</footer>
</body>
</html>