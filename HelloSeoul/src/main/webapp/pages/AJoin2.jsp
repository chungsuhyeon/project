<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>회원가입</title>
<meta http-equiv="Content-Type" content="text/html;" />
<meta http-equiv="X-UA-Compatible"  />
<meta http-equiv="imagetoolbar" content="no" />
<!-- <link href="/web/resources/helloseoul/css/home/contents.css" rel="stylesheet" type="text/css" /> -->
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
	   // 국적입력하면 전화번호에 국가번호 입력, 포커스 다음칸으로 
		$("select[name='countryno']").change(function(){
	 		$("input[name='tel1']").val($("select[name='countryno']").val());
	 		$("input[name='tel2']").focus();
	 		$("input[name='tel1']").attr("disabled",true);
	 		//alert($("select[name='countryno']").val());
		
     	}); //국적,국가번호 입력
	   
	   
		   //event
	 	   //$("input#password2").focus(function(){
			  //console.log('focus'); 
	 		  //alert("비밀번호를 입력하세요");
	     // });
		   
		   $("input#password2").blur(function(){ //포커스가 다른곳으로 가면 콜솔창에서 blur가 나온다 
				 // console.log('blur'); 
		        if($("input#password1").val()==$("input#password2").val() && $("input#password1").val().length>0){
		        	$("input#password").val($("input#password1").val());
		        }else{
		        	$("input#password1").val('');
		        	$("input#password2").val('');
		        	$("input#password1").focus();
		        	alert("비밀번호를 확인하세요");
		        }
			   });

	   
/*===============================================================================================================================  */	   
	   
	   
	   
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
   }); // 전체함수 끝!!!
</script>
<style>
    body{background-color:"pink;"
         }
	#valu{
		line-height:"2.0;"
		}

</style>

</head>
<jsp:include page="./Header.jsp"></jsp:include>
<body style="background-image: url('/web/resources/helloseoul/img/backjoin.jpg');" >
		<form action="/web/joinMemberInsert" name="joinFrm" method="post">
		<div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<h1 class="title">회원가입</h1>
					<div class="tbWrapRt" style="margin-top: 100px; padding-left:450px ">
						<table class="bbsWrite mgb10" style="background-color: white;"  >
								<caption></caption>
								<colgroup>
									<col width="95" />
									<col />
								</colgroup>
								<tbody>
								<tr id="valu" style="margin-top: 20px; padding-left:450px;">								
								  	<th>이메일</th>
										<td><input  style="height: 20px;"  type="text" name="email1" class="inputText" size="10" />@
										   <input  style="height: 20px;" type="text" name="email2"  class="inputText" />
										   <select   style="height: 20px;" name="email3" >
										     <option selected="selected">선택하세요</option>
										     <option value="direct">직접입력</option>
										     <option value="naver.com">naver.com</option>
										     <option value="daum.net">daum.net</option>
										     <option value="bit.com">bit.com</option>
										     <option value="gmail.com">gmail.com</option>
										   </select>
										   <input type="hidden" name="email" />
										   <span class="buttonFuc" id="unique"><a href="#" id="unique">중복체크</a><span id="sid"></</span></span>
										</td>
							    	</tr>
								<tr id="valu">
									<th> 이름 </th>
									<td><input style="height: 20px;" type="text" name="name" id="name" class="inputText" size="30" /></td>
								</tr>
								<tr id="valu">
									<th>닉네임</th>
									<td><input style="height: 20px;" type="text" name="name" id="name" class="inputText" size="30" /></td>
								</tr>
								<tr id="valu">
									<th>비밀번호</th>
									<td><input style="height: 20px;" type="password" name="password1" id="password1" class="inputText" size="30" /></td>
								</tr>
								<tr id="valu">
									<th>비밀번호확인</th>
									<td>
									  <input style="height: 20px;" type="password" name="password2" id="password2" class="inputText" size="30" />
									  <input style="height: 20px;"  type="hidden" name="password" id="password" class="inputText" size="30" />

									</td>
								</tr> 
								
								<tr id="valu">
									<th>성별</th>
									<td>
										<label for="male"><input type="radio" class="inputRadio" checked="checked"  name="gender" id="male" value="남" />남</label>
										<label for="female"><input type="radio" class="inputRadio" checked="checked"  name="gender" id="female" value="여"/>여</label>
									</td>
								</tr>
								<tr id="valu">
									<th>생년월일</th> <!-- 1970~2000 숫자 isNaN() parseInt(),parseFlot(),eval()-->
									<td>
									   <input  style="height: 20px;" type="date" min="1970-01-01" max="2025-12-31" name="birth"></input>
