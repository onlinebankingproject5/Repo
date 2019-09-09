package com.netbanking.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Component
@Entity
@Table
public class Address {

	@Id
	@GeneratedValue
	private int addressID;
	@Column(length = 30)
	private String streetName;
	private int pincode;
	@Column(length = 30)
	private String district;
	@Column(length = 30)
	private String state;
	public int getAddressID() {
		return addressID;
	}
	public void setAddressID(int addressID) {
		this.addressID = addressID;
	}
	public String getStreetName() {
		return streetName;
	}
	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Address [addressID=" + addressID + ", streetName=" + streetName + ", pincode=" + pincode + ", district="
				+ district + ", state=" + state + "]";
	}
	
	
	
	
}
