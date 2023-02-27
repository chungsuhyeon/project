<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>회원가입</title>
<meta http-equiv="Content-Type" content="text/html;" />
<meta http-equiv="X-UA-Compatible"  />
<meta http-equiv="imagetoolbar" content="no" />
<link href="/web/resources/helloseoul/css/home/contents.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script type="text/javascript">
   function nodeClear1(){
	   alert('DataCheck...');
	   $("input#year").val('');
	   $("input#month").val('');
	   $("input#day").val('');
	   $("input#year").focus();
   }  

	
	   
   $(function(){   
	   $("select[name='email3']").change(function(){
		   if($(this).val()=='direct'){
			   //$("input[name='email2']").attr("disabled",false);
			   //$("input[name='email2']").attr("readonly",false);
			   $("input[name='email2']").removeAttr("readonly");
			   $("input[name='email2']").val('');
			   $("input[name='email2']").focus();
		   }else{
			   //$("input[name='email2']").attr("disabled",true);
			   $("input[name='email2']").attr("readonly",true);
			   $("input[name='email2']").val( $("select[name='email3']").val());
		   }
		   
	   });

 
	
	   
	   $("span#save a").click(function(){ //값 유무 확인
		   //alert($("input#name").val().length);
	       $("input[name='postAddress']").val( $("input[name='post1']").val()+"-"+$("input[name='post2']").val()+" "+$("input[name='address']").val()+' '+$("input[name='infoAddr']").val());
	       $("input[name='tel']").val($("input[name='tel1']").val()+'-'+$("input[name='tel2']").val()+'-'+$("input[name='tel3']").val());
	       $("input[name='cp']").val($("input[name='cp1']").val()+'-'+$("input[name='cp2']").val()+'-'+$("input[name='cp3']").val());
	       $("input[name='email']").val($("input[name='emai11']").val()+'@'+$("input[name='email2']").val());
	       $("form").submit();
	   
	   });
	   //event
// 	   $("input#password2").focus(function(){
// 		  console.log('focus'); 
// 	   });
	   
	   $("input#password2").blur(function(){ //포커스가 다른곳으로 가면 콜솔창에서 blur가 나온다 
			 // console.log('blur'); 
	        if($("input#password1").val()==$("input#password2").val() && $("input#password1").val().length>0){
	        	$("input#password").val($("input#password1").val());
	        }else{
	        	$("input#password1").val('');
	        	$("input#password2").val('');
	        	$("input#password1").focus();
	        }
		   });	   
	   
	   $("input#day").blur(function(){
		  //숫자인경우  
		  if(isNaN($("input#year").val()) || isNaN($("input#month").val()) || isNaN($("input#day").val()) ){
			  nodeClear1();
		      return false;
		   
		 }else{
			 if(!(parseInt($("input#year").val())>=1970 && parseInt($("input#year").val())<=2000) || 
					 !(parseInt($("input#month").val())>=1 && parseInt($("input#month").val())<=12) ||
							!(parseInt($("input#day").val())>=1 && parseInt($("input#day").val())<=31)){
						 nodeClear1();
						 return false;
					 }else{
						 $("input#birth").val($("input#year").val()+'/'+ $("input#month").val()+'/'+ $("input#day").val());
					 }
		 }  		
	   }); 
	   
	   
	   $("span#spost a").click(function(){
		  window.open("address.jsp","id","left=100,top=200,width=400, height=400");
	   });
	   
	   
	    $("span#unique a").click(function(){
	    	//alert($("input[name='id']").val());
	       let user_id =$("input[name='id']").val();
		   $.ajax({
			   url:'/web/ajaxFindID',
			   type:'POST',	
			   data:{id:user_id},
			   contentType:'application/x-www-form-urlencoded; charset=UTF-8',
			   dataType:'text',
			   success:function(result){
				  // console.log(result);
				  if(result=='true'){
					  $("span#sid").html("<font color='red'>ID 중복</font>");
					  $("input[name='id']").val('');
					  $("input[name='id']").focus();
				 }else{
					 $("span#sid").html("<font color='red'>ID 가능합니다</font>")
				 }
			   },
			   error:function(){
				   alert('error');
			   }			   
		   });
    });	    
   });
</script>

