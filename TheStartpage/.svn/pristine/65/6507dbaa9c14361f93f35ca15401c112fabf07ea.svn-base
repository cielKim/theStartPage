<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/widget-itnews.css">
</head>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">

	$(function(){
		
		$("#itworld").css("background-color","#68b9de");
		
		$.ajax({
			url:"/TheStartpage/itnews.do",
			type:"POST",
			data:{
				company:"itworld"
			},
			success:function(result){
				$('#content').html(result);
			}
		})
		
		$("#itworld").click(function(){
			$("#ddaily").css("background-color","#b1c1ce");
			$("#itworld").css("background-color","#68b9de");
			var company = $(this).val();
			$.ajax({
				url:"/TheStartpage/itnews.do",
				type:"POST",
				data:{
					company:company
				},
				success:function(result){
					$('#content').html(result);
				}
			});
		});
		
		$("#ddaily").click(function(){
			$("#itworld").css("background-color","#b1c1ce");
			$("#ddaily").css("background-color","#68b9de");
			var company = $(this).val();
			$.ajax({
				url:"/TheStartpage/itnews.do",
				type:"POST",
				data:{
					company:company
				},
				success:function(result){
					$('#content').html(result);
				}
			});
		});
	});
 	
</script>
<body>
	<div>
	<input class="itnewsbutton" type="button" id="itworld" value="itworld"/>
	<input class="itnewsbutton" type="button" id="ddaily" value="ddaily"/>
	<!-- <input type="text" id="search"/> -->
	</div>
	<table id="content">
	</table>
</body>
</html>