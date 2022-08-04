package com.chainsys.elecricitybillmanagement.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "meterbox_information")
public class MeterboxInformation {
	@Id
	@Column(name = "meter_id")
	private int meterId;
	@Column(name = "meter_type")
	private String meterType;
	@Column(name = "phase_code")
	private String phaseCode;
	@Column(name = "bill_type")
	private String billType;
	@Column(name = "due_date")
	private Date dueDate;
	@Column(name = "meter_rent")
	private int meterRent;
	@Column(name = "gst_amount")
	private double gstAmount;

	@OneToOne(mappedBy = "meterboxInformation",fetch=FetchType.LAZY)
	private Customer customer;

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public int getMeterId() {
		return meterId;
	}

	public void setMeterId(int meterId) {
		this.meterId = meterId;
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

	public double getGstAmount() {
		return gstAmount;
	}

	public void setGstAmount(double gstAmount) {
		this.gstAmount = gstAmount;
	}
}