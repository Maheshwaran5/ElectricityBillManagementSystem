package com.chainsys.elecricitybillmanagement.model;

import java.sql.Date;
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

@Entity
@Table(name = "bill_details")
public class BillDetails {
	@Id
	@Column(name = "BILL_ID")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "bill_id")
	@SequenceGenerator(name = "bill_id", sequenceName = "bill_id", allocationSize = 1)
	private int billId;

	@Column(name = "BILL_DATE")
	private Date billDate;

	public Date getBillDate() {
		return billDate;
	}

	public void setBillDate(Date billDate) {
		this.billDate = billDate;
	}

	@Column(name = "BILL_AMOUNT")
	private long billAmount;

	@Column(name = "UNIT_CONSUMED")
	private long unitConsumed;

	@Column(name = "ACCOUNT_NUMBER")
	private long accountNumber;

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "account_Number", nullable = false, insertable = false, updatable = false)
	private Customer customer;

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public int getBillId() {
		return billId;
	}

	public void setBillId(int billId) {
		this.billId = billId;
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