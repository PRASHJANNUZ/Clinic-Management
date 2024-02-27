package com.Entities;

import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Approval {
	
	@Id
	private int id;
	private	String name;
	private String gender;
	private String disease;
	private String date;
	private String status;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public Approval() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Approval(String name, String gender, String disease, String date, String status) {
		super();
		this.id =  new Random().nextInt(100000);
		this.name = name;
		this.gender = gender;
		this.disease = disease;
		this.date = date;
		this.status = status;
	}
	
	

}