</head>
<jsp:include page="./Header.jsp"></jsp:include>
<body style="background-image: url('/web/resources/helloseoul/img/backjoin.jpg');" >
		<form action="/web/joinMemberInsert" name="joinFrm" method="post">
		<div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<h1 class="title">회원가입</h1>
					<div class="tbWrapRt" style="padding-right: 250px; margin-top: 100px;">
						<table class="bbsWrite mgb10" style="background-color: white;"  >
								<caption></caption>
								<colgroup>
									<col width="95" />
									<col />
								</colgroup>
								<tbody>
								  <tr>
								  	<th>이메일</th>
										<td><input  style="height: 20px;"  type="text" name="email1" class="inputText" size="10" />
										   <input  style="height: 20px;" type="text" name="email2"  class="inputText" />
										   <select   style="height: 20px;" name="email3" >
										     <option selected="selected">선택하세요</option>
										     <option value="direct">직접입력</option>
										     <option value="naver.com">naver.com</option>
										     <option value="daum.net">daum.net</option>
										     <option value="bit.com">bit.com</option>
										   </select>
										   <input type="hidden" name="email" />
										   <span class="buttonFuc" id="unique"><a href="#" id="unique">중복체크</a><span id="sid"></</span></span>
										</td>
							    	</tr>
								<tr>
									<th>이름</th>
									<td><input style="height: 20px;" type="text" name="name" id="name" class="inputText" size="30" /></td>
								</tr>
								<tr>
									<th>닉네임</th>
									<td><input style="height: 20px;" type="text" name="name" id="name" class="inputText" size="30" /></td>
								</tr>
								<tr>
									<th>비밀번호</th>
									<td><input style="height: 20px;" type="text" name="password1" id="password1" class="inputText" size="30" /></td>
								</tr>

								<tr>
									<th>비밀번호 확인</th>
									<td>
									  <input style="height: 20px;" type="text" name="password2" id="password2" class="inputText" size="30" />
									   <input style="height: 20px;"  type="hidden" name="password" id="password" class="inputText" size="30" />

									</td>
								</tr> 
								<tr>
									<th>국적</th>
									<td><input style="height: 20px;" type="text" name="id" id="id" class="inputText" size="30" /> </td>
								</tr>
								
								<tr>
									<th>성별</th>
									<td>
										<label for="male"><input type="radio" class="inputRadio" checked="checked"  name="gender" id="male" value="남" />남</label>
										<label for="female"><input type="radio" class="inputRadio" checked="checked"  name="gender" id="female" value="여"/>여</label>
									</td>
								</tr>
								<tr>
									<th>생년월일</th> <!-- 1970~2000 숫자 isNaN() parseInt(),parseFlot(),eval()-->
									<td>
									   <input  style="height: 20px;" type="date" min="2020-01-01" max="2022-12-31" name="birth"></input>
<!-- 										<input type="text" name="year" id="year" class="inputText" size="10" /> 년 -->
<!-- 										<input type="text" name="month" id="month" class="inputText" size="10" /> 월 -->
<!-- 										<input type="text" name="day" id="day" class="inputText" size="10" /> 일 -->
<!-- 										<input type="text" name="birth" id="birth" class="inputText" size="10" /> 생일 -->
									</td>
								</tr>
								<tr>
									<th>주소</th>
									<td class="alignM">
										<p class="mgb3">
											<input type="text" name="post1" class="inputText" size="10" readonly="readonly" /> - <input type="text" name="post2" class="inputText" size="10" /> <span class="buttonFuc" id="spost"><a href="#">우편번호</a></span>
										</p>
										<p class="mgb3">
											<input type="text" name="address" class="inputText" size="50" readonly="readonly" />
											<input type="text" name="infoAddr" class="inputText" size="50" />
											<input type="text" name="postAddress" class="inputText" size="50" />
										</p>
									</td>
								</tr>

								<tr>
									<th>전화번호</th>
									<td>
										<!-- <input type="test" name="tel1" class="inputText" size="10" />  -->
											<select >
											  	<option selected="selected"></option>
											     <option value="02">02</option>
											     <option value="031">031</option>
											     <option value="032">032</option>
											     <option value="042">042</option>
											</select>
											
										<input type="text" name="tel2" class="inputText" size="10" /> - 
										<input type="text" name="tel3" class="inputText" size="10" />
										<input type="text" name="tel" class="inputText" size="10" />
									</td>
								</tr>
								<tr>
									<th>휴대폰번호</th>
									<td>
										<input  style="height: 20px;" type="text" name="cp1" class="inputText" size="10" /> - 
										<input  style="height: 20px;"  type="text" name="cp2" class="inputText" size="10" /> - 
										<input  style="height: 20px;" type="text" name="cp3" class="inputText" size="10" />
										<input  style="height: 20px;" type="text" name="cp" class="inputText" size="10" />
									</td>
								</tr>
								<tr>
									<th>방문목적</th>
									<td>
										<label for="male"><input type="radio" class="inputRadio"   name="gender" id="male" value="남" />관광</label>
										<label for="female"><input type="radio" class="inputRadio"   name="gender" id="female" value="여"/>업무</label>
										<label for="female"><input type="radio" class="inputRadio"   name="gender" id="female" value="여"/>기타1</label>
										
									</td>
								</tr>								
								</tbody>
							</table>
							<div class="agr mgb15">
								<span class="button" id="save"><a href="../project/mainPage.jsp">가입</a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</form>	
</body>
</html>