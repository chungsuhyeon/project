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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script type="text/javascript">
$(function(){
	$("button").click(function(){
		if(($(this).attr('id'))=='join'){
			 document.location.href ="/web/Final_Pro/join.jsp";
		}
		else if(($(this).attr('id'))=='login'){
			document.location.href ="/web/Final_Pro/login.jsp";
		}
		else if(($(this).attr('id'))=='logout'){
			document.location.href ="/web/HelloSeoulLogout";
		}
		else if(($(this).attr('id'))=='comm'){
			document.location.href ="/web/Final_Pro/ComList.jsp";
		}
		else if(($(this).attr('id'))=='mypage'){
			document.location.href ="/web/myPageLoad";
		}
	});
});
</script>
<!--JS Section End -->

<!-- Style Section Begin -->
<link type="text/css" rel="stylesheet" href="/web/resources/final_style/css/flatly_bootstrap.css">
<style type="text/css">
.logo > img{
	width: 200px;
	height: 80px;
}
.setbar > button{
	margin-left: 10px;
	margin-bottom: 50px;
}
</style>
<!-- Style Section End -->


</head>
<header>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  	<div class='container-fluid'>
    <a class="logo navbar-brand" href="./index.jsp"><img alt="" src="/web/resources/final_style/img/seoul_logo.png"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link active" href="#">HOME
            <span class="visually-hidden">(current)</span>
          </a>
        </li>
       <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">FOOD</a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="./ctgPage.jsp">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <a class="dropdown-item" href="#">Something else here</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Separated link</a>
          </div>
        </li>
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">SHOPPING</a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <a class="dropdown-item" href="#">Something else here</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Separated link</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">HOTSPOT</a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <a class="dropdown-item" href="#">Something else here</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Separated link</a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">TICKET</a>
        </li>
      </ul>
      <div class="setbar d-flex">
       	<button type="button" class="btn btn-dark" id="comm">Community</button>
       	
       	<c:choose>
	       	<c:when test="${user_id eq null}">
		       	<button type="button" class="btn btn-dark" id="login">Login</button>
		       	<button type="button" class="btn btn-dark" id="join">Join</button>	       	
	       	</c:when>
	       	<c:otherwise>
		       	<button type="button" class="btn btn-dark" id="logout">Logout</button>
		       	<button type="button" class="btn btn-dark" id='mypage'>MyPage</button>
	       	</c:otherwise>
       	</c:choose>
       	
      </div>
	</div>
  </div>
</nav>
	</header>
</html>