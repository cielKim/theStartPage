<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="/TheStartpage/resources/js/sweetalert2.all.min.js"></script>
<script>
window.onload = function(){
	swal({
		type:"info",
		text:"${requestScope.msg}",
		confirmButtonText: '확인',
		confirmButtonColor: '#3085d6',
		allowOutsideClick:false
	}).then((result) => {
		if(result.value){
			location.href = '/TheStartpage/main.jsp';
		}
	});
}
</script>