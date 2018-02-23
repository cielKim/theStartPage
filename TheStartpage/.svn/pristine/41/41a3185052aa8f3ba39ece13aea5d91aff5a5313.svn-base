<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="kr.co.bit.login.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.twitter-timeline{
width: 500px !important;
height: 800px !important;
}
</style>
<link rel="stylesheet" href="../resources/css/widget-twitter.css">
</head>
<body>
		<!--트위터리스트에따른 타임라인 -->
		<%
		LoginVO loginVO = (LoginVO)session.getAttribute("userVO");
		String email = loginVO.getEmail();
		
		String dbURL = "jdbc:mysql://localhost:3306/devproject";

		Class.forName("com.mysql.jdbc.Driver");
		
		/* 먼저 개별적인 옵션값을 구해오기 */
		Connection conn = DriverManager.getConnection(dbURL, "hr", "hr");
		Statement stmt = conn.createStatement();
		String query = "select * from twitter_config where email='"+email+"'";
		
		ResultSet rs = null;
		rs = stmt.executeQuery(query);
		
		String myConfig = "";
		while (rs.next()){
			myConfig = rs.getString("config");
		}
		
		String[] myTwitterList = myConfig.split("\\.");
		String id = myTwitterList[0];
		String listName = myTwitterList[1]; 
		out.println("<a class='twitter-timeline' data-width='800' data-height='500' ");
		out.println("href='https://twitter.com/"+id+"/lists/"+listName+"/test?ref_src=twsrc%5Etfw'></a>");

		%>

<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

</body>
</html>