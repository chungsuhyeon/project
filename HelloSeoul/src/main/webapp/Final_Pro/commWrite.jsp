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
		<div class='madintable'>
			<form>
  				<fieldset>
    				<legend>Community Write</legend>
    				<div class="form-group row">
      				<label for="exampleInputEmail1" class="form-label mt-4">Title</label>
      				<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
      				<label for="exampleInputPassword1" class="form-label mt-4">Password</label>
      				<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
      				<label for="exampleSelect1" class="form-label mt-4">Example select</label>
      				<select class="form-select" id="exampleSelect1">
        				<option>1</option>
        				<option>2</option>
        				<option>3</option>
        				<option>4</option>
        				<option>5</option>
      				</select>
      				<label for="exampleTextarea" class="form-label mt-4">Example textarea</label>
      				<textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
      				<label for="formFile" class="form-label mt-4">Default file input example</label>
      				<input class="form-control" type="file" id="formFile">
    				<button type="submit" class="btn btn-primary">Submit</button>
    				<button type="submit" class="btn btn-primary">Submit</button>
    				</div>
  				</fieldset>
			</form>
		</div>
	</section>
</body>
</html>