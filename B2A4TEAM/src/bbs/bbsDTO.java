package bbs;

public class bbsDTO {

	private int bbsID;
	private String bbsTitle;
	private String mem_mail;
	private String bbsDate;
	private String bbsContent;

	public int getBbsID() {
		return bbsID;
	}

	public void setBbsID(int bbsID) {
		this.bbsID = bbsID;
	}

	public bbsDTO(int bbsID, String bbsTitle, String mem_mail, String bbsDate, String bbsContent) {
	
		this.bbsID = bbsID;
		this.bbsTitle = bbsTitle;
		this.mem_mail = mem_mail;
		this.bbsDate = bbsDate;
		this.bbsContent = bbsContent;
	}

	public String getBbsTitle() {
		return bbsTitle;
	}

	public void setBbsTitle(String bbsTitle) {
		this.bbsTitle = bbsTitle;
	}

	public String getMem_mail() {
		return mem_mail;
	}

	public void setMem_mail(String mem_mail) {
		this.mem_mail = mem_mail;
	}

	public String getBbsDate() {
		return bbsDate;
	}

	public void setBbsDate(String bbsDate) {
		this.bbsDate = bbsDate;
	}

	public String getBbsContent() {
		return bbsContent;
	}

	public void setBbsContent(String bbsContent) {
		this.bbsContent = bbsContent;
	}
}
