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
			if(($(this).attr('id'))=='login'){
				if($("input#inputID").val().length==0 || $("input#inputPassword").val().length==0){
	    	        alert('id or password check');
	    	    	$("input#inputID").val('');
	    	    	$("input#inputPassword").val('');
	    	    	$("input#inputID").focus();
	    	    	return false;
	    	    }
	    		$("form").submit();
			}
			else if(($(this).attr('id'))=='join'){
				document.location.href ="/web/Final_Pro/join.jsp";
			}
			else if(($(this).attr('id'))=='findID'){
				document.location.href ="";
			}
		});
	});
</script>
<!--JS Section End -->

<!-- Style Section Begin -->
<link type="text/css" rel="stylesheet" href="/web/resources/final_style/css/bootstrap.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js" integrity="sha512-T/tUfKSV1bihCnd+MxKD0Hm1uBBroVYBOYSk1knyvQ9VyZJpc/ALb4P0r6ubwVPSGB2GvjeoMAJJImBG12TiaQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" integrity="sha512-mSYUmp1HYZDFaVKK//63EcZq4iFWFjxSL+Z3T/aCt4IO9Cejm03q3NKKYN6pFQzY0SBOr8h+eCIAZHPXcpZaNw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js" integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<style type="text/css">

</style>
<!-- Style Section End -->


</head>
<body>
	<header>
	<jsp:include page="header.jsp"></jsp:include>
	</header>
	<section>
		<div>
			<form method="post" action="${pageContext.request.contextPath}/siteCheck">
				<div class="form-group">
	  				<label class="col-form-label col-form-label-lg mt-4" for="inputLarge">ID</label>
	  				<input class="form-control form-control-lg" type="text" placeholder="ID" id="inputID" name="user_id">
	  				<label class="col-form-label col-form-label-lg mt-4" for="inputLarge">Password</label>
	  				<input class="form-control form-control-lg" type="password" placeholder="Password" id="inputPassword" name="password">
				</div>
				<button type="submit" class="btn btn-primary" id="login">Submit</button>
				<button type="button" class="btn btn-success" id="join">Success</button>
				<button type="button" class="btn btn-danger" id="findID">Danger</button>
			</form>
		</div>
	</section>
</body>
</html>