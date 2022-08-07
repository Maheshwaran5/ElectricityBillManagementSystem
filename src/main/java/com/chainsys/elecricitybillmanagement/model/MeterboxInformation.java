package com.chainsys.elecricitybillmanagement.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

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
	@NotNull(message = "Meter Type shouldn't be null")

	private String meterType;

	@Column(name = "phase_code")
	@NotNull(message = "Phase_code shouldn't be null")
	private String phaseCode;

	@Column(name = "bill_type")
	@NotNull(message = "Bill type shouldn't be null")
	private String billType;

	@Column(name = "due_date")
	@NotNull(message = "Due Date shouldn't be null")
	private Date dueDate;

	@Column(name = "meter_rent")
	@Min(value=1 , message ="Id above meter_rent 1")
	private int meterRent;

	@Column(name = "gst_amount")
	@Min(value=1 , message ="Id above gst_amount 1")
	private double gstAmount;

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

	public double getGstAmount() {
		return gstAmount;
	}

	public void setGstAmount(double gstAmount) {
		this.gstAmount = gstAmount;
	}
}