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


 var timeToWorkStatic = 0; //�ٹ��ð��� ���� �ð�
 var timeToRestStatic = 0; // �޽� �ð��� ���� �ð� 

 
 var timeToWork = 0; // �ٹ� �ð�  
 var timeToRest = 0; // �޽� �ð�
 

 var tid = 0; // �ٹ��ð� ���� ������
 var tid1 = 0; // �޽Ľð��� ���� ������ 
 
 
//�ٹ��ð� Ÿ�̸Ӱ� ���ư��� �� 
 function startCountDown() {
    
    

    m = Math.floor((timeToWork% 3600)/60)+ "��" + (timeToWork % 60) +"��"; //���� �ð� ���
   
   var msg = "���� �ð��� " + m + "�Դϴ�."; // ȭ�鿡 ���̰� 
   
   $("#countTimeToWork").html(msg);      // div ������ ������ 

   timeToWork--;            // 1�ʾ� ����
   timeToWorkStatic --;     // ����ð� ������ ���� 1�ʾ� ����.
    if(timeToWork % 60 <0) {         // �ð��� ���� �Ǿ�����..
       clearInterval(tid);      // Ÿ�̸� ����
       timeToWorkStatic = Number($("#timeToWork").val()); // Ÿ�̸� ���� ��, �ʱ� Ÿ�̸� �Է½ð� ����.
       timeToWork=0;
      /*  alert("�ٹ� ���� �Ǿ����ϴ�.");
       timeToRest =  String(Number( $("#timeToRest").val())*60);
       tid1 = setInterval("startCountDown1()", 1000);
       alert("�޽��� �����ּ���."); */
       
      
      //alert â�� sweet alert â���� 
	 	  if(timeToWork == 0){
	 	     	swal({
	 				type:"info",
	 				text:"�ٹ��� ���� �Ǿ����ϴ�.",
	 				confirmButtonText: 'Ȯ��',
	 				confirmButtonColor: '#3085d6',
	 					allowOutsideClick: false
	 	     	}).then((result) => {
	 				if(result.value){
	 					
	 					timeToRest =  String(Number( $("#timeToRest").val())*60);
	 			       tid1 = setInterval("startCountDown1()", 1000);
	 			      swal({
	 		 				type:"info",
	 		 				text:"�޽��� �����ּ���.",
	 		 				confirmButtonText: 'Ȯ��',
	 		 				confirmButtonColor: '#3085d6',
	 		 				allowOutsideClick: false
	 			     })
	 			       
	 				}
	 				});
	 			}
       
       }
   
}

 
 //�޽� �ð� Ÿ�̸Ӱ� ���ư��� �� 
