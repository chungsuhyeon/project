<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!doctype html>
<html lang="ko">
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta property="og:title" content="YES24 티켓 - 뮤지컬">
<meta property="og:type" content="website">
<meta property="og:site_name" content="YES24 티켓">
<meta property="og:description">
<meta property="fb:app_id">
<title>YES24 티켓</title>
<script type="text/javascript"
	src="/web/resources/ticketMain2/New/Js/jquery-3.4.1_min-1.js"></script>
<!-- Google Tag Manager -->

<!-- End Google Tag Manager -->
<script type="text/javascript"
	src="/web/resources/ticketMain2/New/Js/swiper_min-1.js"></script>
<script type="text/javascript"
	src="/web/resources/ticketMain2/New/Js/jquery.lazy.min-1.js"></script>
<script type="text/javascript"
	src="/web/resources/ticketMain2/New/Js/Main.js?v=391"></script>


<link rel="stylesheet" type="text/css"
	href="/web/resources/ticketMain2/New/Css/reset.css">
<link rel="stylesheet" type="text/css"
	href="/web/resources/ticketMain2/New/Css/swiper-1.css">
<link rel="stylesheet" type="text/css"
	href="/web/resources/ticketMain2/New/Css/jquery.mCustomScrollbar-1.css">
<link rel="stylesheet" type="text/css"
	href="/web/resources/ticketMain2/New/Css/common-1.css?v=17">
<link rel="stylesheet" type="text/css"
	href="/web/resources/ticketMain2/New/Css/main2-1.css?v=2020012203">
<script type="text/javascript">
	$(function(){
		$("div a#img").click(function(){
			$("form").submit();
		});
	});
</script>


<!-- <form role="form" action="/web/contentImg"> -->
<form>

<div class="m2-kv-hidden">   <!-- 상단 돌아가는 컨텐츠 -->
		<div class="m2-kv-wrap">
			<div class="m2-kv">
				<div class="swiper-container m2-kvs">
				<div class="swiper-wrapper">
				<c:forEach var="i" items="${musicallist}" varStatus="cnt">
						<div class="swiper-slide">
							<a href="/web/contentImg?imgsrc=${i.imgsrc}"
								target="_self" title="${i.title}" id="img"><img id="imgsrc"
								src="${i.imgsrc}"
								alt="">
							<div class="m2-kvs-txt">
									<p class="m2-kvs-tit">${i.ptitle }</p>
									<p class="m2-kvs-detail">${i.detail}</p>
								</div></a>
						</div>
						</c:forEach>
