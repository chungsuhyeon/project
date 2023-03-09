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
	$("button").click(function(){
			document.location.href ="myPagePlannerCreate.jsp";
	});
});
</script>
<!--JS Section End -->

<!-- Style Section Begin -->
<link type="text/css" rel="stylesheet" href="/web/resources/final_style/css/bootstrap.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" integrity="sha512-mSYUmp1HYZDFaVKK//63EcZq4iFWFjxSL+Z3T/aCt4IO9Cejm03q3NKKYN6pFQzY0SBOr8h+eCIAZHPXcpZaNw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style type="text/css">

</style>
<!-- Style Section End -->


</head>
<body>
	<header>
	<jsp:include page="header.jsp"></jsp:include>
	</header>
	<section>
		<div class='container mt-4' style="text-align: center;">
			<div class='col-4 bg-light' style="display: inline-block;">
				<form>
				<div class="form-group">
  					<label class="col-form-label mt-4" for="title">Title</label>
  					<input type="text" class="form-control" placeholder="Input Title" id="title">
				</div>
				<div class='form-group'>
					Start Date<input type="date" class="form-control" style="width: 50%; margin-left: 25%;">
					End Date<input type="date" class="form-control"  style="width: 50%; margin-left: 25%;">
				</div>
				<div class='form-group'>
					<p>memo_line</p>
					<textarea style="width: 80%; height: 200px; resize: none;"></textarea>
				</div>
				<div>
					<button type="button" class="btn btn-primary">Submit</button>
				</div>
				</form>
			</div>
		</div>
	</section>
</body>
</html>