function startCountDown1(){
   
     
 m1 = Math.floor((timeToRest%3600)/60)+ "��" + (timeToRest % 60) +"��";

   

   var msg = "���� �ð��� " + m1 + "�Դϴ�."; // ȭ�鿡 ���̰� 
   
   $("#countTimeToRest").html(msg);      // div ������ ������ 

   timeToRest--;            // 1�ʾ� ����
   timeToRestStatic--;		// ����ð� ������ ���� 1�ʾ� ����.
   if(timeToRest % 60 < 0) {         // �ð��� ���� �Ǿ�����..
      clearInterval(tid1);      // Ÿ�̸� ����
      timeToRestStatic = Number($("#timeToRest").val()); // Ÿ�̸� ���� ��, �ʱ� Ÿ�̸� �Է½ð� ����.
      timeToRest = 0;
      /* alert("�޽��� ���� �Ǿ����ϴ�.");
      alert("�ٹ��� �簳�մϴ�.");
      timeToWork =  String(Number($("#timeToWork").val())*60);
      tid = setInterval("startCountDown()", 1000); */
      
      if(timeToRest == 0){
          swal({
    			type:"info",
    			text:"�޽��� ���� �Ǿ����ϴ�.",
    			confirmButtonText: 'Ȯ��',
    			confirmButtonColor: '#3085d6',
    				 //alert("�޽��� ���� �Ǿ����ϴ�."); 
    				allowOutsideClick: false
    		}).then((result) => {
    			if(result.value){
    				
    				  swal({
    						type:"info",
    						text:"�ٹ��� �簳�մϴ�.",
    						confirmButtonText: 'Ȯ��',
    						confirmButtonColor: '#3085d6',
    						allowOutsideClick: false
    					})
    				 // alert("�ٹ��� �簳�մϴ�.");
    			}
    		});
          
       
          }
        
        
      timeToWork =  String(Number($("#timeToWork").val())*60);
      tid = setInterval("startCountDown()", 1000);
      
      
      
      
      
      
      
      }
   
}


    
 // ���� �Լ� ȣ�� ��

  $(document).ready(function(){
     
          // ���۽�
       $("#start").click(function(){
          
         /*  	if($("#timeToWork").val()==""){
          		alert("�ٹ� �ð� ���� �Է����ּ���!");
          		return
          	}
          	
          	if($("#timeToRest").val()==""){
          		alert("�ٹ� �ð� ���� �Է����ּ���!");
          		return
          	}
    
            if(isNaN($("#timeToWork").val())==true){
            	alert("�ٹ� �ð� ���� ���ڸ� �Է°����մϴ�.");
            	return;
            } 
            
            if(isNaN($("#timeToRest").val())==true){
            	alert("�޽� �ð� ���� ���ڸ� �Է°����մϴ�.");
                return;
            } */
            
    	   if($("#timeToWork").val()==""){
         		
          	   swal({
       			type:"warning",
       			text:"�ٹ� �ð� ���� �Է����ּ���!",
       			confirmButtonText: 'Ȯ��',
       			confirmButtonColor: '#3085d6',
       			allowOutsideClick: false
       			 
       		});
          		
          		 //alert("�ٹ� �ð� ���� �Է����ּ���!"); 
         
          		return
          	}
          	
            if(isNaN($("#timeToWork").val())==true){
            	
           	   swal({
          			type:"warning",
          			text:"�ٹ� �ð� ���� ���ڸ� �Է°����մϴ�.",
          			confirmButtonText: 'Ȯ��',
          			confirmButtonColor: '#3085d6',
          			allowOutsideClick: false
          			 
          		});
            	//alert("�ٹ� �ð� ���� ���ڸ� �Է°����մϴ�.");
            	
            	
            	
            	
            	return;
            } 
          	
          	if($("#timeToRest").val()==""){
          		 swal({
            			type:"warning",
            			text:"�޽� �ð� ���� �Է����ּ���!",
            			confirmButtonText: 'Ȯ��',
            			confirmButtonColor: '#3085d6',
            			allowOutsideClick: false
            			 
            		});
          		
          		//alert("�޽� �ð� ���� �Է����ּ���!");
          		
          		return
          	}
    
  
            
            if(isNaN($("#timeToRest").val())==true){
            	
            	swal({
        			type:"warning",
        			text:"�޽� �ð� ���� ���ڸ� �Է� �����մϴ�.",
        			confirmButtonText: 'Ȯ��',
        			confirmButtonColor: '#3085d6',
        			allowOutsideClick: false
        			 
        		});
            	
            	//alert("�޽� �ð� ���� ���ڸ� �Է� �����մϴ�.");
                return;
            }
            
            
         //������ ���ư� ���ְ� �س��� 
        timeToWork = String(Number($("#timeToWork").val())*60);
      
       
        //console.log(timeToWork);
      
   
        timeToRest =  String(Number($("#timeToRest").val())*60);
    
        //console.log(timeToRest);
   
        
        timeToWorkStatic = $("#timeToWork").val();
        timeToRestStatic = $("#timeToRest").val();
        
        
        
      if (timeToWork.length > 0) { //�Է°��� 0���� ũ�� 
           //alert('�ٹ��� �����մϴ�.');
        tid = setInterval("startCountDown()", 1000); //Ÿ�̸Ӱ� 1�� �� ������ 
        }
        
        else { 
        	
        	swal({
				type:"warning",
				text:"���ڸ� �Է��� �ּ���.",
				confirmButtonText: 'Ȯ��',
				confirmButtonColor: '#3085d6',
				allowOutsideClick: false
			})
        // alert("���ڸ� �Է� �� �ּ���");// �Է°��� ���� ��쿡 alert���� ��
         return;
        } 
   
       
       // ������
       $("#stopAndResume").click(function(){
         
       if($("#stopAndResume").val() === "�Ͻ�����"){
           $("#stopAndResume").val("�ٽý���"); // ��ư�̸��� �ٽý������� �ٲ�
          
          clearInterval(tid); //�ٹ��ð��� ����
          clearInterval(tid1);//�޽Ľð��� ����
          
          workTimeString = Math.floor((timeToWork%3600)/60) + "��" + (timeToWork % 60) +"��";
          restTimeString = Math.floor((timeToRest%3600)/60) + "��" + (timeToRest % 60) +"��";
          
          
          $("#countTimeToWork").html("���� �ð���  " +workTimeString+ "�Դϴ�."); //�ٹ��ð� ���� �ð� 
          if( $("#countTimeToRest").text().trim().length > 0){
             $("#countTimeToRest").html("���� �ð���  " +restTimeString+ "�Դϴ�."); //�޽Ľð� ���� �ð� 
          }
       }
       else{
          // �ٽý��� ��ư�� ������ ��
          
          $("#stopAndResume").val("�Ͻ�����");
         /*  console.log("timeToRestStatic "+timeToRestStatic);
          console.log('$("#timeToRest").val()'+$("#timeToRest").val());

          console.log("timeToWorkStatic "+timeToWorkStatic);
          console.log('$("#timeToWork").val()'+$("#timeToWork").val());  */
          
          
          if(timeToRestStatic == $("#timeToRest").val() && timeToRestStatic !== 0 ){
             //alert("���ϴ� ���̼̱���!");
             tid = setInterval("startCountDown()", 1000);
          }
          else if(timeToWorkStatic == $("#timeToWork").val() && timeToWorkStatic !== 0){
             //alert("���ô� ���̼̱���!");
             tid1 = setInterval("startCountDown1()", 1000);
          } 
          
       }
       
          });
       
       // ���½�
       $("#reset").click(function(){
          
          clearInterval(tid);
          clearInterval(tid1);
          $("#countTimeToWork").html("���� �ð��� " +" 00:00 "+ "�Դϴ�.");
          $("#countTimeToRest").html("���� �ð��� " +" 00:00 "+ "�Դϴ�.");
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
		<th>�� �ð�</th>
		<td><input type="text" id="timeToWork" placeholder= "�Ͻð�(��)�� �Է��ϼ���"/></td>
	</tr>
	<tr>
		<th>�޽� �ð�</th>
		<td><input type="text" id="timeToRest" placeholder= "�޽Ľð�(��)�� �Է��ϼ���"/></td>
	</tr>
	<tr>
		<th>�� Ÿ�̸�</th>
		<td><span id="countTimeToWork"></span></td>
	</tr>
	<tr>
		<th>�޽� Ÿ�̸�</th>
		<td><span id="countTimeToRest"></span></td>
	</tr>
</table>
<hr>
<input type="button" value="Ÿ�̸ӽ���"  class="timerbutton" id="start"/>
<input type="button" value="�Ͻ�����" class="timerbutton" id="stopAndResume"/>
<input type="reset" value="����" class="timerbutton" id= "reset"/>  <!-- reset�� ���±� �ȿ��� �� ������. -->


</form>
</body>
</html>
