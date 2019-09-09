package com.netbanking.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
import javax.persistence.Table;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
@Component
@Entity
@Table
public class Account {
	@Id
	@GeneratedValue
	private int accountID;
	@Column(length = 30)
	private String accountNumber;
	private long balance;
	private String branchName;
	//private Branch branchObject;
	public int getAccountID() {
		return accountID;
	}
//	public Branch getBranchObject() {
//		return branchObject;
//	}
//	public void setBranchObject(Branch branchObject) {
//		this.branchObject = branchObject;
//	}
	public void setAccountID(int accountID) {
		this.accountID = accountID;
	}
	public String getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}
	public long getBalance() {
		return balance;
	}
	public void setBalance(long balance) {
		this.balance = balance;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	
	


}
