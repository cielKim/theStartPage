<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.IOException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.HashSet"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="java.util.Calendar"%>
<%@page import="org.jsoup.nodes.Document"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Conference</title>
<link rel="stylesheet" href="../resources/css/widget-conference.css">
</head>
<body>

	<%
		HashSet<String> links = new HashSet<String>();
		String URL = "http://www.sek.co.kr/schedule_all.php";
		if(!links.contains(URL))
		{
			try {
		if (links.add(URL)) {
			System.out.println(URL);
		}

		SimpleDateFormat day = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();
		String strToday = day.format(cal.getTime());

		Document document = Jsoup.connect(URL).get();
		String title = document.select(".schedule_ltitle").text();
		String info = document.select("p").text();

		String[] titlelis = title.split("\\[콘퍼런스]");
		String[] infolis = info.split("일시");
		String[] infotest = info.split("일시 : ");

		for (int i = 1; i < titlelis.length; i++) {
			if (infotest[i].split("[(]")[0].replace("년", "-").replace("월", "-").replace("일", "").replaceAll(" ", "")
					.trim().compareTo(strToday) >= 0) {

				out.print("<div>");
				out.print("<span class='title'>" + titlelis[i] + "</span><br>");
				out.print("<span class='info'>" + infolis[i] + "</span>");
				out.print("</div>");

			}
		}
		out.print("</div>");

			} catch (IOException e) {
		System.err.println("For '" + URL + "': " + e.getMessage());
			}
		}
	%>
</body>
</html>