<!-- 					<div class="swiper-wrapper"> -->
<!-- 						<div class="swiper-slide"> -->
<!-- 							<a href="#" -->
<!-- 								target="_self" title="뮤지컬 〈오페라의 유령〉" id="img"><img id="imgsrc" -->
<!-- 								src="http://tkfile.yes24.com/Upload2/Display/202301/20230117/gmain_top_44653.jpg/dims/quality/70/" -->
<!-- 								alt=""> -->
<!-- 							<div class="m2-kvs-txt"> -->
<!-- 									<p class="m2-kvs-tit"></p> -->
<!-- 									<p class="m2-kvs-detail">2023.03.25 ~ 2023.06.18 드림씨어터</p> -->
<!-- 								</div></a> -->
<!-- 						</div> -->
<!-- 						<div class="swiper-slide"> -->
<!-- 							<a href="#" target="_self" -->
<!-- 								title="뮤지컬 ＜호프 ： 읽히지 않은 책과 읽히지 않은 인생>" id="img"><img id="imgsrc" -->
<!-- 								src="http://tkfile.yes24.com/Upload2/Display/202302/20230202/gmain_top_44798.jpg/dims/quality/70/" -->
<%-- 								alt="뮤지컬 <호프>"> --%>
<!-- 							<div class="m2-kvs-txt"> -->
<!-- 									<p class="m2-kvs-tit"> -->
<!-- 										뮤지컬 -->
<!-- 										<호프></호프> -->
<!-- 									</p> -->
<!-- 									<p class="m2-kvs-detail">2023.03.16 ~ 2023.06.11 유니플렉스 1관</p> -->
<!-- 								</div></a> -->
<!-- 						</div> -->
<!-- 						<div class="swiper-slide"> -->
<!-- 							<a -->
<!-- 								href="#" -->
<!-- 								target="_self" title="뮤지컬 ＜캣츠＞오리지널 내한－서울（Musical CATS）" id="img"><img id="imgsrc" -->
<!-- 								src="http://tkfile.yes24.com/Upload2/Display/202211/20221110/gmain_top_43998.jpg/dims/quality/70/" -->
<%-- 								alt="뮤지컬 <캣츠> 오리지널 내한"> --%>
<!-- 							<div class="m2-kvs-txt"> -->
<!-- 									<p class="m2-kvs-tit"> -->
<!-- 										뮤지컬 -->
<!-- 										<캣츠> 오리지널 내한</캣츠> -->
<!-- 									</p> -->
<!-- 									<p class="m2-kvs-detail">2022.12 ~ 2023.03 서울, 인천</p> -->
<!-- 								</div></a> -->
<!-- 						</div> -->
<!-- 						<div class="swiper-slide"> -->
<!-- 							<a href="#" target="_self" -->
<!-- 								title="뮤지컬 〈루쓰〉" id="img"><img id="imgsrc" -->
<!-- 								src="http://tkfile.yes24.com/Upload2/Display/202212/20221220/gmain_top_44355.jpg/dims/quality/70/" -->
<%-- 								alt="뮤지컬 <루쓰>"> --%>
<!-- 							<div class="m2-kvs-txt"> -->
<!-- 									<p class="m2-kvs-tit"> -->
<!-- 										뮤지컬 -->
<!-- 										<루쓰></루쓰> -->
<!-- 									</p> -->
<!-- 									<p class="m2-kvs-detail">2023.03.05 ~ 2023.04.02 광림아트센터 -->
<!-- 										BBCH홀</p> -->
<!-- 								</div></a> -->
<!-- 						</div> -->
<!-- 						<div class="swiper-slide"> -->
<!-- 							<a href="#" target="_self" -->
<!-- 								title="뮤지컬 〈베토벤〉" id="img"><img id="imgsrc" -->
<!-- 								src="http://tkfile.yes24.com/Upload2/Display/202211/20221116/gmain_top_44155.jpg/dims/quality/70/" -->
<%-- 								alt="뮤지컬 <베토벤>"> --%>
<!-- 							<div class="m2-kvs-txt"> -->
<!-- 									<p class="m2-kvs-tit"> -->
<!-- 										뮤지컬 -->
<!-- 										<베토벤></베토벤> -->
<!-- 									</p> -->
<!-- 									<p class="m2-kvs-detail">2023.01.12 ~ 2023.03.26 예술의전당 -->
<!-- 										오페라극장</p> -->
<!-- 								</div></a> -->
<!-- 						</div> -->
<!-- 						<div class="swiper-slide"> -->
<!-- 							<a href="#" target="_self" -->
<!-- 								title="디 오리지널 프렌치뮤지컬 갈라콘서트" id="img"><img id="imgsrc" -->
<!-- 								src="http://tkfile.yes24.com/Upload2/Display/202302/20230206/gmain_top_44728.jpg/dims/quality/70/" -->
<!-- 								alt="디 오리지널 프렌치 뮤지컬 콘서트"> -->
<!-- 							<div class="m2-kvs-txt"> -->
<!-- 									<p class="m2-kvs-tit">디 오리지널 프렌치 뮤지컬 콘서트</p> -->
<!-- 									<p class="m2-kvs-detail">2023.03.18 ~ 2023.03.19 세종문화회관 대극장</p> -->
<!-- 								</div></a> -->
<!-- 						</div> -->
<!-- 						<div class="swiper-slide"> -->
<!-- 							<a -->
<!-- 								href="#" -->
<!-- 								target="_self" title="뮤지컬 [브로드웨이 42번가]" id="img"><img id="imgsrc" -->
<!-- 								src="http://tkfile.yes24.com/Upload2/Display/202210/20221007/gmain_top_43616.jpg/dims/quality/70/" -->
<!-- 								alt="뮤지컬 <브로드웨이 42번가>"> -->
<!-- 							<div class="m2-kvs-txt"> -->
<!-- 									<p class="m2-kvs-tit"> -->
<!-- 										뮤지컬 -->
<!-- 										<브로드웨이 42번가></브로드웨이> -->
<!-- 									</p> -->
<!-- 									<p class="m2-kvs-detail">2022.11 ~ 2023.04 전국투어</p> -->
<!-- 								</div></a> -->
<!-- 						</div> -->
					</div>
				</div>
			</div>
		</div>
		<div class="swiper-button-next m2-kvs"></div>
		<div class="swiper-button-prev m2-kvs"></div>
	</div>


