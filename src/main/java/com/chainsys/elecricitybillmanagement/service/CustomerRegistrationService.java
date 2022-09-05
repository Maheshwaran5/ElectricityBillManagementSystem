package com.chainsys.elecricitybillmanagement.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.elecricitybillmanagement.model.CustomerRegistration;
import com.chainsys.elecricitybillmanagement.repository.CustomerRegistrationRepository;
@Service
public class CustomerRegistrationService {
	@Autowired
	private CustomerRegistrationRepository customerRegisterRepository;
	
	public CustomerRegistration save(CustomerRegistration customer) {
		return customerRegisterRepository.save(customer);
	}


	public List<CustomerRegistration> getCustomerRegistration() {
		return customerRegisterRepository.findAll();
	}
}