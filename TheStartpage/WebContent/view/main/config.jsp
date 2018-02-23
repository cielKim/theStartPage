<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My StartPage</title>

<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script src="/TheStartpage/resources/js/jquery.pageScroll.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.5.0/lodash.min.js"></script>
<script src="/TheStartpage/resources/js/gridstack.js"></script>
<!-- <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/gridstack.js/0.3.0/gridstack.min.js'></script> -->
<script src="/TheStartpage/resources/js/gridstack.jQueryUI.js"></script>
<!-- <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/gridstack.js/0.3.0/gridstack.jQueryUI.min.js'></script> -->
<script src="/TheStartpage/resources/js/widget-weather.js"></script>

<link href="https://fonts.googleapis.com/css?family=Permanent+Marker" rel="stylesheet">
<link rel="stylesheet" href="/TheStartpage/resources/css/gridstack.css" />
<link rel="stylesheet" href="/TheStartpage/resources/css/main.css">
<link rel="stylesheet" href="/TheStartpage/resources/css/config.css">



</head>
<body>
	<div id="config" style="z-index:100;">
	<div id="config-wrapper">
	<%-- <span id="config-title"><c:out value="${userVO.email}"/></span><br> --%>
	<h3 id="config-title2">설정 페이지</h3>
	<hr id="config-line"><br>
	<div id="config-body">
		<form>
			<table id="config-table">
				<tr>
					<td>날씨</td>
					<td><div class="checkbox custom"><input type="checkbox" id="weather_chk" value="weather" class="css-checkbox"><label for="weather_chk" class="css-label"></label></div></td>
					<!-- <th><input type="checkbox" id="weather_chk" value="weather" class="widget_chk"></th> -->
					<td><input type="hidden" id="weather-width" value="3"></td>
					<td><input type="hidden" id="weather-height" value="2"></td>
				</tr>
				<tr>
					<td>트위터</td>
					<td><div class="checkbox custom"><input type="checkbox" id="twitter_chk" value="twitter" class="css-checkbox"><label for="twitter_chk" class="css-label"></label></div></td>
					<!-- <th><input type="checkbox" id="twitter_chk" value="twitter" class="widget_chk"></th> -->
					<td><input type="hidden" id="twitter-width" value="3"></td>
					<td><input type="hidden" id="twitter-height" value="4"></td>
				</tr>
				<tr>
					<td>IT뉴스</td>
					<td><div class="checkbox custom"><input type="checkbox" id="itnews_chk" value="itnews" class="css-checkbox"><label for="itnews_chk" class="css-label"></label></div></td>
					<!-- <td><input type="checkbox" id="itnews_chk" value="itnews" class="widget_chk"></td> -->
					<td><input type="hidden" id="itnews-width" value="3"></td>
					<td><input type="hidden" id="itnews-height" value="3"></td>
				</tr>
				<tr>
					<td>IT베스트셀러</td>
					<td><div class="checkbox custom"><input type="checkbox" id="itbookbest_chk" value="itbookbest" class="css-checkbox"><label for="itbookbest_chk" class="css-label"></label></div></td>
					<!-- <th><input type="checkbox" id="itbookbest_chk" value="itbookbest" class="widget_chk"></th> -->
					<td><input type="hidden" id="itbookbest-width" value="3"></td>
					<td><input type="hidden" id="itbookbest-height" value="3"></td>
				</tr>
				<tr>
					<td>IT용어집</td>
					<td><div class="checkbox custom"><input type="checkbox" id="itword_chk" value="itword" class="css-checkbox"><label for="itword_chk" class="css-label"></label></div></td>
					<!-- <th><input type="checkbox" id="itword_chk" value="itword" class="widget_chk"></th> -->
					<td><input type="hidden" id="itword-width" value="3"></td>
					<td><input type="hidden" id="itword-height" value="3"></td>
				</tr>
				<tr>
					<td>논문검색</td>
					<td><div class="checkbox custom"><input type="checkbox" id="papersearch_chk" value="papersearch" class="css-checkbox"><label for="papersearch_chk" class="css-label"></label></div></td>
					<!-- <th><input type="checkbox" id="papersearch_chk" value="papersearch" class="widget_chk"></th> -->
					<td><input type="hidden" id="papersearch-width" value="3"></td>
					<td><input type="hidden" id="papersearch-height" value="4"></td>
				</tr>
				<tr>
					<td>스트레칭</td>
					<td><div class="checkbox custom"><input type="checkbox" id="stretching_chk" value="stretching" class="css-checkbox"><label for="stretching_chk" class="css-label"></label></div></td>
					<!-- <th><input type="checkbox" id="stretching_chk" value="stretching" class="widget_chk"></th> -->
					<td><input type="hidden" id="stretching-width" value="3"></td>
					<td><input type="hidden" id="stretching-height" value="3"></td>
				</tr>
				<tr>
					<td>메모장</td>
					<td><div class="checkbox custom"><input type="checkbox" id="memopad_chk" value="memopad" class="css-checkbox"><label for="memopad_chk" class="css-label"></label></div></td>
					<!-- <th><input type="checkbox" id="memopad_chk" value="memopad" class="widget_chk"></th> -->
					<td><input type="hidden" id="memopad-width" value="3"></td>
					<td><input type="hidden" id="memopad-height" value="3"></td>
				</tr>
				<tr>
					<td>팁과정보</td>
					<td><div class="checkbox custom"><input type="checkbox" id="tipandinfo_chk" value="tipandinfo" class="css-checkbox"><label for="tipandinfo_chk" class="css-label"></label></div></td>
					<!-- <th><input type="checkbox" id="memopad_chk" value="memopad" class="widget_chk"></th> -->
					<td><input type="hidden" id="tipandinfo-width" value="3"></td>
					<td><input type="hidden" id="tipandinfo-height" value="3"></td>
				</tr>
				<tr>
					<td>일휴식타이머</td>
					<td><div class="checkbox custom"><input type="checkbox" id="timer_chk" value="timer" class="css-checkbox"><label for="timer_chk" class="css-label"></label></div></td>
					<!-- <th><input type="checkbox" id="memopad_chk" value="memopad" class="widget_chk"></th> -->
					<td><input type="hidden" id="timer-width" value="3"></td>
					<td><input type="hidden" id="timer-height" value="3"></td>
				</tr>		
				<tr>
					<td>투두리스트</td>
					<td><div class="checkbox custom"><input type="checkbox" id="todolist_chk" value="todolist" class="css-checkbox"><label for="todolist_chk" class="css-label"></label></div></td>
					<!-- <th><input type="checkbox" id="todolist_chk" value="todolist" class="widget_chk"></th> -->
					<td><input type="hidden" id="todolist-width" value="3"></td>
					<td><input type="hidden" id="todolist-height" value="3"></td>
				</tr>
				<tr>
					<td>컨퍼런스알림</td>
					<td><div class="checkbox custom"><input type="checkbox" id="conference_chk" value="conference" class="css-checkbox"><label for="conference_chk" class="css-label"></label></div></td>
					<!-- <th><input type="checkbox" id="conference_chk" value="conference" class="widget_chk"></th> -->
					<td><input type="hidden" id="conference-width" value="3"></td>
					<td><input type="hidden" id="conference-height" value="2"></td>
				</tr>
				<tr>
					<td>프로젝트찾기</td>
					<td><div class="checkbox custom"><input type="checkbox" id="projectfinder_chk" value="projectfinder" class="css-checkbox"><label for="projectfinder_chk" class="css-label"></label></div></td>
					<!-- <th><input type="checkbox" id="projectfinder_chk" value="projectfinder" class="projectfinder_chk"></th> -->
					<td><input type="hidden" id="projectfinder-width" value="3"></td>
					<td><input type="hidden" id="projectfinder-height" value="4"></td>
				</tr>			
			</table>
			
			<!-- <br><input id="myConfig" type="button" value="기존설정"/> -->
			<br><input id="reset" class="configButton" type="button" value="초기화">
			<input id="configure" class="configButton" type="button" value="설정"/>
			<input id="cancel" class="configButton" type="button" value="취소"/>
		</form>
	</div>
	</div>
		<img id="configIcon" src="/TheStartpage/resources/img/config/config_logo_0.png">	
	</div>
	<div id="gridstack-wrapper">
			<div class="grid-stack">
			    <!-- 이런 식으로 들어가게 됨
			    <div class="grid-stack-item"
			        data-gs-x="5" data-gs-y="0"
			        data-gs-width="3" data-gs-height="3">
			            <div class="grid-stack-item-content" id="facebook">
			            <iframe src="/TheStartpage/view/widget-facebook.jsp"></iframe>
			            </div>
			    </div> -->
			    
			</div>
		</div>
