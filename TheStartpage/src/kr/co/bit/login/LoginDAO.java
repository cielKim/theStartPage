package kr.co.bit.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import kr.co.bit.login.LoginVO;
import kr.co.bit.util.ConnectionFactory;

public class LoginDAO {
	
	public LoginVO login(LoginVO login) {
		
		LoginVO userVO = null;
		StringBuilder sql = new StringBuilder();
		sql.append("select email, password from member where email = ? and password = ? ");
		
		try(
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				){
			pstmt.setString(1, login.getEmail());
			pstmt.setString(2, login.getPassword());
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				userVO = new LoginVO();
				userVO.setEmail(rs.getString("email"));
				userVO.setPassword(rs.getString("password"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return userVO;
	}
	
}