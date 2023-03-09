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
<link type="text/css" rel="stylesheet" href="/web/resources/final_style/css/bootstrap.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js" integrity="sha512-T/tUfKSV1bihCnd+MxKD0Hm1uBBroVYBOYSk1knyvQ9VyZJpc/ALb4P0r6ubwVPSGB2GvjeoMAJJImBG12TiaQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" integrity="sha512-mSYUmp1HYZDFaVKK//63EcZq4iFWFjxSL+Z3T/aCt4IO9Cejm03q3NKKYN6pFQzY0SBOr8h+eCIAZHPXcpZaNw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js" integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<style type="text/css">
	.contdivbox{
		display: flex;
	}
	
	.contdivbox>div{
		margin : 10px;
		border:solid;
		float:left;
		display:flex;
	}
	
	table{
		width: 450px !important;
		height : 350px !important;
	}
	
	th,td{
		font-size: 20px !important;
	}
</style>
<!-- Style Section End -->

</head>
<body>
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	
	<section>
		<div class='container-fluid'>
			<!-- User Info -->
			<div>
				<div>
					<h2>${user_nickName}</h2>
				</div>
				<div>
					<h4>
						Name : ${userInfo.USER_NAME}
						&nbsp;&nbsp;&nbsp;
						Nationality : ${userInfo.USER_NATION}
						&nbsp;&nbsp;&nbsp;
						Age : ${userInfo.USER_AGE}
						&nbsp;&nbsp;&nbsp;
						Purpose of visit : ${userInfo.USER_PP}
						&nbsp;&nbsp;&nbsp;
						1st place in tourism : ${userInfo.USER_FIRST}
					</h4>
				</div>
			</div>
			<!-- Nav Bar -->
			<div>
				<ol class="breadcrumb">
  					<li class="breadcrumb-item"><a href="./Final_Pro/myPageJjim.jsp">Wish</a></li>
  					<li class="breadcrumb-item"><a href="./Final_Pro/myPageCreate.jsp">Planner Create</a></li>
				</ol>
			</div>
			<!-- Contents Div Box -->
			<div class='contdivbox'>
				<div>
					<table class="table table-hover">
  						<thead>
    						<tr>
      							<th>PlanTitle</th>
      							<td>Happy Seoul Travel</td>
    						</tr>
  						</thead>
  						<tbody>
    						<tr>
      							<th>Location</th>
      							<td>Seoul</td>
    						</tr>
    						<tr>
	      						<th>Date</th>
    	  						<td>2023.03.03 ~ 2023.03.04</td>
    						</tr>
    						<tr>
      							<th>Default</th>
      							<td>Column content</td>
    						</tr>
    						<tr>
	      						<th>Default</th>
    	  						<td>Column content</td>
    						</tr>
    					</tbody>
    				</table>
				</div>
				<div>
					<table class="table table-hover">
  						<thead>
    						<tr>
      							<th>PlanTitle</th>
      							<th>Column heading</th>
    						</tr>
  						</thead>
  						<tbody>
    						<tr>
      							<th>Default</th>
      							<td>Column content</td>
    						</tr>
    						<tr>
	      						<th>Default</th>
    	  						<td>Column content</td>
    						</tr>
    						<tr>
      							<th>Default</th>
      							<td>Column content</td>
    						</tr>
    						<tr>
	      						<th>Default</th>
    	  						<td>Column content</td>
    						</tr>
    					</tbody>
    				</table>
				</div>
				<div>
					<table class="table table-hover">
  						<thead>
    						<tr>
      							<th>PlanTitle</th>
      							<th>Column heading</th>
    						</tr>
  						</thead>
  						<tbody>
    						<tr>
      							<th>Default</th>
      							<td>Column content</td>
    						</tr>
    						<tr>
	      						<th>Default</th>
    	  						<td>Column content</td>
    						</tr>
    						<tr>
      							<th>Default</th>
      							<td>Column content</td>
    						</tr>
    						<tr>
	      						<th>Default</th>
    	  						<td>Column content</td>
    						</tr>
    					</tbody>
    				</table>
				</div>
				<div>
					<table class="table table-hover">
  						<thead>
    						<tr>
      							<th>PlanTitle</th>
      							<td>Happy Seoul Travel</td>
    						</tr>
  						</thead>
  						<tbody>
    						<tr>
      							<th>Location</th>
      							<td>Seoul</td>
    						</tr>
    						<tr>
	      						<th>Date</th>
    	  						<td>2023.03.03 ~ 2023.03.04</td>
    						</tr>
    						<tr>
      							<th>Default</th>
      							<td>Column content</td>
    						</tr>
    						<tr>
	      						<th>Default</th>
    	  						<td>Column content</td>
    						</tr>
    					</tbody>
    				</table>
				</div>				
			</div>
			<!-- Paging Button -->
			<div class='pagingbox'>
				<div>
  					<ul class="pagination pagination-lg" style="margin-left: 720px;">
    					<li class="page-item disabled">
      						<a class="page-link" href="#">&laquo;</a>
    					</li>
   						<li class="page-item active">
      						<a class="page-link" href="#">1</a>
    					</li>
    					<li class="page-item">
      						<a class="page-link" href="#">2</a>
    					</li>
    					<li class="page-item">
      						<a class="page-link" href="#">3</a>
    					</li>
    					<li class="page-item">
      						<a class="page-link" href="#">4</a>
    					</li>
    					<li class="page-item">
      						<a class="page-link" href="#">5</a>
    					</li>
    					<li class="page-item">
      						<a class="page-link" href="#">&raquo;</a>
    					</li>
  					</ul>
  				</div>
			</div>
		</div>
	</section>
</body>
</html>