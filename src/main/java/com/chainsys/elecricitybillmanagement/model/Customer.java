package com.chainsys.elecricitybillmanagement.model;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "customer")
public class Customer {
	@Id
	@Column(name = "customer_id")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "customer_id")
	@SequenceGenerator(name = "customer_id", sequenceName = "customer_id", allocationSize = 1)
    private int customerId;

	@Column(name = "customer_name")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "Enter Valid Customer Name")
	private String customerName;

	@Column(name = "mobile_number")
	@Digits(integer = 10, fraction = 0, message = "Missing 10 Numbers")
	private long mobileNumber;

	@Column(name = "aadhaar_number")
	@Digits(integer = 12, fraction = 0, message = "Missing 12 Numbers")
	private long aadhaarNumber;

	@Column(name = "meter_id")
	private long meterId;

	@Column(name = "deposit_amount")
	private double depositAmount;

	@Column(name = "advance_amount")
	private long advanceAmount;

	@Column(name = "address")
	private String address;

	@Column(name = "state")
	private String state;

	@Column(name = "country")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "Enter valid  Country")
	private String country;

	@Column(name = "pincode")
	@Digits(integer = 6, fraction = 0, message = "Missing 6 Numbers")
	private int pinCode;

	@Column(name = "password")
	private String password;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "meter_id", nullable = false, insertable = false, updatable = false)
	private MeterboxInformation meterboxInformation;

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public MeterboxInformation getMeterboxInformation() {
		return meterboxInformation;
	}

	public void setMeterboxInformation(MeterboxInformation meterboxInformation) {
		this.meterboxInformation = meterboxInformation;
	}
	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public long getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public long getAadhaarNumber() {
		return aadhaarNumber;
	}

	public void setAadhaarNumber(long aadhaarNumber) {
		this.aadhaarNumber = aadhaarNumber;
	}

	public long getMeterId() {
		return meterId;
	}

	public void setMeterId(long meterId) {
		this.meterId = meterId;
	}

	public double getDepositAmount() {
		return depositAmount;
	}

	public void setDepositAmount(double depositAmount) {
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

	public int getPinCode() {
		return pinCode;
	}

	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}
}
