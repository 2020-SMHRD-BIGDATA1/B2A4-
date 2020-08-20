package Chat;

public class ChatDTO {

	private int chat_index;
	private String writer;
	private String content;
	private String date;

	public ChatDTO(String writer, String content, String date) {

		this.writer = writer;
		this.content = content;
		this.date = date;
	}

	public int getChat_index() {
		return chat_index;
	}

	public ChatDTO(int chat_index, String writer, String content, String date) {

		this.chat_index = chat_index;
		this.writer = writer;
		this.content = content;
		this.date = date;
	}

	public ChatDTO(String writer, String content) {

		this.writer = writer;
		this.content = content;
	}

	public void setChat_index(int chat_index) {
		this.chat_index = chat_index;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
}
