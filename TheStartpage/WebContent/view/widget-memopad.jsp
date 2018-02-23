<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- CSS -->
<link rel="stylesheet" href="../resources/css/jquery-ui.css">
<link rel="stylesheet" href="../resources/css/trumbowyg.css">
<link rel="stylesheet" href="../resources/css/jquery.minicolors.css">
<link rel="stylesheet" href="../resources/css/jquery.postitall.css">
<link rel="stylesheet" href="../resources/css/widget-memopad.css">

<!-- JS -->
<script src="../resources/js/jquery-3.2.1.min.js"></script>
<script src="../resources/js/jquery-ui.js"></script>
<script src="../resources/js/trumbowyg.js"></script>
<script src="../resources/js/jquery.minicolors.js"></script>
<script src="../resources/js/jquery.postitall.js"></script>

</head>
<body>



<!-- JS -->
<script>
$(document).ready(function() {
    var idNewNote = null;
    $('#newNote2').click(function(e){
    	if(idNewNote != null){
    		$.PostItAll.destroy(idNewNote);
    		idNewNote = null;
    	} 
    	
    	$.PostItAll.new({
    		content: '새로운 메모를 입력하세요',
    		onCreated: function(id, option, obj){
    			idNewNote = id;
    		},
    		onDelete: function(){
    			idNewNote = null;
    		}
    	});
    	e.preventDefault();
    	
    });
    $('#idDeleteCreated').click(function(e){
    	$.PostItAll.remove(idNewNote);
    	e.preventDefault();
    });

    
   /*  $.PostItAll.changeConfig('global', {
        
        addArrow : 'all',

    });
     */
     $.PostItAll.new({
    	 content : '새로운 메모를 입력하세요',
    	 width : 270,
    	 height : 200,
    	 style : {
    	    tresd           : false,
    	    backgroundcolor : 'white',
    	    fontfamily      : 'verdana',
    	    fontsize        : 'small',
    	    textcolor       : '#697880',
    	    textshadow      : false,
    	    arrow           : 'none',
    	 },
    	}); 
    
     $.PostItAll.changeConfig('note', {
    	 content : '새로운 메모를 입력하세요',
    	 width : 260,
    	 height: 200,
    	 style : {
    	    tresd           : false,
    	    backgroundcolor : 'white',
    	    fontfamily      : 'verdana',
    	    fontsize        : 'small',
    	    textcolor       : '#697880',
    	    textshadow      : false,
    	    arrow           : 'none',
    	 },
    	}); 
});
</script>



</body>
</html>