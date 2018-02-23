<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="kr.co.bit.login.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript" src="/TheStartpage/resources/js/widget-weather.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$.ajax({
		url:"/TheStartpage/weather.do",
	    type:"POST",
	    data:{
	    	email:"${sessionScope.userVO.email}"
	    },
	    success: function(data) {
	    	// console.log(data);
	        $('#weather_box1').html(data);
	    }
	});
	setTimeout("updateData()",600000);
	 
});

function updateData(sido, gugun, dong){

		$.ajax({
			url:"/TheStartpage/weather.do",
		    type:"POST",
		    data:{
		    	email:"${sessionScope.userVO.email}"
		    },
		    success: function(data) {
		    	// console.log(data);
		        $('#weather_box1').html(data);
		    }
		});
		setTimeout("updateData()",600000);

}
</script>
<link rel="stylesheet" href="/TheStartpage/resources/css/widget-weather.css">
</head>

<body>
	<div id='weather_box1'>
	</div>
</body>
</html>