<section class="m2-sec02">  <!-- WHAT"S HOT 시작 -->
		<p class="m2-tit">   <!-- WHAT"S HOT 이미지 -->
			<img src="http://tkfile.yes24.com/imgNew/genre/m2-tit02.png"
				alt="">
		</p>   <!-- /WHAT"S HOT 이미지 -->
		<div class="ms-list-imgs">   <!-- 첫줄 5개의 컨텐츠 DIV 5개씩 묶고 끊기 -->
		<c:forEach var="i" items="${musicallist2}" varStatus="cnt">
		<a href="/web/contentImg?imgsrc=${i.imgsrc}" target="_self"
				title="${i.title}" id="img"><div class="list-bigger-wrap">
					<img class="lazyload" id="imgsrc"
						data-src="${i.imgsrc}"
						alt="">
					<div class="list-bigger-txt">
						<p class="list-b-tit1">
							${i.ptitle}
						</p>
<!-- 						<p class="list-b-tit2">프리뷰 할인 30%</p> -->
<!-- 						<p class="list-b-circle">30%</p> -->
					</div>
				</div></a>
				</c:forEach>
<%-- 			<a href="#" target="_self" title="뮤지컬 <로빈>" id="img"><div  --%>
<!-- 					class="list-bigger-wrap"> -->
<!-- 					<img class="lazyload" id="imgsrc" -->
<!-- 						data-src="http://tkfile.yes24.com/upload2/perfblog/202301/20230130/20230130-44163.jpg/dims/quality/70/" -->
<%-- 						alt="뮤지컬 <로빈>"> --%>
<!-- 					<div class="list-bigger-txt"> -->
<!-- 						<p class="list-b-tit1"> -->
<!-- 							뮤지컬 -->
<!-- 							<로빈></로빈> -->
<!-- 						</p> -->
<!-- <!-- 						<p class="list-b-tit2">조기예매 할인 30%</p> --> -->
<!-- <!-- 						<p class="list-b-circle">30%</p> --> -->
<!-- 					</div> -->
<!-- 				</div></a> -->
<!-- 				<a href="#" target="_self" -->
<%-- 				title="뮤지컬 <어린왕자>" id="img"><div class="list-bigger-wrap"> --%>
<!-- 					<img class="lazyload" id="imgsrc" -->
<!-- 						data-src="http://tkfile.yes24.com/upload2/perfblog/202301/20230131/20230131-44801.jpg/dims/quality/70/" -->
<%-- 						alt="뮤지컬 <어린왕자>"> --%>
<!-- 					<div class="list-bigger-txt"> -->
<!-- 						<p class="list-b-tit1"> -->
<!-- 							뮤지컬 -->
<!-- 							<어린왕자></어린왕자> -->
<!-- 						</p> -->
<!-- <!-- 						<p class="list-b-tit2">조기예매 할인 20%</p> --> -->
<!-- <!-- 						<p class="list-b-circle">20%</p> --> -->
<!-- 					</div> -->
<!-- 				</div></a><a href="#" target="_self" -->
<%-- 				title="뮤지컬 <윌리엄과 윌리엄의 윌리엄들>" id="img"><div class="list-bigger-wrap"> --%>
<!-- 					<img class="lazyload" id="imgsrc" -->
<!-- 						data-src="http://tkfile.yes24.com/upload2/perfblog/202301/20230118/20230118-44690.jpg/dims/quality/70/" -->
<%-- 						alt="뮤지컬 <윌리엄과 윌리엄의 윌리엄들>"> --%>
<!-- 					<div class="list-bigger-txt"> -->
<!-- 						<p class="list-b-tit1"> -->
<!-- 							뮤지컬 -->
<!-- 							<윌리엄과 윌리엄의 윌리엄들></윌리엄과> -->
<!-- 						</p> -->
<!-- <!-- 						<p class="list-b-tit2">프리뷰 할인 30%</p> --> -->
<!-- <!-- 						<p class="list-b-circle">30%</p> --> -->
<!-- 					</div> -->
<!-- 				</div></a><a href="#" target="_self" -->
<%-- 				title="뮤지컬 <미드나잇 : 앤틀러스>" id="img"><div class="list-bigger-wrap"> --%>
<!-- 					<img class="lazyload" id="imgsrc" -->
<!-- 						data-src="http://tkfile.yes24.com/upload2/perfblog/202301/20230118/20230118-44374.jpg/dims/quality/70/" -->
<%-- 						alt="뮤지컬 <미드나잇 : 앤틀러스>"> --%>
<!-- 					<div class="list-bigger-txt"> -->
<!-- 						<p class="list-b-tit1"> -->
<!-- 							뮤지컬 -->
<!-- 							<미드나잇 : 앤틀러스></미드나잇> -->
<!-- 						</p> -->
<!-- <!-- 						<p class="list-b-tit2">프리뷰 할인 30%</p> --> -->
<!-- <!-- 						<p class="list-b-circle">30%</p> --> -->
<!-- 					</div> -->
<%-- 				</div></a><a href="#" target="_self" title="뮤지컬 <앨리스>" id="img"><div --%>
<!-- 					class="list-bigger-wrap"> -->
<!-- 					<img class="lazyload" id="imgsrc" -->
<!-- 						data-src="http://tkfile.yes24.com/upload2/perfblog/202302/20230206/20230206-44525.jpg/dims/quality/70/" -->
<%-- 						alt="뮤지컬 <앨리스>"> --%>
<!-- 					<div class="list-bigger-txt"> -->
<!-- 						<p class="list-b-tit1"> -->
<!-- 							뮤지컬 -->
<!-- 							<앨리스></앨리스> -->
<!-- 						</p> -->
<!-- <!-- 						<p class="list-b-tit2">All For One 할인 25%</p> --> -->
<!-- <!-- 						<p class="list-b-circle">25%</p> --> -->
<!-- 					</div> -->
<!-- 				</div></a> -->
		</div>   <!-- /첫줄 5개의 컨텐츠 DIV 5개씩 묶고 끊기 -->
		<div class="ms-list-imgs">  <!-- 둘째줄 5개의 컨텐츠 DIV 5개씩 묶고 끊기 -->
		<c:forEach var="i" items="${musicallist3}" varStatus="cnt">
		<a href="/web/contentImg?imgsrc=${i.imgsrc}" target="_self"
				title="${i.title}" id="img"><div class="list-bigger-wrap">
					<img class="lazyload" id="imgsrc"
						data-src="${i.imgsrc}"
						alt="">
					<div class="list-bigger-txt">
						<p class="list-b-tit1">
							${i.ptitle}
						</p>
