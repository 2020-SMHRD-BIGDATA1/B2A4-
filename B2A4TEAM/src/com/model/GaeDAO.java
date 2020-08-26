package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Chat.ChatDTO;
import bbs.bbsDTO;

public class GaeDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private int cnt;

	private void getConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	private void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public GaeDTO getGaeInfo(String email) {
		GaeDTO matchingDog_info = null;
		getConn();
		// 이메일 이름 나이 성별 품종 중성화여부 몸무게 성향 사진

		String sql = "select * from gae_info where mem_mail != ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			rs = psmt.executeQuery();
			if (rs.next()) {
				String mem_mail = rs.getString(1);
				String img = rs.getString(2);
				String name = rs.getString(3);
				String sex = rs.getString(4);
				String age = rs.getString(5);
				String species = rs.getString(6);
				String weight = rs.getString(7);
				String size = rs.getString(8);
				String walking = rs.getString(9);
				String cut = rs.getString(10);
				matchingDog_info = new GaeDTO(mem_mail, img, name, sex, age, species, weight, size, walking, cut);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return matchingDog_info;
	}

	public int uploadInfo(GaeDTO dto) {
		int result = 0;
		getConn();
		try {
			String sql = "UPDATE GAE_INFO SET gae_img=?,gae_name=?,gae_sex=?,gae_age=?,gae_species=?,gae_weight=?,gae_size=?,gae_walking=?,gae_cut=?,gae_dog_react=?,gae_human_react=? where mem_mail=?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getGae_img());
			psmt.setString(2, dto.getGae_name());
			psmt.setString(3, dto.getGae_sex());
			psmt.setString(4, dto.getGae_age());
			psmt.setString(5, dto.getGae_species());
			psmt.setString(6, dto.getGae_weight());
			psmt.setString(7, dto.getGae_size());
			psmt.setString(8, dto.getGae_walking());
			psmt.setString(9, dto.getGae_cut());
			psmt.setString(10, dto.getGae_dog_react());
			psmt.setString(11, dto.getGae_human_react());
			psmt.setString(12, dto.getMem_mail());
			result = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}

	public int submitSurvey(GaeDTO dto) {
		int cnt = 0;
		getConn();

		try {
			String sql = "INSERT INTO GAE_INFO VALUES(?,1,1,1,1,1,1,1,1,1,1,1,?,?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMem_mail());
			psmt.setString(2, dto.getTest1());
			psmt.setString(3, dto.getTest2());
			psmt.setString(4, dto.getTest3());
			psmt.setString(5, dto.getTest4());
			psmt.setString(6, dto.getTest5());
			psmt.setString(7, dto.getTest6());
			psmt.setString(8, dto.getTest7());
			psmt.setString(9, dto.getTest8());
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;

	}

//	public String getmyImg(String email) {
//
//		getConn();
//
//		String img = null;
//
//		try {
//			String sql = "select * from gae_info where mem_mail = ?";
//			psmt = conn.prepareStatement(sql);
//
//			psmt.setString(1, email);
//			rs = psmt.executeQuery();
//
//			if (rs.next()) {
//				img = rs.getString(2);
//			}
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//
//		return img;
//	}

	public String getCharacter(String email) {

		getConn();

		String character = null;

		try {
			String sql = "select * from GAE_GROUP where mem_mail = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, email);
			rs = psmt.executeQuery();

			if (rs.next()) {
				character = rs.getString(2);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return character;
	}

	public ArrayList<GaeDTO> getGroup(String character) {

		 ArrayList<GaeDTO> group_list = null;  
		  getConn();	 
		  try {
			  String sql = "select * from gae_group where gae_group=?";
			  conn.prepareCall(sql);
			  psmt.setString(1, character);
			  rs = psmt.executeQuery();
			 
			  if (rs.next()) {
				  String email = rs.getString(1);
				  GaeDTO dto = new GaeDTO(email);
				  group_list.add(dto);
			   }	
			  
		} catch (SQLException e) {
			
		} finally {
			close();
		}
		  return group_list;
	  }

}
