package Chat.model;

public class ChatDTO {
	
	private int chat_index;
	private String mem_nick;
	private String receiver_nick;
	private String chat_time;
	private String chat_content;
	
	public ChatDTO(int chat_index, String mem_nick, String receiver_nick, String chat_time, String chat_content) {
		this.chat_index = chat_index;
		this.mem_nick = mem_nick;
		this.receiver_nick = receiver_nick;
		this.chat_time = chat_time;
		this.chat_content = chat_content;
	}

	public int getChat_index() {
		return chat_index;
	}

	public void setChat_index(int chat_index) {
		this.chat_index = chat_index;
	}

	public String getMem_nick() {
		return mem_nick;
	}

	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}

	public String getReceiver_nick() {
		return receiver_nick;
	}

	public void setReceiver_nick(String receiver_nick) {
		this.receiver_nick = receiver_nick;
	}

	public String getChat_time() {
		return chat_time;
	}

	public void setChat_time(String chat_time) {
		this.chat_time = chat_time;
	}

	public String getChat_content() {
		return chat_content;
	}

	public void setChat_content(String chat_content) {
		this.chat_content = chat_content;
	}
}
