package com.ea.webclient.entity;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tblUser")
public class tblUser {
	@Id
	@Basic(optional = false)
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer seq;
    private String username;
    private String password;
    private String name;
    private String phoneNumber;
    private String authority;
	
	
	public tblUser()
	{
	}
	
	public tblUser(String username, String password, String name,String phoneNumber, String authority) {
		this.setusername(name);
		this.setpassword(password);
		this.setName(name);
		this.setPhoneNumber(phoneNumber);
		this.setAuthority(authority);
	}
	
	//Getters and setters
		
	
	@Override
	public String toString() {
        return "tblUser [username=" + username + ",password=" + password + ",name=" + name + ",phoneNumber=" + phoneNumber + ", authority=" + authority +"]";
    }

	
	public String getusername() {
		return username;
	}

	public void setusername(String username) {
		this.username = username;
	}

	public String getpassword() {
		return password;
	}

	public void setpassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}
	
}


