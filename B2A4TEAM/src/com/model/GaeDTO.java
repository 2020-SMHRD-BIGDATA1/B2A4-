package com.model;

public class GaeDTO {
	private String mem_mail;
	private String gae_name;
	private String gae_age;
	private String gae_gender;
	private String gae_kind;

	public GaeDTO(String mem_mail, String gae_name, String gae_age, String gae_gender, String gae_kind, String gae_neu,
			String gae_weight, String type, String gae_img) {
		
		this.mem_mail = mem_mail;
		this.gae_name = gae_name;
		this.gae_age = gae_age;
		this.gae_gender = gae_gender;
		this.gae_kind = gae_kind;
		this.gae_neu = gae_neu;
		this.gae_weight = gae_weight;
		this.type = type;
		this.gae_img = gae_img;
	}

	public GaeDTO(String gae_name, String gae_age, String gae_gender, String gae_kind, String gae_neu, String gae_img) {
		
		this.gae_name = gae_name;
		this.gae_age = gae_age;
		this.gae_gender = gae_gender;
		this.gae_kind = gae_kind;
		this.gae_neu = gae_neu;
		this.gae_img = gae_img;
	}

	public String getMem_mail() {
		return mem_mail;
	}

	public void setMem_mail(String mem_mail) {
		this.mem_mail = mem_mail;
	}

	public String getGae_name() {
		return gae_name;
	}

	public void setGae_name(String gae_name) {
		this.gae_name = gae_name;
	}

	public String getGae_age() {
		return gae_age;
	}

	public void setGae_age(String gae_age) {
		this.gae_age = gae_age;
	}

	public String getGae_gender() {
		return gae_gender;
	}

	public void setGae_gender(String gae_gender) {
		this.gae_gender = gae_gender;
	}

	public String getGae_kind() {
		return gae_kind;
	}

	public void setGae_kind(String gae_kind) {
		this.gae_kind = gae_kind;
	}

	public String getGae_neu() {
		return gae_neu;
	}

	public void setGae_neu(String gae_neu) {
		this.gae_neu = gae_neu;
	}

	public String getGae_weight() {
		return gae_weight;
	}

	public void setGae_weight(String gae_weight) {
		this.gae_weight = gae_weight;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getGae_img() {
		return gae_img;
	}

	public void setGae_img(String gae_img) {
		this.gae_img = gae_img;
	}

	private String gae_neu;
	private String gae_weight;
	private String type;
	private String gae_img;

}
