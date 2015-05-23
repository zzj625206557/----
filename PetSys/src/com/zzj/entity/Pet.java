package com.zzj.entity;

public class Pet {
	private int petId;
	private String petName;
	private int petBreed;
	private int petSex;
	private String birthday;
	private String desciption;
	public int getPetId() {
		return petId;
	}
	public void setPetId(int petId) {
		this.petId = petId;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public int getPetBreed() {
		return petBreed;
	}
	public void setPetBreed(int petBreed) {
		this.petBreed = petBreed;
	}
	public int getPetSex() {
		return petSex;
	}
	public void setPetSex(int petSex) {
		this.petSex = petSex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getDesciption() {
		return desciption;
	}
	public void setDesciption(String desciption) {
		this.desciption = desciption;
	}
	public Pet(int petId, String petName, int petBreed, int petSex,
			String birthday, String desciption) {
		super();
		this.petId = petId;
		this.petName = petName;
		this.petBreed = petBreed;
		this.petSex = petSex;
		this.birthday = birthday;
		this.desciption = desciption;
	}
	public Pet(int petId) {
		super();
		this.petId = petId;
	}
	
	public Pet(String petName, int petBreed, int petSex, String birthday,
			String desciption) {
		super();
		this.petName = petName;
		this.petBreed = petBreed;
		this.petSex = petSex;
		this.birthday = birthday;
		this.desciption = desciption;
	}
	public Pet() {
		super();
	}
	public Pet(int petId, String petName, String birthday, int petSex) {
		super();
		this.petId = petId;
		this.petName = petName;
		this.birthday = birthday;
		this.petSex = petSex;
	}
	public Pet(String petName, String birthday, int petSex) {
		super();
		this.petName = petName;
		this.birthday = birthday;
		this.petSex = petSex;
	}
	public Pet(String petBreed) {
		super();
		this.petBreed = Integer.parseInt(petBreed);
	}
	
	
	
	
}
