package com.netbanking.model;

//import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
@Component
@Entity
@Table
public class Customer {
	@Id
	@GeneratedValue
	private int custID;
	private String firstName;
	private String lastName;
	@Autowired
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="userID")
	private UserInfo userInfo;
	private String gender;
	private String email;
	private int phoneNumber;
	private String panID;
	private String hintQuestion;
	private String answer;
	
	@Autowired
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="addressID")
	private Address address;
	
	@Autowired
	@OneToOne(targetEntity = com.netbanking.model.Account.class, cascade = CascadeType.ALL )
	@JoinColumn(name="accountID")
	private Account account;
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	public int getCustID() {
		return custID;
	}
	public void setCustID(int custID) {
		this.custID = custID;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(int phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPanID() {
		return panID;
	}
	public void setPanID(String panID) {
		this.panID = panID;
	}
	public String getHintQuestion() {
		return hintQuestion;
	}
	public void setHintQuestion(String hintQuestion) {
		this.hintQuestion = hintQuestion;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	
	@Override
	public String toString() {
		return "Customer [custID=" + custID + ", firstName=" + firstName + ", lastName=" + lastName + ", userInfo="
				+ userInfo + ", gender=" + gender + ", email=" + email + ", phoneNumber=" + phoneNumber + ", panID="
				+ panID + ", hintQuestion=" + hintQuestion + ", answer=" + answer + "]";
	}
	
		
	

}
