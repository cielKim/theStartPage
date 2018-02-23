<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="join_modal" class="modal">
	<div class="modal-content">
	      <span class="close1">&times;</span>
		<h1>회원가입</h1>
		<form action="joinProcess.do" method="post" name="joinForm" onsubmit="return checkJoinForm()">
			<p class="memberInput">
			<img src="/TheStartpage/resources/img/main/cd-icon-email.svg" class="memberIcon">
			<input class="box1" type="email" name="email" placeholder="E-mail" size="50">
			</p>
			<p class="memberInput" id="passwordInput">
			<img src="/TheStartpage/resources/img/main/cd-icon-password.svg" class="memberIcon">
			<input class="box1" type="password" name="password" placeholder="Password" size="50">
			</p>
			<input class="box2" type="submit" value="등록">
			<input class="box2" type="button" value="취소" id="reset"><br>
		</form>
	</div>
</div>
<script src="/TheStartpage/resources/js/sweetalert2.all.min.js"></script>
<script>
	
	$(function(){
		$("#reset").click(function() {
			if ($("#join_modal").css("display") == "block") {
				$("#join_modal").hide();
			} else {
				$("#join_modal").hide();
			}
		});
		$(".close1").click(function() {
			$("#join_modal").hide();
		});
	});
	
	function isNull(obj, msg){
		if(obj.value==""){
			swal({
				type:"warning",
				text:msg,
				confirmButtonText: '확인',
				confirmButtonColor: '#3085d6',
				allowOutsideClick:false
			});
			obj.focus();
			return true;
		}
		return false;
	}
	
	function joinCheck(email){
		var check = true;
		$.ajax({
			url:"/TheStartpage/joinCheck.do",
			data:{
				email:email
			},
			async: false,
			type:"POST",
			success:function(data){
				var ifDuplication = data.trim();
				if(ifDuplication=='true'){
					swal({
						type:"warning",
						text:'중복된 이메일이 존재합니다. 다른 이메일을 써주세요!',
						confirmButtonText: "확인",
						confirmButtonColor: '#3085d6',
						allowOutsideClick:false
					});
					check = true;
					document.joinForm.email.value = "";
					document.joinForm.password.value = "";
				}
				else if(ifDuplication=='false'){
					check = false;
				}
			}
		});
		
		return check;
	}
	
	function checkJoinForm(){
		var joinForm = document.joinForm;
		
		if(joinCheck(joinForm.email.value)){
			return false;
		}
		
		if(isNull(joinForm.email, '이메일을 입력해주세요!')){
			return false;
		}
		
		if(isNull(joinForm.password, '패스워드를 입력해주세요!')){
			return false;
		}
		
		
	}
</script>