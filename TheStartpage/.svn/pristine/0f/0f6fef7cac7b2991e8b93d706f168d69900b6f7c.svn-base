package kr.co.bit.itword;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bit.controller.Controller;

public class ItwordController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		response.setCharacterEncoding("utf-8");

		/* MySQL 연동. */
		Connection connection = null;
		Statement st = null;
		ResultSet rs = null;
		int wordTotal = 0;
		int wordIndex = 0;
		String word = "";
		String content = "";
		Random r = new Random();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/devproject", "hr", "hr");
			st = connection.createStatement();

			String sql;
			
			sql = "select count(*) from itword";
			rs = st.executeQuery(sql);
			
			if(rs.next()) {
				wordTotal = rs.getInt("count(*)");
			}
			
			wordIndex = Math.abs(r.nextInt(wordTotal))+1;
			sql = "select * from itword where wordindex = "+wordIndex;
			rs = st.executeQuery(sql);

			if (rs.next()) {
				word = rs.getString("word");
				content = rs.getString("content");
				word = word.trim();
				content = content.trim();
			}
			rs.close();
			st.close();
			connection.close();
		} catch (SQLException se1) {
			se1.printStackTrace();
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (st != null) {
					st.close();
				}
			} catch (SQLException se2) {
			}
			try {
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}
		
		String mainWord = word;
		request.setAttribute("mainWord", mainWord);
		request.setAttribute("content", content);
		return "/view/widget-itword/result.jsp";

	}

}
