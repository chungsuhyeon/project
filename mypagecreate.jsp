<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script type="text/javascript">
$(function(){
	$("#test").click(function(){
		alert($("#start").val());
		alert($("#end").val());
		alert("!!");
		
	});
});
</script> 
<style type="text/css">
div, span{
	border: solid;
}

#main{
	width: 1000px;
	height: 800px;
}

#title,#calander,#memo,#okay{
	margin-left : 100px;
	width:800px;
}

#title{
	margin-top : 10px;
	height: 100px;
}
#calander{
	height: 400px;
}
#memo{
	height: 200px;
}
#okay{
	height: 50px;
}
#okay button{
	float: right;
}

#calander div{
	margin-top : 10px;
	width : 250px;
	height: 300px;
	
}

#startline{
	margin-left : 30px;
	float : left;
}

div #stream{
	margin : 100px;
	width : 30px;
	height : 20px;
	margin-left : 100px;
	margin-right : 0px;
	float : left;
}

#endline{
	margin-right : 30px;
	float : right;
}

textarea {
	margin-left : 10px;
	width : 700px;
	height: 100px;
}
p{
	text-align: center;
}

</style>
</head>
<body>
<div id="main">
<div id="title"><input type="text">title_line</div>
<div id="calander"><p>calaneder_line</p>
<div id="startline"><p>start</p><input id="start" type="date"></div>
<div id="stream">~</div>
<div id="endline"><p>end</p><input id="end" type="date"></div>
</div>
<div id="memo"><p>memo_line</p><br>
<textarea></textarea></div>
<div id="okay"><button>okay</button> button_line</div>
</div>
</body>
</html>