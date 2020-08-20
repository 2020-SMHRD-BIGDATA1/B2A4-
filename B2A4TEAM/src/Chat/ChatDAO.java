package Chat;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ChatDAO {
	
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

	public ArrayList<ChatDTO> selectAll() {
		ArrayList<ChatDTO> list = new ArrayList<ChatDTO>();

		getConn();

		String sql = "select * from chat_content where chat_index= 1 order by chat_time desc"; //1번방 애들만 나옴
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				
				String writer = rs.getString(2);
				String content = rs.getString(3);
				String date = rs.getString(4);
				
				ChatDTO dto = new ChatDTO(writer, content, date);
				list.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}

		return list;
	}
	
	public ArrayList<ChatDTO> selectOne() {
		ArrayList<ChatDTO> list = new ArrayList<ChatDTO>();

		getConn();

		String sql = "select * from chat_content order by chat_time desc";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				
				String writer = rs.getString(2);
				String content = rs.getString(3);
				String date = rs.getString(4);
				
				ChatDTO dto = new ChatDTO(writer, content, date);
				list.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}

		return list;
	}
	
	public int input(ChatDTO dto) {
	
		getConn();

		try {
			String sql = "insert into chat_content values(1,?,?,sysdate)";
			psmt = conn.prepareStatement(sql);
			
			//psmt.setInt(1, dto.getChat_index());
			psmt.setString(1, dto.getWriter());
			psmt.setString(2, dto.getContent());
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}
		
	}
	

	
	

