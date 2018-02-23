<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<div id="login_modal" class="modal">
	<div class="modal-content">
	      <span class="close">&times;</span>
		<c:if test="${ empty userVO }">
		<h1>로그인</h1>
		<form action="login.do" method="post" name="loginForm" onsubmit="return checkLoginForm()">
			<p class="memberInput">
			<img src="/TheStartpage/resources/img/main/cd-icon-email.svg" class="memberIcon">
			<input class="box1" type="email" name="email" placeholder="E-mail" size="50">
			</p>
			<p class="memberInput" id="passwordInput">
			<img src="/TheStartpage/resources/img/main/cd-icon-password.svg" class="memberIcon">
			<input class="box1" type="password" name="password" placeholder="Password" size="50">
			</p>
			<input class="box2" type="submit" value="로그인" id="login"> 
			<input class="box2" type="button" value="회원가입" id="join">
			<input class="box2" type="button" value="비밀번호찾기" id="findPwd"><br>
		</form>
		</c:if>
		<c:if test="${ not empty userVO }">
		<br>
		<h1>로그아웃</h1>
			<a href="<%= request.getContextPath()%>/logout.do"><input class="box2" type="button" value="로그아웃" id="logout"></a> 
		</c:if>
	</div>
</div>
<script src="/TheStartpage/resources/js/sweetalert2.all.min.js"></script>
<script>
 	$(function(){
		$("#join").click(function() {
			$("#login_modal").hide();
			$("#join_modal").show();
		});
		$(".close").click(function() {
			$("#login_modal").hide();
		});
		$("#findPwd").click(function(){
			$("#login_modal").hide();
			$("#findPwd_modal").show();
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
 	
 	function checkLoginForm(){
		var joinForm = document.loginForm;
		
		if(isNull(loginForm.email, '이메일을 입력해주세요!')){
			return false;
		}
		
		if(isNull(loginForm.password, '패스워드를 입력해주세요!')){
			return false;
		}
		
	}

	
</script>