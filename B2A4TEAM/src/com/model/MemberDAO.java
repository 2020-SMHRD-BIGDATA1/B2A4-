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
			// 1. 드라이버 동적로딩(어떠한 DBMS를 사용할 것인지 드라이버 활용 경로 작성)
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2.나의 DataBase 와의 연결(Connection 호출)
			// Driver를 통해서 Connection 객체를 가져온다
			// Connection 객체를 가져올때는 DB의 주소, 아이디, 비밀번호를 입력해야 한다.
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
		// 4. 연결을 끊어준다(연결을 끊을때는 연결 역순으로 닫아준다)
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
				// 로그인 성공시에만 들어올수 있음
				String mail = rs.getString(2);
				String pw = rs.getString(3);
				String mem_nick = rs.getString(4);
				info = new MemberDTO(mail, pw, mem_nick);

				System.out.println("로그인 성공");

			} else {
				System.out.println("로그인 실패");
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
