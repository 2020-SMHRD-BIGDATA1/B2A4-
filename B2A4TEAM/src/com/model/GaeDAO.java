package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Chat.ChatDTO;

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
		GaeDTO info = null;
		getConn();
		// �̸��� �̸� ���� ���� ǰ�� �߼�ȭ���� ������ ���� ����

		String sql = "select * from gae_info where mem_mail != ?"; 
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			rs = psmt.executeQuery();
			if (rs.next()) {
				String mem_mail = rs.getString(1);
				String name = rs.getString(2);
				String age = rs.getString(3);
				String gender = rs.getString(4);
				String kind = rs.getString(5);
				String neu = rs.getString(6);
				String img = rs.getString(9);
				info = new GaeDTO(mem_mail,name, age, gender, kind, neu, img);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}

		return info;
	}
}
