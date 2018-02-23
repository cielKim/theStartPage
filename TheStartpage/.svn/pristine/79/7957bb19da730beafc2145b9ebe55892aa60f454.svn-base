<%@ page import="java.sql.*" %>
<%@ page import="kr.co.bit.login.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IT책 베스트셀러</title>
<link rel="stylesheet" type="text/css" href="../resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="../resources/slick/slick-theme.css"/>
<link rel="stylesheet" type="text/css" href="../resources/css/widget-itbookbest.css">
</head>
<body>
	<%
		LoginVO loginVO = (LoginVO)session.getAttribute("userVO");
		String email = loginVO.getEmail();
		
		String dbURL = "jdbc:mysql://localhost:3306/devproject";

		Class.forName("com.mysql.jdbc.Driver");
		
		/* 먼저 개별적인 옵션값을 구해오기 */
		Connection conn = DriverManager.getConnection(dbURL, "hr", "hr");
		Statement stmt = conn.createStatement();
		String query = "select * from itbookbest_config where email='"+email+"'";
		
		ResultSet rs = null;
		rs = stmt.executeQuery(query);
		
		String myConfig = "";
		while (rs.next()){
			myConfig = rs.getString("config");
		}
		String[] myOptions = myConfig.split("/");
		
		/* 개별 옵션에 맞춰서 카테고리별로의 책을 구해오기 */
		conn = DriverManager.getConnection(dbURL, "hr", "hr");
		stmt = conn.createStatement();
		query = "select * from itbookbest where category in (";
		
		for(int i=0;i<myOptions.length;i++){
			query += "'";
			query += myOptions[i];
			query += "'";
			if(i!=myOptions.length-1){
				query += ",";
			}
		}
		query += ")";

		rs = stmt.executeQuery(query);
		out.print("<div class='itbookbest'>");
		while (rs.next()) {
			
			out.print("<div>");
			out.print("<br>");
			out.print("<img class='bookImg' src='" + rs.getString("imgSrc") + "' alt='" + rs.getString("title")
					+ "'>");
			out.print("<p class='title'>"+rs.getString("title")+"</p>");
			out.print("<span class='author'>"+rs.getString("author")+"</span>");
			out.print("</div>");
		}
		out.print("</div>");
	%>
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
  <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
  <script type="text/javascript" src="../resources/slick/slick.min.js"></script>
  
  <script type="text/javascript">
    $(document).ready(function(){
      $('.itbookbest').slick({
    	  slidesToShow: 3,
    	  slidesToScroll: 1,
    	  autoplay: true,
    	  autoplaySpeed: 2000,
    	  prevArrow: null,
    	  nextArrow: null
      });
    });
  </script>
</body>
</html>