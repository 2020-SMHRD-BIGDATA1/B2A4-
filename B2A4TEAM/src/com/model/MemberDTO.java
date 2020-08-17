package com.model;

public class MemberDTO {
	private String mem_name;
	private String mem_mail;
	private String mem_pw;
	private String mem_nick;
	private String mem_gender;
	private String mem_birth;
	private String mem_tel;
	private String mem_addr;

	public MemberDTO(String mem_name, String mem_mail, String mem_pw, String mem_nick, String mem_gender,
			String mem_birth, String mem_tel, String mem_addr) {
		this.mem_name = mem_name;
		this.mem_mail = mem_mail;
		this.mem_pw = mem_pw;
		this.mem_nick = mem_nick;
		this.mem_gender = mem_gender;
		this.mem_birth = mem_birth;
		this.mem_tel = mem_tel;
		this.mem_addr = mem_addr;
	}

	public MemberDTO(String mem_mail, String mem_pw) {
		this.mem_mail = mem_mail;
		this.mem_pw = mem_pw;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_mail() {
		return mem_mail;
	}

	public void setMem_mail(String mem_mail) {
		this.mem_mail = mem_mail;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_nick() {
		return mem_nick;
	}

	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}

	public String getMem_gender() {
		return mem_gender;
	}

	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}

	public String getMem_birth() {
		return mem_birth;
	}

	public void setMem_birth(String mem_birth) {
		this.mem_birth = mem_birth;
	}

	public String getMem_tel() {
		return mem_tel;
	}

	public void setMem_tel(String mem_tel) {
		this.mem_tel = mem_tel;
	}

	public String getMem_addr() {
		return mem_addr;
	}

	public void setMem_addr(String mem_addr) {
		this.mem_addr = mem_addr;
	}

}