<!-- 						<p class="list-b-tit2">프리뷰 할인 30%</p> -->
<!-- 						<p class="list-b-circle">30%</p> -->
					</div>
				</div></a>
				</c:forEach>
<!-- 			<a href="#" target="_self" title="뮤지컬 〈루드윅 : 베토벤 더 피아노〉" id="img"><div -->
<!-- 			 class="list-bigger-wrap"> -->
<!-- 					<img class="lazyload" id="imgsrc" -->
<!-- 						data-src="http://tkfile.yes24.com/upload2/perfblog/202301/20230125/20230125-44090.jpg/dims/quality/70/" -->
<!-- 				alt="뮤지컬 〈루드윅 : 베토벤 더 피아노〉"> -->
<!-- 					<div class="list-bigger-txt"> -->
<!-- 						<p class="list-b-tit1"> -->
<!-- 							뮤지컬 -->
<!-- 							<루드윅:베토벤 더 피아노></루드윅:베토벤> -->
<!-- 						</p> -->
<!-- <!-- 						<p class="list-b-tit2">재관람 할인 30%</p> --> -->
<!-- <!-- 						<p class="list-b-circle">30%</p> --> -->
<!-- 					</div> -->
<%-- 				</div></a><a href="#" target="_self" title="뮤지컬 <결투>" id="img"><div --%>
<!-- 					class="list-bigger-wrap"> -->
<!-- 					<img class="lazyload" id="imgsrc" -->
<!-- 						data-src="http://tkfile.yes24.com/upload2/perfblog/202301/20230102/20230102-44576.jpg/dims/quality/70/" -->
<%-- 						alt="뮤지컬 <결투>"> --%>
<!-- 					<div class="list-bigger-txt"> -->
<!-- 						<p class="list-b-tit1"> -->
<!-- 							뮤지컬 -->
<!-- 							<결투></결투> -->
<!-- 						</p> -->
<!-- <!-- 						<p class="list-b-tit2">입문 할인 50%</p> --> -->
<!-- <!-- 						<p class="list-b-circle">50%</p> --> -->
<!-- 					</div> -->
<!-- 				</div></a><a href="#" target="_self" -->
<%-- 				title="뮤지컬 <천사에 관하여: 타락천사 편>" id="img"><div class="list-bigger-wrap"> --%>
<!-- 					<img class="lazyload" id="imgsrc" -->
<!-- 						data-src="http://tkfile.yes24.com/upload2/perfblog/202212/20221220/20221220-44476.jpg/dims/quality/70/" -->
<%-- 						alt="뮤지컬 <천사에 관하여: 타락천사 편>"> --%>
<!-- 					<div class="list-bigger-txt"> -->
<!-- 						<p class="list-b-tit1"> -->
<!-- 							뮤지컬 -->
<!-- 							<천사에 관하여: 타락천사 편></천사에> -->
<!-- 						</p> -->
<!-- <!-- 						<p class="list-b-tit2">재관람 할인 20%</p> --> -->
<!-- <!-- 						<p class="list-b-circle">20%</p> --> -->
<!-- 					</div> -->
<!-- 				</div></a><a href="#" target="_self" -->
<%-- 				title="뮤지컬 <라흐마니노프>" id="img"> --%>
<!-- 				<div class="list-bigger-wrap"> -->
<!-- 					<img class="lazyload" id="imgsrc" -->
<!-- 						data-src="http://tkfile.yes24.com/upload2/perfblog/202302/20230228/20230228-45040.jpg/dims/quality/70/" -->
<%-- 						alt="뮤지컬 <라흐마니노프>"> --%>
<!-- 					<div class="list-bigger-txt"> -->
<!-- 						<p class="list-b-tit1"> -->
<!-- 							뮤지컬 <라흐마니노프></라흐마니노프> -->
<!-- 						</p> -->
<!-- <!-- 						<p class="list-b-tit2">조기예매 할인 20%</p> --> -->
<!-- <!-- 						<p class="list-b-circle">20%</p> --> -->
<!-- 					</div> -->
<!-- 				</div> -->
<%-- 			</a><a href="#" target="_self" title="뮤지컬 <빨래>" id="img"><div --%>
<!-- 					class="list-bigger-wrap"> -->
<!-- 					<img class="lazyload" id="imgsrc" -->
<!-- 						data-src="http://tkfile.yes24.com/upload2/perfblog/202301/20230118/20230118-44745.jpg/dims/quality/70/" -->
<%-- 						alt="뮤지컬 <빨래>"> --%>
<!-- 					<div class="list-bigger-txt"> -->
<!-- 						<p class="list-b-tit1"> -->
<!-- 							뮤지컬 -->
<!-- 							<빨래></빨래> -->
<!-- 						</p> -->
<!-- <!-- 						<p class="list-b-tit2">R석 할인 25%</p> --> -->
<!-- <!-- 						<p class="list-b-circle">25%</p> --> -->
<!-- 					</div> -->
<!-- 				</div></a> -->
		</div>   <!-- /둘째줄 5개의 컨텐츠 DIV 5개씩 묶고 끊기 -->
	</section>   <!-- WHAT"S HOT 전체   -->



