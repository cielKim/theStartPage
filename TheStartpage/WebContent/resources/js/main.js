$('#main').pageScroll();
$('#back').on('click', function() {
	$('#main').moveToPage(0);
});
$("#login_modal").hide();

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
	if ($("#login_modal").css("display") == "block") {
		$("#login_modal").hide();
	} else {
		$("#login_modal").show(1000);
	}
});

$(function() {
	/* scroll 원페이지 기능 */
	$("#draggable").draggable();

	/* GridStack 부분 시작 */
	var options = {
		/* 영역 지정해버리기 */
		width : 10,
		height : 8,
		disableResize : true,
	/* 디폴트 세로 마진이 20이라서 0으로 처리하고 css에서 마진 값을 주기로 함 */
	/* verticalMargin:0 */
	/* 애초에 verticalMargin이 20이고 content를 양옆으로 10 줄이는 방식으로 만들었기에 20 쓰는 것이 좋음 */
	};

	$('.grid-stack').gridstack(options);

	$('#widgetInfo').on(
			"click",
			function() {
				$(".grid-stack-item-content").css("border", "1px pink solid");
				console.log("<<위젯 정보입니다>>");
				for (var i = 0; i < $(".grid-stack-item").length; i++) {
					console.log((i + 1) + "번째 위젯의 x/y 좌표 : " + "("
							+ $('.grid-stack-item').eq(i).attr('data-gs-x')
							+ ","
							+ $('.grid-stack-item').eq(i).attr('data-gs-y')
							+ ")");
					console.log((i + 1)
							+ "번째 위젯의 가로/세로 크기 : "
							+ "("
							+ $('.grid-stack-item').eq(i).attr('data-gs-width')
							+ ","
							+ $('.grid-stack-item').eq(i)
									.attr('data-gs-height') + ")");
				}

			});
});