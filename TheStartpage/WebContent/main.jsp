<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, minimal-ui" />
	<title>My StartPage</title>
	
	<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
	<script src="resources/js/jquery.pageScroll.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.5.0/lodash.min.js"></script>
	<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/gridstack.js/0.3.0/gridstack.min.js'></script>
	<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/gridstack.js/0.3.0/gridstack.jQueryUI.min.js'></script>
	<!-- <script type="text/javascript" src="resources/js/main.js"></script> -->
	<link rel="stylesheet" href="resources/css/gridstack.css"/>
	<link rel="stylesheet" href="resources/css/main.css">
	
</head>
<body>
	<!-- 전체를 감싸주는 div wrapper  -->
	<!-- A div wrapper covering the whole page -->
	<div id="main" class="wrapper">
		<!-- 첫번 째 메인 페이지  -->
		<div id="page1" class="page">
			
			<div id="title">
				<a href="https://developers.google.com/" target="blank"><img class="bigIcon" src="resources/img/main/android_7.png"></a>
				<div><span id="fordevelopers">For Developers,</span></div>
				<div id="yourstartpageWrapper"><span id="yourstartpage">It's your StartPage!</span></div>
				<div id="icons">
					<a href="https://docs.oracle.com/javase/specs/" target="blank"><img class="smallIcon" src="resources/img/main/java.png"></a>
					<a href="https://www.w3.org/TR/2010/WD-html5-20100624/" target="blank"><img class="smallIcon" src="resources/img/main/html5.png"></a>
					<a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Language_Resources" target="blank"><img class="smallIcon" src="resources/img/main/javascript.png"></a>
					<a href="https://github.com/" target="blank"><img class="smallIcon" src="resources/img/main/github.png"></a>
				</div>
			</div>
				<%@include file="view/main/login.jsp"%>
				<%@include file="view/main/findPwd.jsp"%>
				<%@include file="view/main/join.jsp" %>
			<div id="btns">
				<img src="resources/img/main/266177.png" id="btn1"/>
				<c:if test="${ not empty userVO }">
				<img src="resources/img/main/618419.png" id="btn2"/>
				</c:if>
			</div>
			
		</div>
		<!-- 두번 째 메인 페이지  -->
		<div id="page2" class="page" style="z-index:2;">
			<c:choose>
				<c:when test="${ empty userVO }">
					<img src="resources/img/main/pleaseloginfinal.png" id="pleaseLogin"/>
				</c:when>
				<c:when test="${ empty configVO}">
					<img src="resources/img/main/pleaseconfigurefinal.png" id="pleaseConfigure"/>
				</c:when>
				<c:otherwise>
					<br>
					<div id="gridstack-wrapper">
					<div class="grid-stack">
						<c:forEach var="widgetName" items="${ configVO.nameArray }" varStatus="status">
							<div class="grid-stack-item" 
								data-gs-x="${configVO.xPointArray[status.index]}"
							 	data-gs-y="${configVO.yPointArray[status.index]}"
								data-gs-width="${configVO.widthArray[status.index]}" 
								data-gs-height="${configVO.heightArray[status.index]}"
								id="${widgetName}">
								<div class="grid-stack-item-content">
									<iframe src="view/widget-${widgetName}.jsp"></iframe>
								</div>
							</div>
						</c:forEach>
					</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<script>
	$('#main').pageScroll();
	$('#back').on('click', function() {
		$('#main').moveToPage(0);
	});

	$("#btn1").mouseover(function() {
		$(this).attr("src", $(this).attr("src").replace("266177", "266076"));
	});
	$("#btn1").mouseout(function() {
		$(this).attr("src", $(this).attr("src").replace("266076", "266177"));
	});

	$("#btn2").mouseover(function() {
		$(this).attr("src", $(this).attr("src").replace("618419", "618470"));
	});
	$("#btn2").mouseout(function() {
		$(this).attr("src", $(this).attr("src").replace("618470", "618419"));
	});

	$("#btn1").click(function() {
		$("#login_modal").show();
	}); 
	
	$("#btn2").click(function(){
		$(location).attr('href',"/TheStartpage/config.do");
	});

	$(function() {
		/* scroll 원페이지 기능 */
		$("#draggable").draggable();
		
		/* 0번-58번 월페이퍼 중에 하나가 나옴 */
		var randomWallpaperNum = Math.floor(Math.random()*59);
		$("#page1").css("background-image", "url(/TheStartpage/resources/img/wallpaper/wallpaper"+randomWallpaperNum+".jpg)");  
		/* GridStack 부분 시작 */
		var options = {
			cellHeight: 70,
			/* 영역 지정해버리기 */
			width : 12,
			height : 10,
			disableResize : true,
			disableDrag : true
		/* 디폴트 세로 마진이 20이라서 0으로 처리하고 css에서 마진 값을 주기로 함 */
		/* verticalMargin:0 */
		/* 애초에 verticalMargin이 20이고 content를 양옆으로 10 줄이는 방식으로 만들었기에 20 쓰는 것이 좋음 */
		};

		$('.grid-stack').gridstack(options);
		
		
		
	});
	</script>
</body>
</html>