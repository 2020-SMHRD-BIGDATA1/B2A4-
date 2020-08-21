package Chat;

public class ChatroomDTO {
	private int chat_index;
	private String chat_user1;
	private String chat_user2;
	private String chat_time;

	
	public ChatroomDTO(String chat_user1, String chat_user2) {
		
		this.chat_user1 = chat_user1;
		this.chat_user2 = chat_user2;
	}

	public int getChat_index() {
		return chat_index;
	}

	public void setChat_index(int chat_index) {
		this.chat_index = chat_index;
	}

	public String getChat_user1() {
		return chat_user1;
	}

	public void setChat_user1(String chat_user1) {
		this.chat_user1 = chat_user1;
	}

	public String getChat_user2() {
		return chat_user2;
	}

	public void setChat_user2(String chat_user2) {
		this.chat_user2 = chat_user2;
	}

	public String getChat_time() {
		return chat_time;
	}

	public void setChat_time(String chat_time) {
		this.chat_time = chat_time;
	}
}