<script src="/TheStartpage/resources/js/sweetalert2.all.min.js"></script>		
<script>
$(function() {
	/* GridStack 부분 시작 */
	var options = {
		cellHeight: 70,
		/* 영역 지정해버리기 */
		width : 12,
		height : 10,
		disableResize : true,
	/* 디폴트 세로 마진이 20이라서 0으로 처리하고 css에서 마진 값을 주기로 함 */
	/* verticalMargin:0 */
	/* 애초에 verticalMargin이 20이고 content를 양옆으로 10 줄이는 방식으로 만들었기에 20 쓰는 것이 좋음 */
	};

	$('.grid-stack').gridstack(options);
	
	/* 환경설정 페이지 들어가자마자 기존에 회원이 설정한 것을 불러들이기 */
	$.ajax({
					url:"/TheStartpage/myConfigProcess.do",
					data:{
						userEmail: "${sessionScope.userVO.email}"
					},
					async: false,
					type:"POST",
					success:function(data){
						swal({
							type:"info",
							text:"회원 설정값을 가져옵니다.",
							confirmButtonText: '확인',
							confirmButtonColor: '#3085d6',
							allowOutsideClick:false
						});
						//alert("회원 설정값을 가져옵니다.");
						var params = data.trim();
						if(params.length>0){
							var paramsList = params.split("&");
							
							/* 위젯 설정 만들 준비 */
							var grid = $('.grid-stack').data('gridstack');
							
							/* 위젯 설정 스트링 params를 분석하기 시작함 */
							for(var i=0;i<paramsList.length;i++){
								var widgetName;
								var paramEach = paramsList[i].split(",");
								var widgetId = paramEach[0];
								var optionsString = paramEach[1];
								var xPoint = paramEach[2];
								var yPoint = paramEach[3];
								var width;
								var height;
								var options;
								var el;
								
								if(widgetId=='weather'){
									widgetName = '날씨';
									width = $('#weather-width').val();
									height = $('#weather-height').val();
									options = optionsString.split("/");
									
									if(options.length==3){
										el = '<div class="grid-stack-item"'
											+'id="'+widgetId+'">'
											+'<div class="grid-stack-item-content">'
											+'<span class="widget_title">'+widgetName+'</span><hr>'
											+'<br><span class="widget_desc">날씨 지역을 선택해주세요</span>'
											+'<div id="weather-wrapper">'
											+'<br><select name="sido1" id="sido1"><option value="'+options[0]+'">'+options[0]+'</select>'
											+'<select name="gugun1" id="gugun1"><option value="'+options[1]+'">'+options[1]+'</select>'
											+'<select name="dong1" id="dong1"><option value="'+options[2]+'">'+options[2]+'</select>'
											+' <input type="button" id="weather-reset" value="재설정">';
											+'</div></div></div>';
									}
									else{
										el = '<div class="grid-stack-item"'
											+'id="'+widgetId+'">'
											+'<div class="grid-stack-item-content">'
											+'<span class="widget_title">'+widgetName+'</span><hr>'
											+'<br><span class="widget_desc">날씨 지역을 선택해주세요</span>'
											+'<div id="weather-wrapper">'
											+'<br><select name="sido1" id="sido1"></select>'
											+'<select name="gugun1" id="gugun1"></select>'
											+'<select name="dong1" id="dong1"></select>'
											+'<script type="text/javascript">'
											+' new sojaeji("sido1", "gugun1", "dong1");</scr'+'ipt>'
											+'</div></div></div>';
									}
									$('#'+widgetId+"_chk").prop("checked", true);
									grid.addWidget(el, xPoint, yPoint, width, height, false);
									
								}
								else if(widgetId=='itbookbest'){
									widgetName = 'IT베스트셀러';
									width = $('#itbookbest-width').val();
									height = $('#itbookbest-height').val();
									options = optionsString.split("/");
									
									el = '<div class="grid-stack-item"'
										+'id="'+widgetId+'">'
										+'<div class="grid-stack-item-content">'
										+'<span class="widget_title">'+widgetName+'</span><hr>'
										+'<br><span class="widget_desc">교보문고/알라딘/Yes24 통합 베스트셀러</span><br>'
										+'<div class="optionwrapper"><table class="itbookbest_table"><tr>'
										+'<td>컴퓨터공학</td>'
										+'<td><div class="optionbox optioncustom"><input type="checkbox" class="itbookbest-option" id="computerEngineering" value="computerEngineering">'
										+'<label for="computerEngineering" class="css-optionlabel"></label></div></td></tr>'
										+'<tr><td>게임</td>'
										+'<td><div class="optionbox optioncustom"><input type="checkbox" class="itbookbest-option" id="game" value="game">'
										+'<label for="game" class="css-optionlabel"></label></div></td></tr>'
										+'<tr><td>개발방법론</td>'
										+'<td><div class="optionbox optioncustom"><input type="checkbox" class="itbookbest-option" id="methodologies" value="methodologies">'
										+'<label for="methodologies" class="css-optionlabel"></label></div></td></tr>'
										+'<tr><td>모바일</td>'
										+'<td><div class="optionbox optioncustom"><input type="checkbox" class="itbookbest-option" id="mobileProgramming" value="mobileProgramming">'
										+'<label for="mobileProgramming" class="css-optionlabel"></label></div></td></tr>'
										+'<tr><td>OS/DB/네트워크</td>'
										+'<td><div class="optionbox optioncustom"><input type="checkbox" class="itbookbest-option" id="osNetworkDatabase" value="osNetworkDatabase">'
										+'<label for="osNetworkDatabase" class="css-optionlabel"></label></div></td></tr>'
										+'<tr><td>프로그래밍 언어</td>'
										+'<td><div class="optionbox optioncustom"><input type="checkbox" class="itbookbest-option" id="programmingLanguage" value="programmingLanguage">'
										+'<label for="programmingLanguage" class="css-optionlabel"></label></div></td></tr>'
										+'<tr><td>보안/해킹</td>'
										+'<td><div class="optionbox optioncustom"><input type="checkbox" class="itbookbest-option" id="securityHacking" value="securityHacking">'
										+'<label for="securityHacking" class="css-optionlabel"></label></div></td></tr>'
										+'<tr><td>웹사이트</td>'
										+'<td><div class="optionbox optioncustom"><input type="checkbox" class="itbookbest-option" id="website" value="website">'
										+'<label for="website" class="css-optionlabel"></label></div></td></tr>'
										+'</table></div></div></div>';
										
									$('#'+widgetId+"_chk").prop("checked", true);
									grid.addWidget(el, xPoint, yPoint, width, height, false);
									
									var optionIndex = 0;
									while(optionIndex<options.length){
										$('input[value="'+options[optionIndex]+'"]').prop("checked",true);
										optionIndex++;
									}
										
								}
								else if(widgetId=='itnews'){
									widgetName = 'IT뉴스';
									width = $('#itnews-width').val();
									height = $('#itnews-height').val();
									
									el = '<div class="grid-stack-item"'
										+'id="'+widgetId+'">'
										+'<div class="grid-stack-item-content">'
										+'<span class="widget_title">'+widgetName+'</span><hr>'
										+'<br><span class="widget_desc">디지털데일리와 ITWorld 뉴스 기사</span>'
										+'</div></div>';
									
									$('#'+widgetId+"_chk").prop("checked", true);
									grid.addWidget(el, xPoint, yPoint, width, height, false);
								}
								else if(widgetId=='papersearch'){
									widgetName = '논문검색';
									width = $('#papersearch-width').val();
									height = $('#papersearch-height').val();
									
									el = '<div class="grid-stack-item"'
										+'id="'+widgetId+'">'
										+'<div class="grid-stack-item-content">'
										+'<span class="widget_title">'+widgetName+'</span><hr>'
										+'<br><span class="widget_desc">키워드로 논문 검색을 할 수 있습니다</span>'
										+'</div></div>';
									
									$('#'+widgetId+"_chk").prop("checked", true);
									grid.addWidget(el, xPoint, yPoint, width, height, false);
								}
								else if(widgetId=='itword'){
									widgetName = 'IT용어집';
									width = $('#itword-width').val();
									height = $('#itword-height').val();
									
									el = '<div class="grid-stack-item"'
										+'id="'+widgetId+'">'
										+'<div class="grid-stack-item-content">'
										+'<span class="widget_title">'+widgetName+'</span><hr>'
										+'<br><span class="widget_desc">TTA표준 단어를 학습합니다</span>'
										+'</div></div>';
									
									$('#'+widgetId+"_chk").prop("checked", true);
									grid.addWidget(el, xPoint, yPoint, width, height, false);
								}
								else if(widgetId=='stretching'){
									widgetName = '스트레칭';
									width = $('#stretching-width').val();
									height = $('#stretching-height').val();
									
									el = '<div class="grid-stack-item"'
										+'id="'+widgetId+'">'
										+'<div class="grid-stack-item-content">'
										+'<span class="widget_title">'+widgetName+'</span><hr>'
										+'<br><span class="widget_desc">사무실에서 간단히 할 수 있는 스트레칭</span>'
										+'</div></div>';
									
									$('#'+widgetId+"_chk").prop("checked", true);
									grid.addWidget(el, xPoint, yPoint, width, height, false);
								}
								else if(widgetId=='twitter'){
									widgetName = '트위터';
									width = $('#twitter-width').val();
									height = $('#twitter-height').val();
									
									el = '<div class="grid-stack-item"'
										+'id="'+widgetId+'">'
										+'<div class="grid-stack-item-content">'
										+'<span class="widget_title">'+widgetName+'</span><hr>'
										+'<br><span class="widget_desc">원하는 트위터 리스트를 선택하세요</span><br>'
										+'<div class="optionwrapper"><table class="twitter_table">'
										+'<tr><td>W3C스탭들</td>'
										+'<td><div class="optionbox optioncustom"><input type="radio" class="twitter-option" name="twitter-option" id="w3c.w3cstaff" value="w3c.w3cstaff">'
										+'<label for="w3c.w3cstaff" class="css-optionlabel"></label></div></td></tr>'
										+'<tr><td>IT기술뉴스</td>'
										+'<td><div class="optionbox optioncustom"><input type="radio" class="twitter-option" name="twitter-option" id="w3c.it-watch" value="w3c.it-watch">'
										+'<label for="w3c.it-watch" class="css-optionlabel"></label></div></td></tr>'
										+'<tr><td>IT업계유명인</td>'
										+'<td><div class="optionbox optioncustom"><input type="radio" class="twitter-option" name="twitter-option" id="Scobleizer.most-influential-in-tech" value="Scobleizer.most-influential-in-tech">'
										+'<label for="Scobleizer.most-influential-in-tech" class="css-optionlabel"></label></div></td></tr>'
										+'<tr><td>테크블로거</td>'
										+'<td><div class="optionbox optioncustom"><input type="radio" class="twitter-option" name="twitter-option" id="louisgray.toptechbloggers" value="louisgray.toptechbloggers">'
										+'<label for="louisgray.toptechbloggers" class="css-optionlabel"></label></div></td></tr>'
										+'</table></div></div></div>';
										
									
									$('#'+widgetId+"_chk").prop("checked", true);
									grid.addWidget(el, xPoint, yPoint, width, height, false);
									
									if(optionsString.length>0){
										$('input[value="'+optionsString+'"]').prop("checked",true);
									}
								}
								else if(widgetId=='memopad'){
									widgetName = '메모장';
									width = $('#memopad-width').val();
									height = $('#memopad-height').val();
									
									el = '<div class="grid-stack-item"'
										+'id="'+widgetId+'">'
										+'<div class="grid-stack-item-content">'
										+'<span class="widget_title">'+widgetName+'</span><hr>'
										+'<br><span class="widget_desc">간단한 메모를 할 수 있습니다</span>'
										+'</div></div>';
									
									$('#'+widgetId+"_chk").prop("checked", true);
									grid.addWidget(el, xPoint, yPoint, width, height, false);
								}
								else if(widgetId=='todolist'){
									widgetName = '투두리스트';
									width = $('#todolist-width').val();
									height = $('#todolist-height').val();
									
									el = '<div class="grid-stack-item"'
										+'id="'+widgetId+'">'
										+'<div class="grid-stack-item-content">'
										+'<span class="widget_title">'+widgetName+'</span><hr>'
										+'<br><span class="widget_desc">할 일을 기록/삭제하기 위한 투두리스트</span>'
										+'</div></div>';
									
									$('#'+widgetId+"_chk").prop("checked", true);
									grid.addWidget(el, xPoint, yPoint, width, height, false);
								}
								else if(widgetId=='tipandinfo'){
									widgetName = '팁과정보';
									width = $('#tipandinfo-width').val();
									height = $('#tipandinfo-height').val();
									
									el = '<div class="grid-stack-item"'
										+'id="'+widgetId+'">'
										+'<div class="grid-stack-item-content">'
										+'<span class="widget_title">'+widgetName+'</span><hr>'
										+'<br><span class="widget_desc">Okky/Clien IT팁/정보를 확인합니다</span>'
										+'</div></div>';
									
									$('#'+widgetId+"_chk").prop("checked", true);
									grid.addWidget(el, xPoint, yPoint, width, height, false);
								}
								else if(widgetId=='timer'){
									widgetName = '일휴식타이머';
									width = $('#timer-width').val();
									height = $('#timer-height').val();
									
									el = '<div class="grid-stack-item"'
										+'id="'+widgetId+'">'
										+'<div class="grid-stack-item-content">'
										+'<span class="widget_title">'+widgetName+'</span><hr>'
										+'<br><span class="widget_desc">근무 휴식간 타이머를 설정합니다</span>'
										+'</div></div>';
									
									$('#'+widgetId+"_chk").prop("checked", true);
									grid.addWidget(el, xPoint, yPoint, width, height, false);
								}
								else if(widgetId=='conference'){
									widgetName = '컨퍼런스알림';
									width = $('#conference-width').val();
									height = $('#conference-height').val();
									
									el = '<div class="grid-stack-item"'
										+'id="'+widgetId+'">'
										+'<div class="grid-stack-item-content">'
										+'<span class="widget_title">'+widgetName+'</span><hr>'
										+'<br><span class="widget_desc">IT관련 컨퍼런스 정보를 알립니다</span>'
										+'</div></div>';
									
									$('#'+widgetId+"_chk").prop("checked", true);
									grid.addWidget(el, xPoint, yPoint, width, height, false);
								}
								else if(widgetId=='projectfinder'){
									widgetName = '프로젝트찾기';
									width = $('#projectfinder-width').val();
									height = $('#projectfinder-height').val();
									options = optionsString.split("/");
									
									el = '<div class="grid-stack-item"'
										+'id="'+widgetId+'">'
										+'<div class="grid-stack-item-content">'
										+'<span class="widget_title">'+widgetName+'</span><hr>'
										+'<br><span class="widget_desc">위시캣의 프로젝트 찾기 목록입니다</span><br>'
										+'<div class="optionwrapper"><table class="projectfinder_table"><tr>'
										+'<td>웹</td>'
										+'<td><div class="optionbox optioncustom"><input type="checkbox" class="projectfinder-option" id="dev1" value="dev1">'
										+'<label for="dev1" class="css-optionlabel"></label></div></td></tr>'
										+'<tr><td>애플리케이션</td>'
										+'<td><div class="optionbox optioncustom"><input type="checkbox" class="projectfinder-option" id="dev2" value="dev2">'
										+'<label for="dev2" class="css-optionlabel"></label></div></td></tr>'
										+'<tr><td>워드프레스</td>'
										+'<td><div class="optionbox optioncustom"><input type="checkbox" class="projectfinder-option" id="dev3" value="dev3">'
										+'<label for="dev3" class="css-optionlabel"></label></div></td></tr>'
										+'<tr><td>퍼블리싱</td>'
										+'<td><div class="optionbox optioncustom"><input type="checkbox" class="projectfinder-option" id="dev4" value="dev4">'
										+'<label for="dev4" class="css-optionlabel"></label></div></td></tr>'
										+'<tr><td>일반소프트웨어</td>'
										+'<td><div class="optionbox optioncustom"><input type="checkbox" class="projectfinder-option" id="dev5" value="dev5">'
										+'<label for="dev5" class="css-optionlabel"></label></div></td></tr>'
										+'<tr><td>커머스/쇼핑몰</td>'
										+'<td><div class="optionbox optioncustom"><input type="checkbox" class="projectfinder-option" id="dev6" value="dev6">'
										+'<label for="dev6" class="css-optionlabel"></label></div></td></tr>'
										+'<tr><td>게임</td>'
										+'<td><div class="optionbox optioncustom"><input type="checkbox" class="projectfinder-option" id="dev7" value="dev7">'
										+'<label for="dev7" class="css-optionlabel"></label></div></td></tr>'
										+'<tr><td>임베디드</td>'
										+'<td><div class="optionbox optioncustom"><input type="checkbox" class="projectfinder-option" id="dev8" value="dev8">'
										+'<label for="dev8" class="css-optionlabel"></label></div></td></tr>'
										+'<tr><td>기타</td>'
										+'<td><div class="optionbox optioncustom"><input type="checkbox" class="projectfinder-option" id="dev9" value="dev9">'
										+'<label for="dev9" class="css-optionlabel"></label></div></td></tr>'
										+'</table></div></div></div>';
										
										
									$('#'+widgetId+"_chk").prop("checked", true);
									grid.addWidget(el, xPoint, yPoint, width, height, false);
									
									var optionIndex = 0;
									while(optionIndex<options.length){
										$('input[value="'+options[optionIndex]+'"]').prop("checked",true);
										optionIndex++;
									}
										
								}
								/* 위젯 하나 추가 */
							}
						}
					}
				});
	
	

	$('#configure').on(
			"click",
			function() {
				/* $(".grid-stack-item-content").css("border", "1px pink solid"); */
				console.log("<<위젯 정보입니다>>");
				var paramsString = "";
				var widgetName = "";
				// 위젯별 상세 옵션을 다 체크했나 확인하기 위한 변수
				var checkSubOptionsNum = 0;
				
				for (var i = 0; i < $(".grid-stack-item").length; i++) {
					console.log((i + 1) + "번째 위젯의 이름 : "+$('.grid-stack-item').eq(i).attr('id'));
					paramsString += $('.grid-stack-item').eq(i).attr('id');
					/* 위젯 이름 알아오기 */
					widgetName = $('.grid-stack-item').eq(i).attr('id');
					var options = [];
					var optionsString = "";
					
					if(widgetName=='itbookbest'){
						$('.itbookbest-option:checked').each(function(i){
							options[i] = $(this).val();
						});
						optionsString = options.join("/");
						if(optionsString === ""){
							swal({
								type:"warning",
								text:'IT베스트셀러 세부 옵션을 체크해주세요!',
								confirmButtonText: '확인',
								confirmButtonColor: '#3085d6',
								allowOutsideClick:false
							});
							//alert('IT베스트셀러 세부 옵션을 체크해주세요!');
							checkSubOptionsNum++;
						}
					}
					else if(widgetName=='weather'){
						options[0] = $('#sido1').val();
						options[1] = $('#gugun1').val();
						options[2] = $('#dong1').val();
						optionsString = options.join("/");
						if(optionsString === "시/도/시/군/구/읍/면/동"){
							swal({
								type:"warning",
								text:'날씨 세부 옵션을 체크해주세요!',
								confirmButtonText: '확인',
								confirmButtonColor: '#3085d6',
								allowOutsideClick:false
							});
							//alert('날씨 세부 옵션을 체크해주세요!');
							checkSubOptionsNum++;
						}
					}
					else if(widgetName=='twitter'){
						optionsString = $("input[name=twitter-option]:checked").val();
						
						if(optionsString === undefined){
							swal({
								type:"warning",
								text:'트위터 세부 옵션을 체크해주세요!',
								confirmButtonText: '확인',
								confirmButtonColor: '#3085d6',
								allowOutsideClick:false
							});
							//alert('트위터 세부 옵션을 체크해주세요!');
							checkSubOptionsNum++;
						}
					}
					else if(widgetName=='projectfinder'){
						$('.projectfinder-option:checked').each(function(i){
							options[i] = $(this).val();
						});
						optionsString = options.join("/");
						if(optionsString === ""){
							swal({
								type:"warning",
								text:'프로젝트찾기 세부 옵션을 체크해주세요!',
								confirmButtonText: '확인',
								confirmButtonColor: '#3085d6',
								allowOutsideClick:false
							});
							//alert('프로젝트찾기 세부 옵션을 체크해주세요!');
							checkSubOptionsNum++;
						}
					}
					
					console.log((i + 1) + "번째 위젯의 옵션 : "+optionsString);
					paramsString += ",";
					paramsString += optionsString;
					console.log((i + 1) + "번째 위젯의 x/y 좌표 : " + "("
							+ $('.grid-stack-item').eq(i).attr('data-gs-x')
							+ ","
							+ $('.grid-stack-item').eq(i).attr('data-gs-y')
							+ ")");
					paramsString += ",";
					paramsString += $('.grid-stack-item').eq(i).attr('data-gs-x');
					paramsString += ",";
					paramsString += $('.grid-stack-item').eq(i).attr('data-gs-y');
					
					/* config에서 각각의 크기도 뽑아오기 */
					widgetName = $('.grid-stack-item').eq(i).attr('id');
					paramsString += ",";
					paramsString += $('#'+widgetName+"-width").val(); 
					paramsString += ",";
					paramsString += $('#'+widgetName+"-height").val();
					
					/* 크기 출력 */
					console.log((i + 1) + "번째 위젯의 가로/세로 길이 : " + "("
							+ $('#'+widgetName+"-width").val()
							+ ","
							+ $('#'+widgetName+"-height").val()
							+ ")");
					
					if(i!= $(".grid-stack-item").length-1){
						paramsString += "&";
					}
				}
				//alert(paramsString);
				// 뭔가 체크가 안 된 것이 있으므로 빠꾸 먹임
				if(checkSubOptionsNum>0){
					swal({
						type:"warning",
						text:"각 위젯의 옵션 체크를 확인해주세요!",
						confirmButtonText: '확인',
						confirmButtonColor: '#3085d6',
						allowOutsideClick:false
					});
					//alert("각 위젯의 옵션 체크를 확인해주세요!");
					return;
				}
				
				$.ajax({
					url:"/TheStartpage/configProcess.do",
					data:{
						params:paramsString,
						userEmail: "${sessionScope.userVO.email}"
					},
					type:"POST",
					success:function(data){
						swal({
							type:"success",
							title:"설정이 저장되었습니다.",
							text:"메인 페이지에서 위젯을 이용해보세요!",
							confirmButtonText: '확인',
							confirmButtonColor: '#3085d6',
							allowOutsideClick:false
						}).then((result) => {
							if(result.value){
								location.href = '/TheStartpage/main.jsp';
							}
						});
						//alert("설정이 저장되었습니다");
						//$(location).attr('href','/TheStartpage/main.jsp');
					}
				});
			});
	
	$('#cancel').click(function(){
		$(location).attr('href','/TheStartpage/main.jsp');
	});
	
	$('#reset').click(function(){
		var grid = $('.grid-stack').data('gridstack');
		grid.removeAll();
		// 이걸로 통째로 해도 상관 없음 -> $(".widget_chk").prop("checked", false);
		/* itbookbest와 weather는 지금 옵션이 있어서 id니까 */
		$("#itbookbest_chk").prop("checked",false);
		$("#weather_chk").prop("checked",false);
		$("#twitter_chk").prop("checked",false);
		$("#projectfinder_chk").prop("checked",false);
		$("#itnews_chk").prop("checked",false);
		$("#papersearch_chk").prop("checked",false);
		$("#itword_chk").prop("checked",false);
		$("#stretching_chk").prop("checked",false);
		$("#memopad_chk").prop("checked",false);
		$("#todolist_chk").prop("checked",false);
		$("#conference_chk").prop("checked",false);
		$("#tipandinfo_chk").prop("checked",false);
		$("#timer_chk").prop("checked",false);
	});
	
	/* 움직인 결과물이 크기를 넘어서면 추가 못 되게 해야 함! */
	$('.grid-stack').on('dragstart', function(event, ui) {
    var grid = this;
    var elementStart = event.target;
    
    	$('.grid-stack').on('dragstop', function(event, ui) {
	    	var grid = this;
	    	var elementStop = event.target;    
	    	var currentHeight = parseInt($('.grid-stack').attr("data-gs-current-height"));
			if(currentHeight>10){
				swal({
					type:"warning",
					text:"화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!",
					confirmButtonText: '확인',
					confirmButtonColor: '#3085d6',
					allowOutsideClick:false
				});
				//alert("화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!");
				var grid = $('.grid-stack').data('gridstack');
				grid.removeWidget(elementStop);
			    var id = $(elementStop).attr("id")
				console.log("#"+id+"_chk");
				$("#"+id+"_chk").prop("checked",false);
			}
		});
    
	});
	
	
	/* IT책 베스트셀러 위젯에 옵션 넣는 경우 */
	$('#itbookbest_chk').change(function(){
		if($(this).is(":checked")){
			var widgetName = "IT베스트셀러";
			var width = $("#itbookbest-width").val();
			var height = $("#itbookbest-height").val();
			
			var el = '<div class="grid-stack-item"'
				+'id="'+$(this).val()+'">'
				+'<div class="grid-stack-item-content">'
				+'<span class="widget_title">'+widgetName+'</span><hr>'
				+'<br><span class="widget_desc">교보문고/알라딘/Yes24 통합 베스트셀러</span><br>'
				+'<div class="optionwrapper"><table class="itbookbest_table"><tr>'
				+'<td>컴퓨터공학</td>'
				+'<td><div class="optionbox optioncustom"><input type="checkbox" class="itbookbest-option" id="computerEngineering" value="computerEngineering">'
				+'<label for="computerEngineering" class="css-optionlabel"></label></div></td></tr>'
				+'<tr><td>게임</td>'
				+'<td><div class="optionbox optioncustom"><input type="checkbox" class="itbookbest-option" id="game" value="game">'
				+'<label for="game" class="css-optionlabel"></label></div></td></tr>'
				+'<tr><td>개발방법론</td>'
				+'<td><div class="optionbox optioncustom"><input type="checkbox" class="itbookbest-option" id="methodologies" value="methodologies">'
				+'<label for="methodologies" class="css-optionlabel"></label></div></td></tr>'
				+'<tr><td>모바일</td>'
				+'<td><div class="optionbox optioncustom"><input type="checkbox" class="itbookbest-option" id="mobileProgramming" value="mobileProgramming">'
				+'<label for="mobileProgramming" class="css-optionlabel"></label></div></td></tr>'
				+'<tr><td>OS/DB/네트워크</td>'
				+'<td><div class="optionbox optioncustom"><input type="checkbox" class="itbookbest-option" id="osNetworkDatabase" value="osNetworkDatabase">'
				+'<label for="osNetworkDatabase" class="css-optionlabel"></label></div></td></tr>'
				+'<tr><td>프로그래밍 언어</td>'
				+'<td><div class="optionbox optioncustom"><input type="checkbox" class="itbookbest-option" id="programmingLanguage" value="programmingLanguage">'
				+'<label for="programmingLanguage" class="css-optionlabel"></label></div></td></tr>'
				+'<tr><td>보안/해킹</td>'
				+'<td><div class="optionbox optioncustom"><input type="checkbox" class="itbookbest-option" id="securityHacking" value="securityHacking">'
				+'<label for="securityHacking" class="css-optionlabel"></label></div></td></tr>'
				+'<tr><td>웹사이트</td>'
				+'<td><div class="optionbox optioncustom"><input type="checkbox" class="itbookbest-option" id="website" value="website">'
				+'<label for="website" class="css-optionlabel"></label></div></td></tr>'
				+'</table></div></div></div>';
			var grid = $('.grid-stack').data('gridstack');
			/* 추가함 */
			grid.addWidget(el, 0, 0, width, height, true);	
			/* ,근데 크기가 넘치면 제거해야 함, 체크도 꺼주고 */
			var currentHeight = parseInt($('.grid-stack').attr("data-gs-current-height"));
			if(currentHeight>10){
				swal({
					type:"warning",
					text:"화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!",
					confirmButtonText: '확인',
					confirmButtonColor: '#3085d6',
					allowOutsideClick:false
				});
				//alert("화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!");
				$element = $("#itbookbest");
				var grid = $('.grid-stack').data('gridstack');
				grid.removeWidget($element);
				$("#itbookbest_chk").prop("checked",false);
			}
		}
		else{
			$element = $("#"+$(this).val());
			var grid = $('.grid-stack').data('gridstack');
			grid.removeWidget($element);
		}
	});
	
	/* 프로젝트 찾기 옵션 넣는 경우 */
	$('#projectfinder_chk').change(function(){
		if($(this).is(":checked")){
			var widgetName = "프로젝트찾기";
			var width = $("#projectfinder-width").val();
			var height = $("#projectfinder-height").val();
			
			var el = '<div class="grid-stack-item"'
				+'id="'+$(this).val()+'">'
				+'<div class="grid-stack-item-content">'
				+'<span class="widget_title">'+widgetName+'</span><hr>'
				+'<br><span class="widget_desc">위시캣의 프로젝트 찾기 목록입니다</span><br>'
				+'<div class="optionwrapper"><table class="projectfinder_table"><tr>'
				+'<td>웹</td>'
				+'<td><div class="optionbox optioncustom"><input type="checkbox" class="projectfinder-option" id="dev1" value="dev1">'
				+'<label for="dev1" class="css-optionlabel"></label></div></td></tr>'
				+'<tr><td>애플리케이션</td>'
				+'<td><div class="optionbox optioncustom"><input type="checkbox" class="projectfinder-option" id="dev2" value="dev2">'
				+'<label for="dev2" class="css-optionlabel"></label></div></td></tr>'
				+'<tr><td>워드프레스</td>'
				+'<td><div class="optionbox optioncustom"><input type="checkbox" class="projectfinder-option" id="dev3" value="dev3">'
				+'<label for="dev3" class="css-optionlabel"></label></div></td></tr>'
				+'<tr><td>퍼블리싱</td>'
				+'<td><div class="optionbox optioncustom"><input type="checkbox" class="projectfinder-option" id="dev4" value="dev4">'
				+'<label for="dev4" class="css-optionlabel"></label></div></td></tr>'
				+'<tr><td>일반소프트웨어</td>'
				+'<td><div class="optionbox optioncustom"><input type="checkbox" class="projectfinder-option" id="dev5" value="dev5">'
				+'<label for="dev5" class="css-optionlabel"></label></div></td></tr>'
				+'<tr><td>커머스/쇼핑몰</td>'
				+'<td><div class="optionbox optioncustom"><input type="checkbox" class="projectfinder-option" id="dev6" value="dev6">'
				+'<label for="dev6" class="css-optionlabel"></label></div></td></tr>'
				+'<tr><td>게임</td>'
				+'<td><div class="optionbox optioncustom"><input type="checkbox" class="projectfinder-option" id="dev7" value="dev7">'
				+'<label for="dev7" class="css-optionlabel"></label></div></td></tr>'
				+'<tr><td>임베디드</td>'
				+'<td><div class="optionbox optioncustom"><input type="checkbox" class="projectfinder-option" id="dev8" value="dev8">'
				+'<label for="dev8" class="css-optionlabel"></label></div></td></tr>'
				+'<tr><td>기타</td>'
				+'<td><div class="optionbox optioncustom"><input type="checkbox" class="projectfinder-option" id="dev9" value="dev9">'
				+'<label for="dev9" class="css-optionlabel"></label></div></td></tr>'
				+'</table></div></div></div>';
			var grid = $('.grid-stack').data('gridstack');
			/* 추가함 */
			grid.addWidget(el, 0, 0, width, height, true);	
			/* ,근데 크기가 넘치면 제거해야 함, 체크도 꺼주고 */
			var currentHeight = parseInt($('.grid-stack').attr("data-gs-current-height"));
			if(currentHeight>10){
				swal({
					type:"warning",
					text:"화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!",
					confirmButtonText: '확인',
					confirmButtonColor: '#3085d6',
					allowOutsideClick:false
				});
				//alert("화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!");
				$element = $("#projectfinder");
				var grid = $('.grid-stack').data('gridstack');
				grid.removeWidget($element);
				$("#projectfinder_chk").prop("checked",false);
			}
		}
		else{
			$element = $("#"+$(this).val());
			var grid = $('.grid-stack').data('gridstack');
			grid.removeWidget($element);
		}
	});
	
	/* 날씨 위젯 옵션 넣는 경우 */
	$('#weather_chk').change(function(){
		if($(this).is(":checked")){
			var widgetName = "날씨";
			var width = $("#weather-width").val();
			var height = $("#weather-height").val();
			
			var el = '<div class="grid-stack-item"'
				+'id="'+$(this).val()+'">'
				+'<div class="grid-stack-item-content">'
				+'<span class="widget_title">'+widgetName+'</span><hr>'
				+'<br><span class="widget_desc">날씨 지역을 선택해주세요</span>'
				+'<div id="weather-wrapper">'
				+'<br><select name="sido1" id="sido1"></select>'
				+'<select name="gugun1" id="gugun1"></select>'
				+'<select name="dong1" id="dong1"></select>'
				+'<script type="text/javascript">'
				+' new sojaeji("sido1", "gugun1", "dong1");</scr'+'ipt>'
				+'</div></div></div>';
			var grid = $('.grid-stack').data('gridstack');
			/* 추가함 */
			grid.addWidget(el, 0, 0, width, height, true);	
			/* ,근데 크기가 넘치면 제거해야 함, 체크도 꺼주고 */
			var currentHeight = parseInt($('.grid-stack').attr("data-gs-current-height"));
			if(currentHeight>10){
				swal({
					type:"warning",
					text:"화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!",
					confirmButtonText: '확인',
					confirmButtonColor: '#3085d6',
					allowOutsideClick:false
				});
				//alert("화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!");
				$element = $("#weather");
				var grid = $('.grid-stack').data('gridstack');
				grid.removeWidget($element);
				$("#weather_chk").prop("checked",false);
			}
		}
		else{
			$element = $("#"+$(this).val());
			var grid = $('.grid-stack').data('gridstack');
			grid.removeWidget($element);
		}
	});
	
	// 날씨 위젯 재설정
	$("#weather-reset").click(function(){
		$("#weather-wrapper").html('<br><select name="sido1" id="sido1"></select>'
				+'<select name="gugun1" id="gugun1"></select>'
				+'<select name="dong1" id="dong1"></select>'
				+'<script type="text/javascript">'
				+' new sojaeji("sido1", "gugun1", "dong1");</scr'+'ipt>');
	});
	
	/* 트위터 옵션 설정하게 되는 경우 */
	$('#twitter_chk').change(function(){
		if($(this).is(":checked")){
			var widgetName = "트위터";
			var width = $("#twitter-width").val();
			var height = $("#twitter-height").val();
			
			var el = '<div class="grid-stack-item"'
				+'id="'+$(this).val()+'">'
				+'<div class="grid-stack-item-content">'
				+'<span class="widget_title">'+widgetName+'</span><hr>'
				+'<br><span class="widget_desc">원하는 트위터 리스트를 선택하세요</span><br>'
				+'<div class="optionwrapper"><table class="twitter_table">'
				+'<tr><td>W3C스탭들</td>'
				+'<td><div class="optionbox optioncustom"><input type="radio" class="twitter-option" name="twitter-option" id="w3c.w3cstaff" value="w3c.w3cstaff">'
				+'<label for="w3c.w3cstaff" class="css-optionlabel"></label></div></td></tr>'
				+'<tr><td>IT기술뉴스</td>'
				+'<td><div class="optionbox optioncustom"><input type="radio" class="twitter-option" name="twitter-option" id="w3c.it-watch" value="w3c.it-watch">'
				+'<label for="w3c.it-watch" class="css-optionlabel"></label></div></td></tr>'
				+'<tr><td>IT업계유명인</td>'
				+'<td><div class="optionbox optioncustom"><input type="radio" class="twitter-option" name="twitter-option" id="Scobleizer.most-influential-in-tech" value="Scobleizer.most-influential-in-tech">'
				+'<label for="Scobleizer.most-influential-in-tech" class="css-optionlabel"></label></div></td></tr>'
				+'<tr><td>테크블로거</td>'
				+'<td><div class="optionbox optioncustom"><input type="radio" class="twitter-option" name="twitter-option" id="louisgray.toptechbloggers" value="louisgray.toptechbloggers">'
				+'<label for="louisgray.toptechbloggers" class="css-optionlabel"></label></div></td></tr>'
				+'</table></div></div></div>';
			var grid = $('.grid-stack').data('gridstack');
			/* 추가함 */
			grid.addWidget(el, 0, 0, width, height, true);	
			/* ,근데 크기가 넘치면 제거해야 함, 체크도 꺼주고 */
			var currentHeight = parseInt($('.grid-stack').attr("data-gs-current-height"));
			if(currentHeight>10){
				swal({
					type:"warning",
					text:"화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!",
					confirmButtonText: '확인',
					confirmButtonColor: '#3085d6',
					allowOutsideClick:false
				});
				//alert("화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!");
				$element = $("#twitter");
				var grid = $('.grid-stack').data('gridstack');
				grid.removeWidget($element);
				$("#twitter_chk").prop("checked",false);
			}
		}
		else{
			$element = $("#"+$(this).val());
			var grid = $('.grid-stack').data('gridstack');
			grid.removeWidget($element);
		}
	});
	
	/* ITNews 분리 */
	$('#itnews_chk').change(function(){
		if($(this).is(":checked")){
			var widgetName = "IT뉴스";
			var width = $("#itnews-width").val();
			var height = $("#itnews-height").val();
			
			var el = '<div class="grid-stack-item"'
				+'id="'+$(this).val()+'">'
				+'<div class="grid-stack-item-content">'
				+'<span class="widget_title">'+widgetName+'</span><hr>'
				+'<br><span class="widget_desc">디지털데일리와 ITWorld 뉴스 기사</span>'
				+'</div></div>';
			var grid = $('.grid-stack').data('gridstack');
			/* 추가함 */
			grid.addWidget(el, 0, 0, width, height, true);	
			/* ,근데 크기가 넘치면 제거해야 함, 체크도 꺼주고 */
			var currentHeight = parseInt($('.grid-stack').attr("data-gs-current-height"));
			if(currentHeight>10){
				swal({
					type:"warning",
					text:"화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!",
					confirmButtonText: '확인',
					confirmButtonColor: '#3085d6',
					allowOutsideClick:false
				});
				//alert("화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!");
				$element = $("#itnews");
				var grid = $('.grid-stack').data('gridstack');
				grid.removeWidget($element);
				$("#itnews_chk").prop("checked",false);
			}
		}
		else{
			$element = $("#"+$(this).val());
			var grid = $('.grid-stack').data('gridstack');
			grid.removeWidget($element);
		}
	});
	
	/* 논문검색 분리 */
	$('#papersearch_chk').change(function(){
		if($(this).is(":checked")){
			var widgetName = "논문검색";
			var width = $("#papersearch-width").val();
			var height = $("#papersearch-height").val();
			
			var el = '<div class="grid-stack-item"'
				+'id="'+$(this).val()+'">'
				+'<div class="grid-stack-item-content">'
				+'<span class="widget_title">'+widgetName+'</span><hr>'
				+'<br><span class="widget_desc">키워드로 논문 검색을 할 수 있습니다</span>'
				+'</div></div>';
			var grid = $('.grid-stack').data('gridstack');
			/* 추가함 */
			grid.addWidget(el, 0, 0, width, height, true);	
			/* ,근데 크기가 넘치면 제거해야 함, 체크도 꺼주고 */
			var currentHeight = parseInt($('.grid-stack').attr("data-gs-current-height"));
			if(currentHeight>10){
				swal({
					type:"warning",
					text:"화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!",
					confirmButtonText: '확인',
					confirmButtonColor: '#3085d6',
					allowOutsideClick:false
				});
				//alert("화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!");
				$element = $("#papersearch");
				var grid = $('.grid-stack').data('gridstack');
				grid.removeWidget($element);
				$("#papersearch_chk").prop("checked",false);
			}
		}
		else{
			$element = $("#"+$(this).val());
			var grid = $('.grid-stack').data('gridstack');
			grid.removeWidget($element);
		}
	});
	
	/* IT용어집 분리 */
	$('#itword_chk').change(function(){
		if($(this).is(":checked")){
			var widgetName = "IT용어집";
			var width = $("#itword-width").val();
			var height = $("#itword-height").val();
			
			var el = '<div class="grid-stack-item"'
				+'id="'+$(this).val()+'">'
				+'<div class="grid-stack-item-content">'
				+'<span class="widget_title">'+widgetName+'</span><hr>'
				+'<br><span class="widget_desc">TTA표준 단어를 학습합니다</span>'
				+'</div></div>';
			var grid = $('.grid-stack').data('gridstack');
			/* 추가함 */
			grid.addWidget(el, 0, 0, width, height, true);	
			/* ,근데 크기가 넘치면 제거해야 함, 체크도 꺼주고 */
			var currentHeight = parseInt($('.grid-stack').attr("data-gs-current-height"));
			if(currentHeight>10){
				swal({
					type:"warning",
					text:"화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!",
					confirmButtonText: '확인',
					confirmButtonColor: '#3085d6',
					allowOutsideClick:false
				});
				//alert("화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!");
				$element = $("#itword");
				var grid = $('.grid-stack').data('gridstack');
				grid.removeWidget($element);
				$("#itword_chk").prop("checked",false);
			}
		}
		else{
			$element = $("#"+$(this).val());
			var grid = $('.grid-stack').data('gridstack');
			grid.removeWidget($element);
		}
	});
	
	/* 스트레칭 분리 */
	$('#stretching_chk').change(function(){
		if($(this).is(":checked")){
			var widgetName = "스트레칭";
			var width = $("#stretching-width").val();
			var height = $("#stretching-height").val();
			
			var el = '<div class="grid-stack-item"'
				+'id="'+$(this).val()+'">'
				+'<div class="grid-stack-item-content">'
				+'<span class="widget_title">'+widgetName+'</span><hr>'
				+'<br><span class="widget_desc">사무실에서 간단히 할 수 있는 스트레칭</span>'
				+'</div></div>';
			var grid = $('.grid-stack').data('gridstack');
			/* 추가함 */
			grid.addWidget(el, 0, 0, width, height, true);	
			/* ,근데 크기가 넘치면 제거해야 함, 체크도 꺼주고 */
			var currentHeight = parseInt($('.grid-stack').attr("data-gs-current-height"));
			if(currentHeight>10){
				swal({
					type:"warning",
					text:"화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!",
					confirmButtonText: '확인',
					confirmButtonColor: '#3085d6',
					allowOutsideClick:false
				});
				//alert("화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!");
				$element = $("#stretching");
				var grid = $('.grid-stack').data('gridstack');
				grid.removeWidget($element);
				$("#stretching_chk").prop("checked",false);
			}
		}
		else{
			$element = $("#"+$(this).val());
			var grid = $('.grid-stack').data('gridstack');
			grid.removeWidget($element);
		}
	});
	
	/* 메모장 분리 */
	$('#memopad_chk').change(function(){
		if($(this).is(":checked")){
			var widgetName = "메모장";
			var width = $("#memopad-width").val();
			var height = $("#memopad-height").val();
			
			var el = '<div class="grid-stack-item"'
				+'id="'+$(this).val()+'">'
				+'<div class="grid-stack-item-content">'
				+'<span class="widget_title">'+widgetName+'</span><hr>'
				+'<br><span class="widget_desc">간단한 메모를 할 수 있습니다</span>'
				+'</div></div>';
			var grid = $('.grid-stack').data('gridstack');
			/* 추가함 */
			grid.addWidget(el, 0, 0, width, height, true);	
			/* ,근데 크기가 넘치면 제거해야 함, 체크도 꺼주고 */
			var currentHeight = parseInt($('.grid-stack').attr("data-gs-current-height"));
			if(currentHeight>10){
				swal({
					type:"warning",
					text:"화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!",
					confirmButtonText: '확인',
					confirmButtonColor: '#3085d6',
					allowOutsideClick:false
				});
				//alert("화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!");
				$element = $("#memopad");
				var grid = $('.grid-stack').data('gridstack');
				grid.removeWidget($element);
				$("#memopad_chk").prop("checked",false);
			}
		}
		else{
			$element = $("#"+$(this).val());
			var grid = $('.grid-stack').data('gridstack');
			grid.removeWidget($element);
		}
	});
	
	/* 투두리스트 분리 */
	$('#todolist_chk').change(function(){
		if($(this).is(":checked")){
			var widgetName = "투두리스트";
			var width = $("#todolist-width").val();
			var height = $("#todolist-height").val();
			
			var el = '<div class="grid-stack-item"'
				+'id="'+$(this).val()+'">'
				+'<div class="grid-stack-item-content">'
				+'<span class="widget_title">'+widgetName+'</span><hr>'
				+'<br><span class="widget_desc">할 일을 기록/삭제하기 위한 투두리스트</span>'
				+'</div></div>';
			var grid = $('.grid-stack').data('gridstack');
			/* 추가함 */
			grid.addWidget(el, 0, 0, width, height, true);	
			/* ,근데 크기가 넘치면 제거해야 함, 체크도 꺼주고 */
			var currentHeight = parseInt($('.grid-stack').attr("data-gs-current-height"));
			if(currentHeight>10){
				swal({
					type:"warning",
					text:"화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!",
					confirmButtonText: '확인',
					confirmButtonColor: '#3085d6',
					allowOutsideClick:false
				});
				//alert("화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!");
				$element = $("#todolist");
				var grid = $('.grid-stack').data('gridstack');
				grid.removeWidget($element);
				$("#todolist_chk").prop("checked",false);
			}
		}
		else{
			$element = $("#"+$(this).val());
			var grid = $('.grid-stack').data('gridstack');
			grid.removeWidget($element);
		}
	});
	
	/* 컨퍼런스알림 분리 */
	$('#conference_chk').change(function(){
		if($(this).is(":checked")){
			var widgetName = "컨퍼런스알림";
			var width = $("#conference-width").val();
			var height = $("#conference-height").val();
			
			var el = '<div class="grid-stack-item"'
				+'id="'+$(this).val()+'">'
				+'<div class="grid-stack-item-content">'
				+'<span class="widget_title">'+widgetName+'</span><hr>'
				+'<br><span class="widget_desc">IT관련 컨퍼런스 정보를 알립니다</span>'
				+'</div></div>';
			var grid = $('.grid-stack').data('gridstack');
			/* 추가함 */
			grid.addWidget(el, 0, 0, width, height, true);	
			/* ,근데 크기가 넘치면 제거해야 함, 체크도 꺼주고 */
			var currentHeight = parseInt($('.grid-stack').attr("data-gs-current-height"));
			if(currentHeight>10){
				swal({
					type:"warning",
					text:"화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!",
					confirmButtonText: '확인',
					confirmButtonColor: '#3085d6',
					allowOutsideClick:false
				});
				//alert("화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!");
				$element = $("#conference");
				var grid = $('.grid-stack').data('gridstack');
				grid.removeWidget($element);
				$("#conference_chk").prop("checked",false);
			}
		}
		else{
			$element = $("#"+$(this).val());
			var grid = $('.grid-stack').data('gridstack');
			grid.removeWidget($element);
		}
	});
	
	/* 팁과정보 분리 */
	$('#tipandinfo_chk').change(function(){
		if($(this).is(":checked")){
			var widgetName = "팁과정보";
			var width = $("#tipandinfo-width").val();
			var height = $("#tipandinfo-height").val();
			
			var el = '<div class="grid-stack-item"'
				+'id="'+$(this).val()+'">'
				+'<div class="grid-stack-item-content">'
				+'<span class="widget_title">'+widgetName+'</span><hr>'
				+'<br><span class="widget_desc">Okky/Clien IT팁/정보를 확인합니다</span>'
				+'</div></div>';
			var grid = $('.grid-stack').data('gridstack');
			/* 추가함 */
			grid.addWidget(el, 0, 0, width, height, true);	
			/* ,근데 크기가 넘치면 제거해야 함, 체크도 꺼주고 */
			var currentHeight = parseInt($('.grid-stack').attr("data-gs-current-height"));
			if(currentHeight>10){
				swal({
					type:"warning",
					text:"화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!",
					confirmButtonText: '확인',
					confirmButtonColor: '#3085d6',
					allowOutsideClick:false
				});
				//alert("화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!");
				$element = $("#tipandinfo");
				var grid = $('.grid-stack').data('gridstack');
				grid.removeWidget($element);
				$("#tipandinfo_chk").prop("checked",false);
			}
		}
		else{
			$element = $("#"+$(this).val());
			var grid = $('.grid-stack').data('gridstack');
			grid.removeWidget($element);
		}
	});
	
	/* 일휴식타이머 분리 */
	$('#timer_chk').change(function(){
		if($(this).is(":checked")){
			var widgetName = "일휴식타이머";
			var width = $("#timer-width").val();
			var height = $("#timer-height").val();
			
			var el = '<div class="grid-stack-item"'
				+'id="'+$(this).val()+'">'
				+'<div class="grid-stack-item-content">'
				+'<span class="widget_title">'+widgetName+'</span><hr>'
				+'<br><span class="widget_desc">근무 휴식간 타이머를 설정합니다</span>'
				+'</div></div>';
			var grid = $('.grid-stack').data('gridstack');
			/* 추가함 */
			grid.addWidget(el, 0, 0, width, height, true);	
			/* ,근데 크기가 넘치면 제거해야 함, 체크도 꺼주고 */
			var currentHeight = parseInt($('.grid-stack').attr("data-gs-current-height"));
			if(currentHeight>10){
				swal({
					type:"warning",
					text:"화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!",
					confirmButtonText: '확인',
					confirmButtonColor: '#3085d6',
					allowOutsideClick:false
				});
				//alert("화면의 크기에 벗어나므로 위젯을 추가할 수가 없습니다!");
				$element = $("#timer");
				var grid = $('.grid-stack').data('gridstack');
				grid.removeWidget($element);
				$("#timer_chk").prop("checked",false);
			}
		}
		else{
			$element = $("#"+$(this).val());
			var grid = $('.grid-stack').data('gridstack');
			grid.removeWidget($element);
		}
	});
	
	$(".configButton, #weather-reset").mouseover(function(){
		 $(this).css("background-color","#68b9de");
		
	});
	
	$(".configButton, #weather-reset").mouseout(function(){
		 $(this).css("background-color","#b1c2cc");
	});
	
	
});

</script>
</body>
</html>