package com.chainsys.elecricitybillmanagement.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="bill_details")
public class BillDetails {
	@Id
	@Column(name = "bill_Id")
	private int billId;
	@Column(name = "bill_Date")
	private Date bill_Date;
	@Column(name = "billAmount")
	private long billAmount;
	@Column(name = "unitConsumed")
	private long unitConsumed;
	@Column(name = "accountNumber")
	private long accountNumber;

	public int getBillId() {
		return billId;
	}

	public void setBillId(int billId) {
		this.billId = billId;
	}

	public Date getBill_Date() {
		return bill_Date;
	}

	public void setBill_Date(Date bill_Date) {
		this.bill_Date = bill_Date;
	}

	public long getBillAmount() {
		return billAmount;
	}

	public void setBillAmount(long billAmount) {
		this.billAmount = billAmount;
	}

	public long getUnitConsumed() {
		return unitConsumed;
	}

	public void setUnitConsumed(long unitConsumed) {
		this.unitConsumed = unitConsumed;
	}

	public long getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}
}