package kr.co.bit.config;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import kr.co.bit.login.LoginVO;
import kr.co.bit.util.ConnectionFactory;

public class ConfigDAO {

	public void insertConfig(ConfigVO configVO) {
		
		// 전에 설정한 것은 지워버리기
		StringBuilder sql = new StringBuilder();
		sql.append("delete from member_widget where email = ? ");
		
		try(
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				){
			pstmt.setString(1, configVO.getEmail());
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		// TODO Auto-generated method stub
		sql = new StringBuilder();
		sql.append("insert into member_widget values(?,?) ");
		
		try(
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				){
			pstmt.setString(1, configVO.getEmail());
			pstmt.setString(2, configVO.getParams());
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public ConfigVO findConfig(LoginVO loginVO) {
		
		StringBuilder sql = new StringBuilder();
		sql.append("select * from member_widget where email = ? ");
		ConfigVO configVO = null;
		
		try(
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				){
			
			pstmt.setString(1, loginVO.getEmail());
			ResultSet rs = pstmt.executeQuery();
			configVO = new ConfigVO();
			
			if(rs.next()) {
				String widgetParams = rs.getString("widgetParams");
				configVO.setParams(widgetParams);
			}
			else {
				configVO = null;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return configVO;
	}
	
	public void insertEachConfig(String email, String widgetName, String options) {
		
		// 전에 설정한 것은 지워버리기
		StringBuilder sql = new StringBuilder();
		sql.append("delete from "+widgetName+"_config where email = ? ");
				
		try(
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				){
			pstmt.setString(1, email);
			pstmt.executeUpdate();
					
			}catch(Exception e) {
				e.printStackTrace();
			}
		
		// TODO Auto-generated method stub
		sql = new StringBuilder();
		sql.append("insert into "+widgetName+"_config values(?,?) ");
		
		try(
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString())
						){
			pstmt.setString(1, email);
			pstmt.setString(2, options);
			pstmt.executeUpdate();
				
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
		
}
