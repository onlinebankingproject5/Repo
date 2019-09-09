package com.netbanking.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
@Component
@Entity
@Table
public class UserInfo {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int userID;
	@Column(unique = true)
	private String userName;
	
	private String password;
	
	public int getuserID() {
		return userID;
	}
	public void setuserID(int userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "UserInfo [userID=" + userID + ", userName=" + userName + ", password=" + password + "]";
	}
	
	
	

}