<section class="m2-sec05">   
		<div class="ms5-wrap">  
			<div class="ms5-l"> <!-- WEEKLY RANKING 시작 -->
				<p class="ms5-l-tit" id="ranking">
					WEEKLY RANKING 
<!-- 					<a href="/Rank/Musical"><img -->
<!-- 						src="/web/resources/ticket.yes24.com/imgNew/genre/ms5-more.png" -->
<!-- 						alt=""></a> -->
				</p>
				<ul>
				<c:forEach var="i" items="${musicallist4}">
				<li><a
						href="/web/contentImg?imgsrc=${i.imgsrc}"
						title="${i.title}" id="img"><dl>
								<dt>
									${i.ranking}<span class="dash">-</span>
								</dt>
								<dd>
									<img id="imgsrc"
										src="${i.imgsrc}"
										alt="">
								</dd>
								<dd class="ms5-l-txt">
									<p class="ms5-l-txt1">${i.ptitle}</p>
									<p class="ms5-l-txt2">
										${i.detail}
									</p>
								</dd>
							</dl></a></li>
							</c:forEach>
<!-- 					<li class="on"><a -->
<!-- 						href="#" -->
<!-- 						title="뮤지컬 〈천사에 관하여: 타락천사 편〉" id="img"><dl> -->
<!-- 								<dt> -->
<!-- 									1위<span class="dash">-</span> -->
<!-- 								</dt> -->
<!-- 								<dd> -->
<!-- 									<img id="imgsrc" -->
<!-- 										src="http://tkfile.yes24.com/upload2/perfblog/202212/20221220/20221220-44476.jpg/dims/quality/70/" -->
<!-- 										alt=""> -->
<!-- 								</dd> -->
<!-- 								<dd class="ms5-l-txt"> -->
<!-- 									<p class="ms5-l-txt1">뮤지컬 〈천사에 관하여: 타락천사 편〉</p> -->
<!-- 									<p class="ms5-l-txt2"> -->
<!-- 										2023.01.17 ~ 2023.03.12<br>대학로 드림아트센터 4관 -->
<!-- 									</p> -->
<!-- 								</dd> -->
<!-- 							</dl></a></li> -->
<!-- 					<li><a -->
<!-- 						href="#" -->
<!-- 						title="뮤지컬 〈미드나잇 : 앤틀러스〉" id="img"><dl> -->
<!-- 								<dt> -->
<!-- 									2위<span class="dash">-</span> -->
<!-- 								</dt> -->
<!-- 								<dd> -->
<!-- 									<img id="imgsrc" -->
<!-- 										src="http://tkfile.yes24.com/upload2/perfblog/202301/20230118/20230118-44374.jpg/dims/quality/70/" -->
<!-- 										alt=""> -->
<!-- 								</dd>  -->
<!-- 								<dd class="ms5-l-txt"> -->
<!-- 									<p class="ms5-l-txt1">뮤지컬 〈미드나잇 : 앤틀러스〉</p> -->
<!-- 									<p class="ms5-l-txt2"> -->
<!-- 										2023.01.31 ~ 2023.04.23<br>플러스씨어터 -->
<!-- 									</p> -->
<!-- 								</dd> -->
<!-- 							</dl></a></li> -->
<!-- 					<li><a -->
<!-- 						href="#" -->
<!-- 						title="뮤지컬 〈루드윅 : 베토벤 더 피아노〉" id="img"><dl> -->
<!-- 								<dt> -->
<!-- 									3위<span class="dash">-</span> -->
<!-- 								</dt> -->
<!-- 								<dd> -->
<!-- 									<img id="imgsrc" -->
<!-- 										src="http://tkfile.yes24.com/upload2/perfblog/202301/20230125/20230125-44090.jpg/dims/quality/70/" -->
<!-- 										alt=""> -->
<!-- 								</dd> -->
<!-- 								<dd class="ms5-l-txt"> -->
<!-- 									<p class="ms5-l-txt1">뮤지컬 〈루드윅 : 베토벤 더 피아노〉</p> -->
<!-- 									<p class="ms5-l-txt2"> -->
<!-- 										2022.12.20 ~ 2023.03.12<br>예스24스테이지 1관 -->
<!-- 									</p> -->
<!-- 								</dd> -->
<!-- 							</dl></a></li> -->
<!-- 					<li><a -->
<!-- 						href="#" -->
<!-- 						title="은밀하게 위대하게：THE LAST" id="img"><dl> -->
<!-- 								<dt> -->
<!-- 									4위<span class="up">1</span> -->
<!-- 								</dt> -->
<!-- 								<dd> -->
<!-- 									<img id="imgsrc" -->
<!-- 										src="http://tkfile.yes24.com/upload2/perfblog/202302/20230201/20230201-44819.jpg/dims/quality/70/" -->
<!-- 										alt=""> -->
<!-- 								</dd> -->
<!-- 								<dd class="ms5-l-txt"> -->
<!-- 									<p class="ms5-l-txt1">은밀하게 위대하게：THE LAST</p> -->
<!-- 									<p class="ms5-l-txt2"> -->
<!-- 										2023.03.04 ~ 2023.05.07<br>KT&G상상마당 대치아트홀 -->
<!-- 									</p> -->
<!-- 								</dd> -->
<!-- 							</dl></a></li> -->
<!-- 					<li><a -->
<!-- 						href="#" -->
<!-- 						title="뮤지컬 〈로빈〉" id="img"><dl> -->
<!-- 								<dt> -->
<!-- 									5위<span class="down">1</span> -->
<!-- 								</dt> -->
<!-- 								<dd> -->
<!-- 									<img id="imgsrc" -->
<!-- 										src="http://tkfile.yes24.com/upload2/perfblog/202301/20230130/20230130-44163.jpg/dims/quality/70/" -->
<!-- 										alt=""> -->
<!-- 								</dd> -->
<!-- 								<dd class="ms5-l-txt"> -->
<!-- 									<p class="ms5-l-txt1">뮤지컬 〈로빈〉</p> -->
<!-- 									<p class="ms5-l-txt2"> -->
<!-- 										2023.01.09 ~ 2023.04.09<br>대학로 TOM 1관 -->
<!-- 									</p> -->
<!-- 								</dd> -->
<!-- 							</dl></a></li> -->
				</ul>
			</div>   <!-- /WEEKLY RANKING -->

		<div class="ms5-r">   <!-- 지역별 추천 3개 -->
				<p class="ms5-r-tit">
					<span>지역별 추천</span>
				</p>
				<div class="ms5-rs-wrap">   <!-- 지역별 추천 이미지 -->
					<div class="swiper-container ms5-rs">   
						<div class="swiper-wrapper">   <!-- 지역별 추천 컨텐츠 -->
						
						<c:forEach var="i" items="${musicallist5}">
							<div class="swiper-slide">
								<a href="/web/contentImg?imgsrc=${i.imgsrc}" target="_self"
									title="${i.title}" id="img"><span><img id="imgsrc"
										src="${i.imgsrc}"
										alt=""></span>
								<div>
										<p class="ms5-r-txt1">
											${i.ptitle}
										</p>
