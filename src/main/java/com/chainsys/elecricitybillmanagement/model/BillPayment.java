package com.chainsys.elecricitybillmanagement.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.aspectj.apache.bcel.ExceptionConstants;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "bill_payment")
public class BillPayment {
	@Id
	@Column(name = "payment_id")

	private int paymentId;

	@Column(name = "payment_date")
	private Date paymentDate;

	@Column(name = "bill_Id")
	@Min(value = 1, message = "Id above bill_Id")
	private int billId;

	@Column(name = "paid_amount")
	private long paidAmount;

	public int getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}

	public Date getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}

	public int getBillId() {
		return billId;
	}

	public void setBillId(int billId) {
		this.billId = billId;
	}

	public long getPaidAmount() {
		return paidAmount;
	}

	public void setPaidAmount(long paidAmount) {
		this.paidAmount = paidAmount;
	}
}