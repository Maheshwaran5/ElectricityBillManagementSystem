package com.chainsys.elecricitybillmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customer")
public class Customer {
	@Id
	@Column(name = "customer_name")
	private String customerName;
	@Column(name = "mobile_number")
	private String mobileNumber;
	@Column(name = "aadhaar_number")
	private long aadhaarNumber;
	@Column(name = "account_number")
	private long accountNumber;
	@Column(name = "meter_Id")
	private int meterId;
	@Column(name = "deposit_amount")
	private long depositAmount;
	@Column(name = "advance_amount")
	private long advanceAmount;
	@Column(name = "address")
	private String address;
	@Column(name = "state")
	private String state;
	@Column(name = "country")
	private String country;
	@Column(name = "pincode")
	private long pinCode;
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public long getAadhaarNumber() {
		return aadhaarNumber;
	}
	public void setAadhaarNumber(long aadhaarNumber) {
		this.aadhaarNumber = aadhaarNumber;
	}
	public long getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}
	public int getMeterId() {
		return meterId;
	}
	public void setMeterId(int meterId) {
		this.meterId = meterId;
	}
	public long getDepositAmount() {
		return depositAmount;
	}
	public void setDepositAmount(long depositAmount) {
		this.depositAmount = depositAmount;
	}
	public long getAdvanceAmount() {
		return advanceAmount;
	}
	public void setAdvanceAmount(long advanceAmount) {
		this.advanceAmount = advanceAmount;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public long getPinCode() {
		return pinCode;
	}
	public void setPinCode(long pinCode) {
		this.pinCode = pinCode;
	}
}