<!-- 										<input type="text" name="year" id="year" class="inputText" size="10" /> 년 -->
<!-- 										<input type="text" name="month" id="month" class="inputText" size="10" /> 월 -->
<!-- 										<input type="text" name="day" id="day" class="inputText" size="10" /> 일 -->
<!-- 										<input type="text" name="birth" id="birth" class="inputText" size="10" /> 생일 -->
									</td>
								</tr>
								<tr id="valu">
									<th>주소</th>
									<td class="alignM">
										<p class="mgb3">
											<input type="text" name="post1" class="inputText" size="7" readonly="readonly" /> - <input type="text" name="post2" class="inputText" size="7" /> <span class="buttonFuc" id="spost"><a href="#">우편번호</a></span>
										</p>
										<p class="mgb3">
											<input type="text" name="address" class="inputText" size="30" readonly="readonly" />
											<input type="text" name="infoAddr" class="inputText" size="30" />
											<input type="hidden" name="postAddress" class="inputText" size="30" />
										</p>
									</td>
								</tr>
									<tr id="valu">
										<th>국가</th>
										  <td >
										     <!-- <input style="height: 20px;" type="text" name="id" id="id" class="inputText" size="30" /> -->
										    	<select style="height: 20px;"  name="countryno">
											  	<option selected="selected">사는국가</option>
											     <option value="1">미국</option>
											     <option value="7">러시아</option>
											     <option value="33">프랑스</option>
											     <option value="34">스페인</option>
											     <option value="44">영국</option>
											     <option value="49">독일</option>
											     <option value="61">호주</option>
											     <option value="63">필리핀</option>
											     <option value="64">뉴질랜드</option>
											     <option value="65">싱가포르</option>
											     <option value="66">태국</option>
											     <option value="81">일본</option>
											     <option value="82">대한민국</option>
											     <option value="84">베트남</option>
											     <option value="86">중국</option>
											     <option value="852">홍콩</option>
											     <option value="886">대만</option>
											     <option value="91">인도</option>
											     <option value="971">아랍에미리트</option>
											 </select>
										</td>
								</tr>
								<tr id="valu">
									<th>휴대폰번호</th>
									<td>
										<input style="height: 20px;" type="test" name="tel1" class="inputText" size="10" /> - 
										<input style="height: 20px;" type="text" name="tel2" class="inputText" size="10" /> - 
										<input style="height: 20px;" type="text" name="tel3" class="inputText" size="10" /> -
										<input style="height: 20px;" type="text" name="tel4" class="inputText" size="10" />
										<input style="height: 20px;" type="hidden" name="tel" class="inputText" size="10" />
									</td>
								</tr>

								<tr id="valu">
									<th>방문목적</th>
									<td>
										<input type="radio" class="inputRadio"   name="visit" id="visit" value="관광" /><label for="visit">관광</label>
										<label for="visit"><input type="radio" class="inputRadio"   name="visit" id="visit" value="업무"/>업무</label>
										<label for="visit"><input type="radio" class="inputRadio"   name="visit" id="visit" value="기타"/>기타1</label>
										
									</td>
								</tr>
								 <tr id="valu">
									<th>관광우선순위</th>
									<td>
										<label for="travel"><input type="radio" class="inputRadio"   name="travel" id="travel" value="관광" />관광</label>
										<label for="travel"><input type="radio" class="inputRadio"   name="travel" id="travel" value="업무"/>업무</label>
										<label for="travel"><input type="radio" class="inputRadio"   name="travel" id="travel" value="기타"/>기타1</label>
										
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