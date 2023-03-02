<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>MyPage</title>
<!-- <link rel="stylesheet" href="/web/resources/anime-main/css/bootstrap.min.css" type="text/css"> -->
<link rel="stylesheet" href="/web/resources/helloseoul/css/headerstyle.css">
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> -->
<!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script> -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script> -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<!-- Style line -->
<style type="text/css">
div{
	border: solid;
}
</style>
<!-- Style line -->
<!-- js line -->
<script type="text/javascript">
$(function(){
	$('#menubar>div').hover(function(){
		if($(this).children('div').css('visibility')=='visible'){
			$(this).children('div').css('visibility','hidden');
		}else{
			$(this).children('div').css('visibility','visible');
		}
	});
	$('#logo').click(function(){
		alert("go home!");
	});
});
</script> 
<!-- js line -->
</head>
<body>
	<!--Header Begin -->
	<header class='header'>
		<div class='container-fluid'>
			<div class='row'>
				<div class='col-2'>logo</div>
				<div class='col-8'>
					<div class='header__menubar'>
						<div class='dropdown'>
							<p class='dropdown-toggle' data-toggle='dropdown'>test</p>
							<div class='dropdown-menu'>
								<a class='dropdown-item' href="#">detail</a>
								<a class='dropdown-item' href="#">detail</a>
								<a class='dropdown-item' href="#">detail</a>
							</div>
						</div>
					</div>
				</div>
				<div class='col-2'>loginbar</div>
			</div>
		</div>
	</header>
	<!--Header End -->
	<!--Section Begin -->
	<section>
	</section>
	<!--Section End -->
	<!--Footer Begin -->
	<footer>
	</footer>
	<!--Footer End -->
</body>
</html>