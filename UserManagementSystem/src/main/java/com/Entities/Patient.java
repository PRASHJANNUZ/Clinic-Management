
package com.Entities;

import java.util.Random;

import javax.persistence.*;


@Entity
@Table(name="Patient")
public class Patient {
	
	@Id
	private int id;
	private int age;
	private	String name;
	private String email;
	private String gender;
	private String disease;
	private String address;
	private String phoneno;
	private String doctorname;
	private String appointmentdate;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getDoctorname() {
		return doctorname;
	}
	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}
	public String getAppiontmentdate() {
		return appointmentdate;
	}
	public void setAppiontmentdate(String appiontmentdate) {
		this.appointmentdate = appiontmentdate;
	}
	public Patient(int age, String name, String email, String gender, String disease, String address,
			String phoneno, String doctorname, String appointmentdate) {
		super();
		this.id = new Random().nextInt(100000);
		this.age = age;
		this.name = name;
		this.email = email;
		this.gender = gender;
		this.disease = disease;
		this.address = address;
		this.phoneno = phoneno;
		this.doctorname = doctorname;
		this.appointmentdate = appointmentdate;
	}
	public Patient() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	

}
