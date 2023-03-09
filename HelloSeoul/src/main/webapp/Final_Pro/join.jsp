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
.form-control {
	width: 40%;
}
</style>
<!-- Style Section End -->


</head>
<body>
	<header>
	<jsp:include page="header.jsp"></jsp:include>
	</header>
	<section class=bg-light>
		<div class='container bg-dark' style="width: 800px; margin-top: 20px; border-radius: 30px;">
			<h2>JOIN PAGE</h2>
			<form action="">
				<div class="form-group">
  					<label class="col-form-label mt-4" for="inputDefault">ID</label>
  					<input type="text" class="form-control" placeholder="abcde@gmail.com" id="inputDefault">
  					<label class="col-form-label mt-4" for="inputDefault">Password</label>
  					<input type="password" class="form-control" id="inputDefault">
  					<label class="col-form-label mt-4" for="inputDefault">Confirm password</label>
  					<input type="password" class="form-control" id="inputDefault">
  					<label class="col-form-label mt-4" for="inputDefault">Name</label>
  					<div>
  					<div class="form-group" style="display: inline-flex;">
  					<input type="text" class="form-control" placeholder="First Name" id="inputDefault">
  					&nbsp;&nbsp;&nbsp;&nbsp;
  					<input type="text" class="form-control" placeholder="Last Name" id="inputDefault">
  					</div>
  					</div>
  					<label class="col-form-label mt-4" for="inputDefault">Nation</label>
  					<input type="text" class="form-control" placeholder="ex) Korea" id="inputDefault">
      				<label for="exampleSelect1" class="form-label mt-4">TelePhone</label><br>
  					<div class="form-group" style="display: inline-flex;">
      					<select class="form-select" id="exampleSelect1">
        					<option>1</option>
        					<option>2</option>
        					<option>3</option>
        					<option>4</option>
        					<option>5</option>
      					</select>
      					<h4>&nbsp;&nbsp;-&nbsp;&nbsp;</h4>
  						<input type="text" class="form-control" placeholder="Middle Number" id="inputDefault">
  						<h4>&nbsp;&nbsp;-&nbsp;&nbsp;</h4>
  						<input type="text" class="form-control" placeholder="Back Number" id="inputDefault">
    				</div>
    				<br>
  					<label class="col-form-label mt-4" for="inputDefault">Birth</label>
  					<input type="date" class="form-control">
  					<fieldset class="form-group">
      					<legend class="mt-4">Gender</legend>
      					<div style="display:inline-flex;">
      					<div class="form-check">
        					<input class="form-check-input" type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
        					<label class="form-check-label" for="optionsRadios1">Male</label>&nbsp;     					
      					</div>
      					<div class="form-check">
        					<input class="form-check-input" type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
        					<label class="form-check-label" for="optionsRadios2">Female</label>
      					</div>
      					</div>
    				</fieldset>
    				<fieldset class="form-group">
      					<legend class="mt-4">Purpose</legend>
      					<div style="display:inline-flex;">
      					<div class="form-check">
        					<input class="form-check-input" type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
        					<label class="form-check-label" for="optionsRadios1">Male</label>&nbsp;     					
      					</div>
      					<div class="form-check">
        					<input class="form-check-input" type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
        					<label class="form-check-label" for="optionsRadios2">Female</label>
      					</div>
      					</div>
    				</fieldset>
					<fieldset class="form-group">
      					<legend class="mt-4">First</legend>
      					<div style="display:inline-flex;">
      					<div class="form-check">
        					<input class="form-check-input" type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
        					<label class="form-check-label" for="optionsRadios1">Male</label>&nbsp;     					
      					</div>
      					<div class="form-check">
        					<input class="form-check-input" type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
        					<label class="form-check-label" for="optionsRadios2">Female</label>
      					</div>
      					</div>
    				</fieldset>
				</div>
				<div class="d-grid gap-2">
  					<button class="btn btn-lg btn-primary mt-2" type="button">Block button</button>
  				</div>
			</form>
		</div>
	</section>
</body>
</html>