<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import=" java.sql.DriverManager"%>
<%@ page import=" java.sql.ResultSet"%>
<%@ page import=" java.sql.SQLException"%>
<%@ page import=" java.util.HashMap"%>
<%@ page import=" java.util.Map"%>
<%@ page import=" java.util.Random"%>
<%@ page import=" java.util.Timer"%>
<%@ page import=" java.util.TimerTask"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="../resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

/* setInterval(function(){
	window.location.reload()
},5000) */
/* function pagestart(){
	window.setInterval(window.location.reload(),50000);
} */

$(function(){
	setInterval(function(){
		$.ajax({
			url:"/TheStartpage/itword.do",
			type:"POST",
			success:function(result){
				$('#wordbook').html(result);
			}
		})
		
	}, 5000);
});

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>itword</title>
<link rel="stylesheet" href="../resources/css/widget-itword.css">
</head>

<body>
	<table id="wordbook">
		<tr>
			<td class="content">Loading...</td>
		</tr>
		<tr>
			<td class="content"></td>
		</tr>
	</table>
</body>
</html>