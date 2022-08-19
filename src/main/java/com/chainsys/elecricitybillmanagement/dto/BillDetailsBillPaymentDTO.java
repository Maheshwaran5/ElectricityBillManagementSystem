package com.chainsys.elecricitybillmanagement.dto;

import com.chainsys.elecricitybillmanagement.model.BillDetails;
import com.chainsys.elecricitybillmanagement.model.BillPayment;

public class BillDetailsBillPaymentDTO {

	private BillDetails billdetails;
	private BillPayment billpayment;

	public BillDetails getBilldetails() {
		return billdetails;
	}

	public void setBilldetails(BillDetails billdetails) {
		this.billdetails = billdetails;
	}

	public BillPayment getBillpayment() {
		return billpayment;
	}

	public void setBillpayment(BillPayment billpayment) {
		this.billpayment = billpayment;
	}

}
