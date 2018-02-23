<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Autocomplete - Remote JSONP datasource</title>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
  $(function(){
	  $("#searchSubmit").mouseover(function(){
		  $("#searchSubmit").css("background-color","#68b9de");
	  });
	  
	  $("#searchSubmit").mouseout(function(){
		  $("#searchSubmit").css("background-color","#b1c1ce");
	  });
	  
	  $("#searchReset").mouseover(function(){
		  $("#searchReset").css("background-color","#68b9de");
	  });
	  
	  $("#searchReset").mouseout(function(){
		  $("#searchReset").css("background-color","#b1c1ce");
	  });
  })
  
  function formSubmit(){
    var keywordString = $('#keyword').val().trim(); //keyword받아오기
    // console.log("keyword : " + keywordString);
    /* var url = "/search.do?keyword=";
    var request_url = url + keywordString;
    console.log("request_url: " + request_url); */
    $.ajax({
      url: "/TheStartpage/search.do",
      type: "POST",
      data:{
    	  keyword:keywordString
      },
      success: function (result) {
    	//console.log("결과를 가져오는 데에는 성공함");
        $('#content').html(result);
      }
    });
  }
  
  function f5(){
	  $("#content").html('<img src="/TheStartpage/resources/img/widget-papersearch/papersearch2.png">');
  }
  </script>
  <link rel="stylesheet" href="../resources/css/widget-papersearch.css">
</head>
<body>

	<div id="inputs" align="right">
		<form name="keywordForm" id="keywordForm">
			<input type="text" style="display: none;" /> 
			<input type="text" class="btn" name="keyword" id="keyword" value="" placeholder="논문 키워드를 입력하세요"/> 
			<input type="button" class="button" id="searchSubmit" value="검색" onclick="formSubmit()" />
			<input type="button" class="button" id="searchReset" value="초기화" onclick="f5()" />
		</form>
	</div>
	<br>
	<div id="content"><img src="/TheStartpage/resources/img/widget-papersearch/papersearch2.png"></div>
</body>
</html>