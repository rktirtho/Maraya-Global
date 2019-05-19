package com.marayaglobal.beans.massage;

import java.sql.Timestamp;

public class Massage {
	private int id;
	private String name;
	private String email;
	private String massage;
	private Timestamp time;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMassage() {
		return massage;
	}
	public void setMassage(String massage) {
		this.massage = massage;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "Massage [id=" + id + ", name=" + name + ", email=" + email + ", massage=" + massage + ", time=" + time
				+ "]";
	}
	
	
	

}
