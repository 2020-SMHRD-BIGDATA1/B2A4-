package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Chat.ChatDTO;

public class MemberDAO {
	private PreparedStatement psmt = null;
	private Connection conn = null;
	private ResultSet rs;

	private void getConnction() {
		try {
			// 1. ����̹� �����ε�(��� DBMS�� ����� ������ ����̹� Ȱ�� ��� �ۼ�)
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2.���� DataBase ���� ����(Connection ȣ��)
			// Driver�� ���ؼ� Connection ��ü�� �����´�
			// Connection ��ü�� �����ö��� DB�� �ּ�, ���̵�, ��й�ȣ�� �Է��ؾ� �Ѵ�.
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
		// 4. ������ �����ش�(������ �������� ���� �������� �ݾ��ش�)
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

	public MemberDTO login(MemberDTO dto) {
		MemberDTO info = null;
		getConnction();
		try {
			String sql = "SELECT * FROM gae_member WHERE mem_mail=? AND mem_pw=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMem_mail());
			psmt.setString(2, dto.getMem_pw());
			rs = psmt.executeQuery();
			if (rs.next()) {
				// �α��� �����ÿ��� ���ü� ����
				String mail = rs.getString(2);
				String pw = rs.getString(3);
				String mem_nick = rs.getString(4);
				info = new MemberDTO(mail, pw, mem_nick);

				System.out.println("�α��� ����");

			} else {
				System.out.println("�α��� ����");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return info;
	}

	public int join(MemberDTO dto) {
		int cnt = 0;
		getConnction();

		try {
			String sql = "INSERT INTO GAE_MEMBER VALUES(?,?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMem_name());
			psmt.setString(2, dto.getMem_mail());
			psmt.setString(3, dto.getMem_pw());
			psmt.setString(4, dto.getMem_nick());
			psmt.setString(5, dto.getMem_gender());
			psmt.setString(6, dto.getMem_birth());
			psmt.setString(7, dto.getMem_tel());
			psmt.setString(8, dto.getMem_addr());
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}

	public boolean idCheck(String id) {
		boolean check = false;

		getConnction();
		try {
			String sql = "select mem_mail from gae_member where mem_mail=?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, id);

			rs = psmt.executeQuery();

			if (rs.next()) {
				check = true;
			} else {
				check = false;
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}

		return check;
	}

}