<!-- 										<p class="ms5-r-txt2">학생 할인 30%</p> -->
									</div>
									<p>${i.detail}</p></a>
							</div>
							</c:forEach>
							
<!-- 							<div class="swiper-slide"> -->
<!-- 								<a href="#" target="_self" -->
<%-- 									title="뮤지컬 <드라큘라>" id="img"><span><img id="imgsrc" --%>
<!-- 										src="http://tkfile.yes24.com/upload2/perfblog/202112/20211215/20211215-41064.jpg/dims/quality/70/" -->
<%-- 										alt="뮤지컬 <드라큘라>"></span> --%>
<!-- 								<div> -->
<!-- 										<p class="ms5-r-txt1"> -->
<!-- 											뮤지컬 -->
<!-- 											<드라큘라></드라큘라> -->
<!-- 										</p> -->
<!-- <!-- 										<p class="ms5-r-txt2">학생 할인 30%</p> --> -->
<!-- 									</div> -->
<!-- 									<p>송파구</p></a> -->
<!-- 							</div> -->
<!-- 							<div class="swiper-slide"> -->
<!-- 								<a href="#" target="_self" -->
<%-- 									title="뮤지컬 <미드나잇 : 앤틀러스>" id="img"><span><img id="imgsrc" --%>
<!-- 										src="http://tkfile.yes24.com/upload2/perfblog/202301/20230118/20230118-44374.jpg/dims/quality/70/" -->
<%-- 										alt="뮤지컬 <미드나잇 : 앤틀러스>"></span> --%>
<!-- 								<div> -->
<!-- 										<p class="ms5-r-txt1"> -->
<!-- 											뮤지컬 -->
<!-- 											<미드나잇 : 앤틀러스></미드나잇 : 앤틀러스> -->
<!-- 										</p> -->
<!-- <!-- 										<p class="ms5-r-txt2">프리뷰 할인 30%</p> --> -->
<!-- 									</div> -->
<!-- 									<p>종로구</p> -->
<!-- 									</a> -->
<!-- 							</div> -->
<!-- 							<div class="swiper-slide"> -->
<!-- 								<a href="#" target="_self" -->
<%-- 									title="뮤지컬 <결투>"><span><img --%>
<!-- 										src="http://tkfile.yes24.com/upload2/perfblog/202301/20230102/20230102-44576.jpg/dims/quality/70/" -->
<%-- 										alt="뮤지컬 <결투>"></span> --%>
<!-- 								<div> -->
<!-- 										<p class="ms5-r-txt1"> -->
<!-- 											뮤지컬 <결투></결투> -->
<!-- 										</p> -->
<!-- <!-- 										<p class="ms5-r-txt2">청소년 할인 30%</p> --> -->
<!-- 									</div> -->
<!-- 									<p>강남구</p></a> -->
<!-- 							</div> -->
						</div>   <!-- 지역별 추천 컨텐츠 -->
					</div>   
					<div class="swiper-button-next ms5-rs"></div>
					<div class="swiper-button-prev ms5-rs"></div>
				</div>   <!-- /지역별 추천 이미지 -->
			</div>   <!-- /지역별 추천 3개 -->
		</div>
	</section>
	
	</form>

<script type="text/javascript">
		$(function() {
			$(".lazyload").Lazy(
					{
						effect : "fadeIn",
						effectTime : 200,
						defaultImage : "http://tkfile.yes24.com"
								+ "/imgNew/common/noimg.gif"
					});
		});

		var ua = window.navigator.userAgent.toLowerCase();
		if (/iphone/.test(ua) || /android/.test(ua) || /opera/.test(ua)
				|| /bada/.test(ua)) {
			if (confirm("모바일 웹서비스 이용이 가능합니다.\r\n모바일웹으로 이동하시겠습니까? ")) {
				location.href = "http://m.ticket.yes24.com";
			}
		}
	</script>
</body>
</html>