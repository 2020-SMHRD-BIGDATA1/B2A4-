package com.model;

public class GaeDTO {
	private String mem_mail;
	public GaeDTO(String mem_mail, String gae_img, String gae_name, String gae_sex, String gae_age, String gae_species,
			String gae_weight, String gae_size, String gae_walking, String gae_cut) {
		super();
		this.mem_mail = mem_mail;
		this.gae_img = gae_img;
		this.gae_name = gae_name;
		this.gae_sex = gae_sex;
		this.gae_age = gae_age;
		this.gae_species = gae_species;
		this.gae_weight = gae_weight;
		this.gae_size = gae_size;
		this.gae_walking = gae_walking;
		this.gae_cut = gae_cut;
	}

	private String gae_img;
	private String gae_name;
	private String gae_sex;
	private String gae_age;
	private String gae_species;
	private String gae_weight;
	private String gae_size;
	private String gae_walking;
	private String gae_cut;
	private String gae_dog_react;
	private String gae_human_react;
	private String test1;
	private String test2;
	private String test3;
	private String test4;
	private String test5;
	private String test6;
	private String test7;
	private String test8;

	public GaeDTO(String mem_mail, String gae_img, String gae_name, String gae_sex, String gae_age, String gae_species,
			String gae_weight, String gae_size, String gae_walking, String gae_cut, String gae_dog_react,
			String gae_human_react, String test1, String test2, String test3, String test4, String test5, String test6,
			String test7, String test8) {
		this.mem_mail = mem_mail;
		this.gae_img = gae_img;
		this.gae_name = gae_name;
		this.gae_sex = gae_sex;
		this.gae_age = gae_age;
		this.gae_species = gae_species;
		this.gae_weight = gae_weight;
		this.gae_size = gae_size;
		this.gae_walking = gae_walking;
		this.gae_cut = gae_cut;
		this.gae_dog_react = gae_dog_react;
		this.gae_human_react = gae_human_react;
		this.test1 = test1;
		this.test2 = test2;
		this.test3 = test3;
		this.test4 = test4;
		this.test5 = test5;
		this.test6 = test6;
		this.test7 = test7;
		this.test8 = test8;
	}

	public GaeDTO(String mem_mail, String gae_name, String gae_age, String gae_sex, String gae_species, String gae_cut,
			String gae_weight, String gae_img) {

		this.mem_mail = mem_mail;
		this.gae_name = gae_name;
		this.gae_age = gae_age;
		this.gae_sex = gae_sex;
		this.gae_species = gae_species;
		this.gae_cut = gae_cut;
		this.gae_weight = gae_weight;
		this.gae_img = gae_img;
	}

	public GaeDTO(String mem_mail, String gae_name, String gae_age, String gae_sex, String gae_species, String gae_cut,
			String gae_img) {
		this.mem_mail = mem_mail;
		this.gae_name = gae_name;
		this.gae_age = gae_age;
		this.gae_sex = gae_sex;
		this.gae_species = gae_species;
		this.gae_cut = gae_cut;
		this.gae_img = gae_img;
	}

	public GaeDTO(String mem_mail, String dog_img, String dog_name, String dog_age, String dog_sex, String dog_weight,
			String dog_size, String dog_species, String dog_cut, String dog_walking, String dog_react,
			String human_react) {
		this.mem_mail = mem_mail;
		this.gae_img = dog_img;
		this.gae_name = dog_name;
		this.gae_sex = dog_sex;
		this.gae_age = dog_age;
		this.gae_species = dog_species;
		this.gae_weight = dog_weight;
		this.gae_size = dog_size;
		this.gae_walking = dog_walking;
		this.gae_cut = dog_cut;
		this.gae_dog_react = dog_react;
		this.gae_human_react = human_react;
	}

	public GaeDTO(String mem_mail, String test1, String test2, String test3, String test4, String test5, String test6,
			String test7, String test8) {
		this.mem_mail = mem_mail;
		this.test1 = test1;
		this.test2 = test2;
		this.test3 = test3;
		this.test4 = test4;
		this.test5 = test5;
		this.test6 = test6;
		this.test7 = test7;
		this.test8 = test8;
	}

	public String getGae_sex() {
		return gae_sex;
	}

	public void setGae_sex(String gae_sex) {
		this.gae_sex = gae_sex;
	}

	public String getGae_species() {
		return gae_species;
	}

	public void setGae_species(String gae_species) {
		this.gae_species = gae_species;
	}

	public String getGae_size() {
		return gae_size;
	}

	public void setGae_size(String gae_size) {
		this.gae_size = gae_size;
	}

	public String getGae_walking() {
		return gae_walking;
	}

	public void setGae_walking(String gae_walking) {
		this.gae_walking = gae_walking;
	}

	public String getGae_cut() {
		return gae_cut;
	}

	public void setGae_cut(String gae_cut) {
		this.gae_cut = gae_cut;
	}

	public String getGae_dog_react() {
		return gae_dog_react;
	}

	public void setGae_dog_react(String gae_dog_react) {
		this.gae_dog_react = gae_dog_react;
	}

	public String getGae_human_react() {
		return gae_human_react;
	}

	public void setGae_human_react(String gae_human_react) {
		this.gae_human_react = gae_human_react;
	}

	public String getTest1() {
		return test1;
	}

	public void setTest1(String test1) {
		this.test1 = test1;
	}

	public String getTest2() {
		return test2;
	}

	public void setTest2(String test2) {
		this.test2 = test2;
	}

	public String getTest3() {
		return test3;
	}

	public void setTest3(String test3) {
		this.test3 = test3;
	}

	public String getTest4() {
		return test4;
	}

	public void setTest4(String test4) {
		this.test4 = test4;
	}

	public String getTest5() {
		return test5;
	}

	public void setTest5(String test5) {
		this.test5 = test5;
	}

	public String getTest6() {
		return test6;
	}

	public void setTest6(String test6) {
		this.test6 = test6;
	}

	public String getTest7() {
		return test7;
	}

	public void setTest7(String test7) {
		this.test7 = test7;
	}

	public String getTest8() {
		return test8;
	}

	public void setTest8(String test8) {
		this.test8 = test8;
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

	public String getGae_weight() {
		return gae_weight;
	}

	public void setGae_weight(String gae_weight) {
		this.gae_weight = gae_weight;
	}

	public String getGae_img() {
		return gae_img;
	}

	public void setGae_img(String gae_img) {
		this.gae_img = gae_img;
	}

}
