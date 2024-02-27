package com.Entities;

import java.util.Date; 
import java.util.Random;

import javax.persistence.*;


@Entity
@Table(name="User")
public class User {

	@Id
	private int id;
	private String name;
	private String email;
	private String password;
	private String type;
	
	
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public User(String name, String email, String password, String type) {
		super();
		this.id = new Random().nextInt(100000);
		this.name = name;
		this.email = email;
		this.password = password;
		this.type = type;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
