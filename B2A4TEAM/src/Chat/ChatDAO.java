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

		String sql = "select * from chat_content where chat_index= 1 order by chat_time desc"; // 1번방 애들만 나옴
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
		} finally {
			close();
		}

		return list;
	}

	public int input(ChatDTO dto) {

		getConn();

		try {
			String sql = "insert into chat_content values(1,?,?,sysdate)";
			psmt = conn.prepareStatement(sql);

			// psmt.setInt(1, dto.getChat_index());
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

	public int chat_index(String mem_nick) {
		int chat_index = 0;
		getConn();

		try {
			String sql = "select chat_index from chat_room where chat_user1=? or chat_user2=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, mem_nick);
			psmt.setString(2, mem_nick);

			rs = psmt.executeQuery();

			while (rs.next()) {
				chat_index = rs.getInt(1);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return chat_index;
	}

	public int makeRoom(String my_mail, String your_mail) {
		int cnt = 0;

		getConn();

		String sql = "insert into chat_room values(chat_index.nextval, ?,?,sysdate)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, my_mail);
			psmt.setString(2, your_mail);
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public ChatroomDTO getOther(int chat_index) {
		String name = "";
		ChatroomDTO dto = null;
		getConn();

		try {
			String sql = "select * from chat_room where chat_index=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, chat_index);
			rs = psmt.executeQuery();
			
			while (rs.next()) {

				String user1 = rs.getString(2);
				String user2 = rs.getString(3);

				dto = new ChatroomDTO(user1, user2);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}

		return dto;
	};
	
	public ChatDTO getChatlist() {
		ChatDTO dto = null;

		getConn();

		String sql = "select * from chat_content where chat_index= 1 order by chat_time desc"; // 1번방 애들만 나옴
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			if(rs.next()) {

				String writer = rs.getString(2);
				String content = rs.getString(3);
				String date = rs.getString(4);

				dto = new ChatDTO(writer, content, date);
			
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return dto;
	}
	
	public ArrayList<ChatDTO> selectReverse() { //디비에 있는거 시간순서로 나오게 하기 selectAll 안되가지구 그냥 정렬순서만 바꾼 dao 하나 더 만듦
		ArrayList<ChatDTO> list = new ArrayList<ChatDTO>();

		getConn();

		String sql = "select * from chat_content where chat_index= 1 order by chat_time"; // 1번방 애들만 나옴
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
		} finally {
			close();
		}

		return list;
	}
	
	public String getMemNick(String mem_mail) {
		String otherNick = null;
		
		getConn();
		
		try {
			String sql = "select * from gae_member where mem_mail = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, mem_mail);
			
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				otherNick = rs.getString(4);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return otherNick;
	};
	
	public int roomCnt(String mail) {
		
		getConn();
		
		String sql = "select * from chat_room where chat_user1=? of chat_user2=?";
		return 0;
	}
	
	

}
