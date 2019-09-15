package com.netbanking.model;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table
public class Branch {

	@Id
	private int branchID;
	@Column(length = 30)
	private String branch;
	@Column(length = 30)
	private String IFSCcode;
	private String state;
	private String city;
	@Column(name = "CONTACTNO")
	private int conctactNo;
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	@Override
	public String toString() {
		return "Branch [branchID=" + branchID + ", branch=" + branch + ", IFSCcode=" + IFSCcode + ", state=" + state
				+ ", city=" + city + ", conctactNo=" + conctactNo + "]";
	}
	public int getBranchID() {
		return branchID;
	}
	public void setBranchID(int branchID) {
		this.branchID = branchID;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getIFSCcode() {
		return IFSCcode;
	}
	public void setIFSCcode(String iFSCcode) {
		IFSCcode = iFSCcode;
	}
	public int getConctactNo() {
		return conctactNo;
	}
	public void setConctactNo(int conctactNo) {
		this.conctactNo = conctactNo;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	

}
