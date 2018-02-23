<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<div id="findPwd_modal" class="modal">
	<div class="modal-content">
	    <span class="close">&times;</span>
		<h1>비밀번호 찾기</h1>
		<form action="findPwd.do" method="post" name="findPwdForm" onsubmit="return checkFindPwdForm()">
			<p class="memberInput">
			<img src="/TheStartpage/resources/img/main/cd-icon-email.svg" class="memberIcon">
			<input class="box1" type="email" name="email" id="emailForPwd" placeholder="가입하신 이메일 주소를 적어주세요" size="50">
			</p>
			<input class="box2" type="submit" value="이메일로 보내기"><br>
		</form>
	</div>
</div>
<script src="/TheStartpage/resources/js/sweetalert2.all.min.js"></script>
<script>
 	window.onload = function(){
		$(".close").click(function() {
			$("#findPwd_modal").hide();
		});
	};
	
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
 	
 	function checkFindPwdForm(){
		var findPwdForm = document.findPwdForm;
		
		if(isNull(findPwdForm.email, '이메일을 입력해주세요!')){
			return false;
		}
		
	}
 
	
</script>