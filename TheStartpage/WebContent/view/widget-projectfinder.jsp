<%@ page import="java.sql.*" %>
<%@ page import="kr.co.bit.login.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/widget-projectfinder.css">
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
		String query = "select * from projectfinder_config where email='"+email+"'";
		
		ResultSet rs = null;
		rs = stmt.executeQuery(query);
		
		String myConfig = "";
		while (rs.next()){
			myConfig = rs.getString("config");
		}
		String[] myOptions = myConfig.split("/");
		
		/* 개별 옵션에 맞춰서 프로젝트 구해오기 */
		conn = DriverManager.getConnection(dbURL, "hr", "hr");
		stmt = conn.createStatement();
		
		query = "select * from projectfinder where category in (";
		
		for(int i=0;i<myOptions.length;i++){
			if(myOptions[i].equals("dev1")){
				myOptions[i] = "웹";
			}
			else if(myOptions[i].equals("dev2")){
				myOptions[i] = "애플리케이션";
			}
			else if(myOptions[i].equals("dev3")){
				myOptions[i] = "워드프레스";
			}
			else if(myOptions[i].equals("dev4")){
				myOptions[i] = "퍼블리싱";
			}
			else if(myOptions[i].equals("dev5")){
				myOptions[i] = "일반 소프트웨어";
			}
			else if(myOptions[i].equals("dev6")){
				myOptions[i] = "커머스, 쇼핑몰";
			}
			else if(myOptions[i].equals("dev7")){
				myOptions[i] = "게임";
			}
			else if(myOptions[i].equals("dev8")){
				myOptions[i] = "임베디드";
			}
			else if(myOptions[i].equals("dev9")){
				myOptions[i] = "기타";
			}
			
			query += "'";
			query += myOptions[i];
			query += "'";
			if(i!=myOptions.length-1){
				query += ",";
			}
		}
		query += ")";

		rs = stmt.executeQuery(query);
		
		String title = "";
		String link = "";
		String category = "";
		String deadline = "";
		String skills = "";
		
		out.print("<div class='projectfinder'>");
		out.print("<table>");
		while (rs.next()){
			title = rs.getString("title");
			link = rs.getString("link");
			category = rs.getString("category");
			deadline = rs.getString("deadline");
			skills = rs.getString("skills");
			out.print("<tr>");
			out.print("<td><a href='"+link+"' target='_blank'>"+"<strong>"+title+"</strong></a>");
			out.print("<br>분야 "+category);
			out.print("<br>"+skills+"</td>");
			out.print("</tr>");
			
		}
		out.print("</table>");
		out.print("</div>");
	%>
</body>
</html>