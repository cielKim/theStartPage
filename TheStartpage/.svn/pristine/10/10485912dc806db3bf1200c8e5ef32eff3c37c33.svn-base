<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01  Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html>
<head>
<meta charset="utf-8"/>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.1.0.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>


<script src="/TheStartpage/resources/js/sweetalert2.all.min.js"></script>

<script type="text/javascript">


 var timeToWorkStatic = 0; //근무시간을 멈춘 시간
 var timeToRestStatic = 0; // 휴식 시간을 멈춘 시간 

 
 var timeToWork = 0; // 근무 시간  
 var timeToRest = 0; // 휴식 시간
 

 var tid = 0; // 근무시간 점점 내려감
 var tid1 = 0; // 휴식시간이 점점 내려감 
 
 
//근무시간 타이머가 돌아가게 함 
 function startCountDown() {
    
    

    m = Math.floor((timeToWork% 3600)/60)+ "분" + (timeToWork % 60) +"초"; //남은 시간 계산
   
   var msg = "남은 시간은 " + m + "입니다."; // 화면에 보이게 
   
   $("#countTimeToWork").html(msg);      // div 영역에 보여줌 

   timeToWork--;            // 1초씩 감소
   timeToWorkStatic --;     // 멈춘시간 저장을 위해 1초씩 감소.
    if(timeToWork % 60 <0) {         // 시간이 종료 되었으면..
       clearInterval(tid);      // 타이머 해제
       timeToWorkStatic = Number($("#timeToWork").val()); // 타이머 종료 시, 초기 타이머 입력시간 저장.
       timeToWork=0;
      /*  alert("근무 종료 되었습니다.");
       timeToRest =  String(Number( $("#timeToRest").val())*60);
       tid1 = setInterval("startCountDown1()", 1000);
       alert("휴식을 취해주세요."); */
       
      
      //alert 창을 sweet alert 창으로 
	 	  if(timeToWork == 0){
	 	     	swal({
	 				type:"info",
	 				text:"근무가 종료 되었습니다.",
	 				confirmButtonText: '확인',
	 				confirmButtonColor: '#3085d6',
	 					allowOutsideClick: false
	 	     	}).then((result) => {
	 				if(result.value){
	 					
	 					timeToRest =  String(Number( $("#timeToRest").val())*60);
	 			       tid1 = setInterval("startCountDown1()", 1000);
	 			      swal({
	 		 				type:"info",
	 		 				text:"휴식을 취해주세요.",
	 		 				confirmButtonText: '확인',
	 		 				confirmButtonColor: '#3085d6',
	 		 				allowOutsideClick: false
	 			     })
	 			       
	 				}
	 				});
	 			}
       
       }
   
}

 
 //휴식 시간 타이머가 돌아가게 함 
