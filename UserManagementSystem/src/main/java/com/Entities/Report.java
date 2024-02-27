package com.Entities;

import java.util.Random;

import javax.persistence.*;

@Entity
public class Report {
	
	@Id
	private int id;
	private	String name;
	private String gender;
	private String disease;
	private String test;
	private String reportdate;
	
	@Column(length= 1500)
	private String medicine;
	
	
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


	public String getTest() {
		return test;
	}


	public void setTest(String test) {
		this.test = test;
	}


	public String getReportdate() {
		return reportdate;
	}


	public void setReportdate(String reportdate) {
		this.reportdate = reportdate;
	}


	public String getMedicine() {
		return medicine;
	}


	public void setMedicine(String medicine) {
		this.medicine = medicine;
	}


	
	
	public Report() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Report(String name, String gender, String disease, String test, String reportdate, String medicine) {
		super();
		this.id =  new Random().nextInt(100000);
		this.name = name;
		this.gender = gender;
		this.disease = disease;
		this.test = test;
		this.reportdate = reportdate;
		this.medicine = medicine;
	}
	
	
	
	

}
