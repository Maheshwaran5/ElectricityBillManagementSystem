package com.chainsys.elecricitybillmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Pattern;

@Entity
@Table(name="customerdetail")

public class CustomerRegistration {
	@Column(name = "name")
	@Pattern(regexp = "^[A-Za-z]\\w{2,20}$", message = "Enter Valid Customer Name")
	private String name;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public long getMeterId() {
		return meterId;
	}
	public void setMeterId(long meterId) {
		this.meterId = meterId;
	}
	@Column(name = "mobileno")
	@Digits(integer = 10, fraction = 0, message = "Missing 10 Numbers")
	private long mobileNumber;
	@Column(name = "area")
//	@Pattern(regexp = "^[A-Za-z]\\w{2,50}$", message = "Enter Your Area")
	private String area;
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "meterid")
    @SequenceGenerator(name = "meterid", sequenceName = "meterid", allocationSize = 1)
	@Id
	@Column(name = "meterid")
	private long meterId;

}
