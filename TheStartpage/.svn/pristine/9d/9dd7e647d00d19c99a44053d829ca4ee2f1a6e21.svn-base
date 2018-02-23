<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="/TheStartpage/resources/js/sweetalert2.all.min.js"></script>
<script>
window.onload = function(){
	swal({
		title:"회원 가입을 축하합니다.",
		type:"success",
		text:"TheStartpage를 자유롭게 이용해보세요!",
		confirmButtonText: '확인',
		confirmButtonColor: '#3085d6',
		allowOutsideClick:false
	}).then((result) => {
		if(result.value){
			location.href = '/TheStartpage/main.jsp';
		}
	});
	//location.href = '/TheStartpage/main.jsp';
}

</script>