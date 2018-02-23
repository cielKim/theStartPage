<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
table, tr, td, th {
	/* border: 1px solid #D4E0EE; */
	border-collapse: collapse;
	font-family: verdana, sans-serif;
	color: #555;
	font-size: small;
	align-content: center;
	
}

th, td {
	padding: 5px;
	align-content: center;
}

th {
	background-color: #E6EDF5;
	color: #405e79;
}

/*tr:nth-child(even){
	
	
	background-color: #F7F9FC;
}*/
tr.even {
	background-color: #F7F9FC;
}

tr:hover {
	background-color: #FEFDCF;
}

td a:link, td a:visited {
	color: #697880;
	text-decoration: none;
}

td a:hover {
	text-decoration: italic;
}

#more:link, #more:visited {
	text-decoration:none;
	color:#163d50;
	font-size:14px;
}

/* .btn {
  font-size: small;
  font-weight: 300;
  padding: 5px 15px;
  letter-spacing: 1px;
  text-transform: uppercase;
  border-radius: 0;
  font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; } */

</style>



</head>
<body>
	<center>
	<table style="width: 100%" align="center">
		<tr>
			<th><center>제목</center></th>
			<th><cetner>저자</cetner></th>
		</tr>
		<c:forEach items="${ requestScope.list }" var="paper" varStatus="pa">
			<tr>
				<td><a href="${paper.link}" target="_blank">${ paper.title }</a></td>
				<c:forEach items="${ requestScope.writerList }" var="w" varStatus="wl">
					<c:if test="${pa.count == wl.count}">
						<td><b>${ w.writer }</b>:${ w.year }</td>
					</c:if>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
	</center>
	<div align="right"><a href="${ url }" target="_blank" id="more"> >>더보기 </a></div>
</body>
</html>