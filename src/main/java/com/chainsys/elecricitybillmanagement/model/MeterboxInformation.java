package com.chainsys.elecricitybillmanagement.model;

import java.sql.Date;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "meterbox_information")
public class MeterboxInformation {
	@Id
	@Column(name = "meter_id")
	private long meterId;

	public long getMeterId() {
		return meterId;
	}

	public void setMeterId(long meterId) {
		this.meterId = meterId;
	}

	@Column(name = "meter_type")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "Enter valid  Meter Type")

	private String meterType;

	@Column(name = "phase_code")
	@Digits(integer = 6, fraction = 0 )
	private String phaseCode;

	@Column(name = "bill_type")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "Enter valid  Meter Type")
	private String billType;

	@Column(name = "due_date")
	private Date dueDate;

	@Column(name = "meter_rent")
	@Min(value = 1, message = "Id above meter_rent is not be required ")
	@Max(value = 5000, message = "Id above meter_rent is not be required ")
	private int meterRent;
	
	@OneToMany(mappedBy ="meterBoxInformation",fetch=FetchType.LAZY)
	private List<BillDetails> billdetails;
	public List<BillDetails> getBilldetails() {
		return billdetails;
	}

	public void setBilldetails(List<BillDetails> billdetails) {
		this.billdetails = billdetails;
	}

	@OneToOne(mappedBy = "meterboxInformation", fetch = FetchType.LAZY)
	private Customer customer;

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public String getMeterType() {
		return meterType;
	}

	public void setMeterType(String meterType) {
		this.meterType = meterType;
	}

	public String getPhaseCode() {
		return phaseCode;
	}

	public void setPhaseCode(String phaseCode) {
		this.phaseCode = phaseCode;
	}

	public String getBillType() {
		return billType;
	}

	public void setBillType(String billType) {
		this.billType = billType;
	}

	public Date getDueDate() {
		return dueDate;
	}

	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}

	public int getMeterRent() {
		return meterRent;
	}

	public void setMeterRent(int meterRent) {
		this.meterRent = meterRent;
	}

	
}