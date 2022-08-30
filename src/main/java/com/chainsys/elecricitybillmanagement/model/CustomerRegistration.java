package com.chainsys.elecricitybillmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="customerdetail")

public class CustomerRegistration {
	@Column(name = "name")
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
	private long mobileNumber;
	@Column(name = "area")
	private String area;
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "meterid")
    @SequenceGenerator(name = "meterid", sequenceName = "meterid", allocationSize = 1)
	@Id
	@Column(name = "meterid")
	private long meterId;

}
