<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/TheStartpage/resources/css/widget-stretching.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
		$(document).ready(function() {
			$('button').on('click',function(){
				var selValue = $(this).val();
				$('[data-video="'+ selValue +'"]').show().siblings('video').hide();
			});
			
			  $("#stretchingbutton1").mouseover(function(){
				  $("#stretchingbutton1").css("background-color","#68b9de");
			  });
			  
			  $("#stretchingbutton1").mouseout(function(){
				  $("#stretchingbutton1").css("background-color","#b1c1ce");
			  });
			  
			  $("#stretchingbutton2").mouseover(function(){
				  $("#stretchingbutton2").css("background-color","#68b9de");
			  });
			  
			  $("#stretchingbutton2").mouseout(function(){
				  $("#stretchingbutton2").css("background-color","#b1c1ce");
			  });
			  
			  $("#stretchingbutton3").mouseover(function(){
				  $("#stretchingbutton3").css("background-color","#68b9de");
			  });
			  
			  $("#stretchingbutton3").mouseout(function(){
				  $("#stretchingbutton3").css("background-color","#b1c1ce");
			  });
			  
			  $("#stretchingbutton4").mouseover(function(){
				  $("#stretchingbutton4").css("background-color","#68b9de");
			  });
			  
			  $("#stretchingbutton4").mouseout(function(){
				  $("#stretchingbutton4").css("background-color","#b1c1ce");
			  });
		});
</script>

	<link rel="stylesheet" href="../resources/css/widget-stretching.css">
</head>
	<body>
		<div>
		<button value="1" id="stretchingbutton1">목/어깨</button>
		<button value="2" id="stretchingbutton2">허리</button>
		<button value="3" id="stretchingbutton3">다리</button>
		<button value="4" id="stretchingbutton4">팔/손목</button>
		
			<video data-video="1" src="../resources/video/ver1.mp4" controls style="display: none;"></video>
			<video data-video="2" src="../resources/video/ver2.mp4" controls style="display: none;"></video>
			<video data-video="3" src="../resources/video/ver3.mp4" controls style="display: none;"></video>
			<video data-video="4" src="../resources/video/ver4.mp4" controls style="display: none;"></video>
		</div>
	</body>
</html>
