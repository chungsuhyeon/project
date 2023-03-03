<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<style type="text/css">
.header{
	background : #ffffff;
	border-bottom : 2px solid #000000;
	border-bottom-color: #000000;
	height: 100px;
}
.headerBox{
	display: flex;
}
.logo img{
	margin : 10px;
	margin-top : 20px;
	width : 100px;
	height: 50px;
}
.dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0;
}

.header__menubar>div{
	display:inline-block;
}

/* body line */

.body{
	background: #ffffff;
}
</style>
</head>
<!-- Body Begin -->
<body class='body'>
	<!--Header Begin -->
	<header class='header'>
		<div class='container-fluid'>
			<div class='row'>
				<div class='logo col-2'><img src="/web/resources/final_style/img/seoul_logo.png"></div>
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
						<div class='dropdown'>
							<p class='dropdown-toggle' data-toggle='dropdown'>test</p>
							<div class='dropdown-menu'>
								<a class='dropdown-item' href="#">detail</a>
								<a class='dropdown-item' href="#">detail</a>
								<a class='dropdown-item' href="#">detail</a>
							</div>
						</div>
						<div class='dropdown'>
							<p class='dropdown-toggle' data-toggle='dropdown'>test</p>
							<div class='dropdown-menu'>
								<a class='dropdown-item' href="#">detail</a>
								<a class='dropdown-item' href="#">detail</a>
								<a class='dropdown-item' href="#">detail</a>
							</div>
						</div>
						<div>
							<p>test</p>
						</div>
					</div>
				</div>
				<div class='col-2'>
				<span>login</span>
				<span>login</span>
				<span>login</span>
				<span>login</span>
				<span>login</span>
				</div>
			</div>
		</div>
	</header>
</body>
<!-- Body End -->
</html>