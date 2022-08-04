package com.chainsys.elecricitybillmanagement.dto;

import com.chainsys.elecricitybillmanagement.model.Customer;
import com.chainsys.elecricitybillmanagement.model.MeterboxInformation;

public class MeterboxInformationCustomerDTO {

	private MeterboxInformation meterboxInfo;
	private Customer customer;
	
	public MeterboxInformation getMeterboxInfo() {
		return meterboxInfo;
	}
	public void setMeterboxInfo(MeterboxInformation meterboxInfo) {
		this.meterboxInfo = meterboxInfo;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
}
