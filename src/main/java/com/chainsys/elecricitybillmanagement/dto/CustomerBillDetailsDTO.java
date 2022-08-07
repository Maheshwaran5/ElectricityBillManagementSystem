package com.chainsys.elecricitybillmanagement.dto;

import com.chainsys.elecricitybillmanagement.model.BillDetails;
import com.chainsys.elecricitybillmanagement.model.Customer;

public class CustomerBillDetailsDTO {
	
	private Customer customer;
	private BillDetails billdetails;
	
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public BillDetails getBilldetails() {
		return billdetails;
	}
	public void setBilldetails(BillDetails billdetails) {
		this.billdetails = billdetails;
	}
}
