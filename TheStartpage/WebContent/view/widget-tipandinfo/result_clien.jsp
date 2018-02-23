<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${ requestScope.ClienList }" var="Clien">
		<tr>
			<td><a href="${ Clien.link }" target="_blank">${ Clien.title }</a></td>
		</tr>
</c:forEach>