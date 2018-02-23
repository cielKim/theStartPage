package kr.co.bit.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import kr.co.bit.config.ConfigVO;
import kr.co.bit.util.ConnectionFactory;

public class JoinDAO {
	
	public void insert(JoinVO member) {

		StringBuilder sql = new StringBuilder();
		sql.append(" insert into member ( email, password ) ");
		sql.append(" values (?, ?) ");

		try (Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());) {

			pstmt.setString(1, member.getEmail());
			pstmt.setString(2, member.getPassword());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	public boolean checkEmailDuplication(JoinVO joinVO) {
		
		StringBuilder sql = new StringBuilder();
		sql.append("select * from member where email = ? ");
		boolean ifDuplication = false;
		
		try(
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				){
			
			pstmt.setString(1, joinVO.getEmail());
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				ifDuplication = true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return ifDuplication;
		
	}
	
	public String getPassword(JoinVO joinVO) {
		
		StringBuilder sql = new StringBuilder();
		sql.append("select * from member where email = ? ");
		String password = "";
		
		try(
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				){
			
			pstmt.setString(1, joinVO.getEmail());
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				password = rs.getString("password");
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return password;
		
	}

}
