package com.Entities;


import java.util.Random;

import javax.persistence.*;


@Entity
@Table(name="Receptionist")
public class Receptionist {
	
	@Id
	private int id;
	private String pname;
	private String disease;
	private String appointmentdate;
	private String doctorname;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getAppointmentdate() {
		return appointmentdate;
	}
	public void setAppointmentdate(String appointmentdate) {
		this.appointmentdate = appointmentdate;
	}
	public String getDoctorname() {
		return doctorname;
	}
	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public Receptionist(String pname, String appointmentdate, String doctorname, String disease) {
		super();
		this.id = new Random().nextInt(100000);
		this.pname = pname;
		this.appointmentdate = appointmentdate;
		this.doctorname = doctorname;
		this.disease = disease;
		
	}
	public Receptionist() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
}
