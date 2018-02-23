package kr.co.bit.weather;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.io.IOException;

import kr.co.bit.controller.Controller;


public class WeatherController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//셀렉트박스에서 입력받은 파라미터 값 받아오기
		String email = request.getParameter("email");
		System.out.println("email"+email);
		
		//DB에서 번호 가져오기
		String dbURL = "jdbc:mysql://localhost:3306/devproject";
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(dbURL, "hr", "hr");
		
		// 회원의 위치 가져오기
		Statement stmt = conn.createStatement();
		String query = "select * from weather_config where email='"+email+"'";
		
		ResultSet rs = null;
		rs = stmt.executeQuery(query);
		
		String myConfig = "";
		while (rs.next()){
			myConfig = rs.getString("config");
		}
		String[] myOptions = myConfig.split("/");
		String addr = myOptions[0]+myOptions[1]+myOptions[2];
		String newAddr = myOptions[1]+" "+myOptions[2];
		
		// 위치에 따른 고유 id값 가져오기
		query = "select * from weather where addr = ?";
		PreparedStatement pstmt = conn.prepareStatement(query);
		rs = null;
		
		String addrId = "";
		try {
			//String query = "select num from weather_widget where TRIM(addr)='"+addr+"'";
			pstmt.setString(1, addr);
			rs = pstmt.executeQuery();
			System.out.println(rs);
			if (rs.next()) {
				addrId = rs.getString("addrId");
				System.out.println(addrId);
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}finally{

		  try{rs.close();}catch(Exception e){}
		  try{pstmt.close();}catch(Exception e){}
		  try{conn.close();}catch(Exception e){}

		}
		
		
		
		//크롤링할 주소
		HashSet<String> links = new HashSet<String>();
		String URL = "http://weather.naver.com/rgn/townWetr.nhn?naverRgnCd=" + addrId;
		System.out.println(URL);
		String doc = "";
		String temp = "";
		String description = "";
		String doc1 = "";
		String yesterday = "";
		String rain = "";
		String dust = "";
		String ozone = "";
		String doc2 = "";
		String dust_val = "";
		String ozone_val = "";
		
		//크롤링할 요소
		if(!links.contains(URL)){
			try {
				Document document = Jsoup.connect(URL).get();
				//System.out.println(URL);
				doc = document.select(".w_now2 ul li .fl").text();
				System.out.println(doc);
				temp = doc.split(" ")[2];
				System.out.println(temp);
				description = doc.split(" ")[3].replace("℃", "");
				System.out.println(description);
				doc1 = document.select(".w_now2 ul li .fl p").text();
				System.out.println(doc1);
				yesterday = doc1.split("\\|")[0];
				System.out.println(yesterday);
				rain= doc1.split("\\|")[1].split("미세먼지")[0].trim();
				System.out.println(rain);

				dust= "미세먼지";
				ozone= "오존";
				doc2 = document.select(".w_now2 ul li .fl p a span em").text();
				dust_val= doc2.split(" ")[0];
				ozone_val= doc2.split(" ")[1];
				

			
			} catch (IOException e) {
				System.err.println("For '" + URL + "': " + e.getMessage());
			}
		}
		
		//request에 등록하기
		request.setAttribute("newAddr", newAddr);
		request.setAttribute("temp", temp);
		request.setAttribute("description", description);
		request.setAttribute("yesterday", yesterday);
		request.setAttribute("rain", rain);
		request.setAttribute("dust", dust);
		request.setAttribute("dust_val", dust_val);
		request.setAttribute("ozone", ozone);
		request.setAttribute("ozone_val", ozone_val);
		
		
		//페이지에 뿌려주기
		return "/view/widget-weather/result.jsp";

	}
}
