<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/widget-tipandinfo.css">
</head>
<body>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">

	$(function(){
		
		$("#clien").css("background-color","#68b9de");
		
		$.ajax({
			url:"/TheStartpage/tipandinfo.do",
			type:"POST",
			data:{
				board:"clien"
			},
			success:function(result){
				$('#content').html(result);
			}
		})
		
		$("#clien").click(function(){
			$("#okky").css("background-color","#b1c1ce");
			$("#clien").css("background-color","#68b9de");
			var board = $(this).val();
			$.ajax({
				url:"/TheStartpage/tipandinfo.do",
				type:"POST",
				data:{
					board:board
				},
				success:function(result){
					$('#content').html(result);
				}
			});
		});
		
		$("#okky").click(function(){
			$("#clien").css("background-color","#b1c1ce");
			$("#okky").css("background-color","#68b9de");
			var board = $(this).val();
			$.ajax({
				url:"/TheStartpage/tipandinfo.do",
				type:"POST",
				data:{
					board:board
				},
				success:function(result){
					$('#content').html(result);
				}
			});
		});
		
	});
 	
</script>
<div>
	<input class="tipandinfobutton" type="button" id="clien" value="clien"/>
	<input class="tipandinfobutton" type="button" id="okky" value="okky"/>
	<!-- <input type="text" id="search"/> -->
	</div>
	<table id="content">
	</table>
</body>
</html>