<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${ requestScope.OkkyList }" var="Okky">
		<tr>
			<td><a href="${ Okky.link }" target="_blank">${ Okky.title }</a></td>
		</tr>
</c:forEach>