function startCountDown1(){
   
     
 m1 = Math.floor((timeToRest%3600)/60)+ "분" + (timeToRest % 60) +"초";

   

   var msg = "남은 시간은 " + m1 + "입니다."; // 화면에 보이게 
   
   $("#countTimeToRest").html(msg);      // div 영역에 보여줌 

   timeToRest--;            // 1초씩 감소
   timeToRestStatic--;		// 멈춘시간 저장을 위해 1초씩 감소.
   if(timeToRest % 60 < 0) {         // 시간이 종료 되었으면..
      clearInterval(tid1);      // 타이머 해제
      timeToRestStatic = Number($("#timeToRest").val()); // 타이머 종료 시, 초기 타이머 입력시간 저장.
      timeToRest = 0;
      /* alert("휴식이 종료 되었습니다.");
      alert("근무를 재개합니다.");
      timeToWork =  String(Number($("#timeToWork").val())*60);
      tid = setInterval("startCountDown()", 1000); */
      
      if(timeToRest == 0){
          swal({
    			type:"info",
    			text:"휴식이 종료 되었습니다.",
    			confirmButtonText: '확인',
    			confirmButtonColor: '#3085d6',
    				 //alert("휴식이 종료 되었습니다."); 
    				allowOutsideClick: false
    		}).then((result) => {
    			if(result.value){
    				
    				  swal({
    						type:"info",
    						text:"근무를 재개합니다.",
    						confirmButtonText: '확인',
    						confirmButtonColor: '#3085d6',
    						allowOutsideClick: false
    					})
    				 // alert("근무를 재개합니다.");
    			}
    		});
          
       
          }
        
        
      timeToWork =  String(Number($("#timeToWork").val())*60);
      tid = setInterval("startCountDown()", 1000);
      
      
      
      
      
      
      
      }
   
}


    
 // 시작 함수 호출 시

  $(document).ready(function(){
     
          // 시작시
       $("#start").click(function(){
          
         /*  	if($("#timeToWork").val()==""){
          		alert("근무 시간 값을 입력해주세요!");
          		return
          	}
          	
          	if($("#timeToRest").val()==""){
          		alert("근무 시간 값을 입력해주세요!");
          		return
          	}
    
            if(isNaN($("#timeToWork").val())==true){
            	alert("근무 시간 값은 숫자만 입력가능합니다.");
            	return;
            } 
            
            if(isNaN($("#timeToRest").val())==true){
            	alert("휴식 시간 값은 숫자만 입력가능합니다.");
                return;
            } */
            
    	   if($("#timeToWork").val()==""){
         		
          	   swal({
       			type:"warning",
       			text:"근무 시간 값을 입력해주세요!",
       			confirmButtonText: '확인',
       			confirmButtonColor: '#3085d6',
       			allowOutsideClick: false
       			 
       		});
          		
          		 //alert("근무 시간 값을 입력해주세요!"); 
         
          		return
          	}
          	
            if(isNaN($("#timeToWork").val())==true){
            	
           	   swal({
          			type:"warning",
          			text:"근무 시간 값은 숫자만 입력가능합니다.",
          			confirmButtonText: '확인',
          			confirmButtonColor: '#3085d6',
          			allowOutsideClick: false
          			 
          		});
            	//alert("근무 시간 값은 숫자만 입력가능합니다.");
            	
            	
            	
            	
            	return;
            } 
          	
          	if($("#timeToRest").val()==""){
          		 swal({
            			type:"warning",
            			text:"휴식 시간 값을 입력해주세요!",
            			confirmButtonText: '확인',
            			confirmButtonColor: '#3085d6',
            			allowOutsideClick: false
            			 
            		});
          		
          		//alert("휴식 시간 값을 입력해주세요!");
          		
          		return
          	}
    
  
            
            if(isNaN($("#timeToRest").val())==true){
            	
            	swal({
        			type:"warning",
        			text:"휴식 시간 값은 숫자만 입력 가능합니다.",
        			confirmButtonText: '확인',
        			confirmButtonColor: '#3085d6',
        			allowOutsideClick: false
        			 
        		});
            	
            	//alert("휴식 시간 값은 숫자만 입력 가능합니다.");
                return;
            }
            
            
         //분으로 돌아갈 수있게 해놓음 
        timeToWork = String(Number($("#timeToWork").val())*60);
      
       
        //console.log(timeToWork);
      
   
        timeToRest =  String(Number($("#timeToRest").val())*60);
    
        //console.log(timeToRest);
   
        
        timeToWorkStatic = $("#timeToWork").val();
        timeToRestStatic = $("#timeToRest").val();
        
        
        
      if (timeToWork.length > 0) { //입력값이 0보다 크면 
           //alert('근무를 시작합니다.');
        tid = setInterval("startCountDown()", 1000); //타이머가 1초 씩 내려감 
        }
        
        else { 
        	
        	swal({
				type:"warning",
				text:"숫자를 입력해 주세요.",
				confirmButtonText: '확인',
				confirmButtonColor: '#3085d6',
				allowOutsideClick: false
			})
        // alert("숫자를 입력 해 주세요");// 입력값이 없을 경우에 alert차이 뜸
         return;
        } 
   
       
       // 정지시
       $("#stopAndResume").click(function(){
         
       if($("#stopAndResume").val() === "일시정지"){
           $("#stopAndResume").val("다시시작"); // 버튼이름이 다시시작으로 바뀜
          
          clearInterval(tid); //근무시간이 멈춤
          clearInterval(tid1);//휴식시간이 멈춤
          
          workTimeString = Math.floor((timeToWork%3600)/60) + "분" + (timeToWork % 60) +"초";
          restTimeString = Math.floor((timeToRest%3600)/60) + "분" + (timeToRest % 60) +"초";
          
          
          $("#countTimeToWork").html("남은 시간은  " +workTimeString+ "입니다."); //근무시간 남은 시간 
          if( $("#countTimeToRest").text().trim().length > 0){
             $("#countTimeToRest").html("남은 시간은  " +restTimeString+ "입니다."); //휴식시간 남은 시간 
          }
       }
       else{
          // 다시시작 버튼을 눌렀을 때
          
          $("#stopAndResume").val("일시정지");
         /*  console.log("timeToRestStatic "+timeToRestStatic);
          console.log('$("#timeToRest").val()'+$("#timeToRest").val());

          console.log("timeToWorkStatic "+timeToWorkStatic);
          console.log('$("#timeToWork").val()'+$("#timeToWork").val());  */
          
          
          if(timeToRestStatic == $("#timeToRest").val() && timeToRestStatic !== 0 ){
             //alert("일하던 중이셨군요!");
             tid = setInterval("startCountDown()", 1000);
          }
          else if(timeToWorkStatic == $("#timeToWork").val() && timeToWorkStatic !== 0){
             //alert("쉬시던 중이셨군요!");
             tid1 = setInterval("startCountDown1()", 1000);
          } 
          
       }
       
          });
       
       // 리셋시
       $("#reset").click(function(){
          
          clearInterval(tid);
          clearInterval(tid1);
          $("#countTimeToWork").html("남은 시간은 " +" 00:00 "+ "입니다.");
          $("#countTimeToRest").html("남은 시간은 " +" 00:00 "+ "입니다.");
          });
            
       }); 
          
   	$(".timerbutton").mouseover(function(){
		 $(this).css("background-color","#68b9de");
	});
	
	$(".timerbutton").mouseout(function(){
		 $(this).css("background-color","#b1c1ce");
	});
       
    }); 
 


</script>
<link rel="stylesheet" href="/TheStartpage/resources/css/widget-timer.css">
</head>
<body>
<form name="watchForm">
<table>
	<tr>
		<th>일 시간</th>
		<td><input type="text" id="timeToWork" placeholder= "일시간(분)을 입력하세요"/></td>
	</tr>
	<tr>
		<th>휴식 시간</th>
		<td><input type="text" id="timeToRest" placeholder= "휴식시간(분)을 입력하세요"/></td>
	</tr>
	<tr>
		<th>일 타이머</th>
		<td><span id="countTimeToWork"></span></td>
	</tr>
	<tr>
		<th>휴식 타이머</th>
		<td><span id="countTimeToRest"></span></td>
	</tr>
</table>
<hr>
<input type="button" value="타이머시작"  class="timerbutton" id="start"/>
<input type="button" value="일시정지" class="timerbutton" id="stopAndResume"/>
<input type="reset" value="리셋" class="timerbutton" id= "reset"/>  <!-- reset은 폼태그 안에서 만 먹힌다. -->


</form>
</body>
</html>
